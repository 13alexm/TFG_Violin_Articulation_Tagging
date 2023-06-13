import pandas as pd
import pretty_midi
import os
from pydub import AudioSegment
import glob


def timestamp(midi_file):
    midi = pretty_midi.PrettyMIDI(midi_file)
    # midi.instruments.pop()  # Deleting channel containing all the notes
    notes_starts = {}
    print("Getting timestamps of: ", midi_file)
    for instrument in midi.instruments:
        for note in instrument.notes:
            if note.start in notes_starts:
                notes_starts[note.start].append(instrument.program)
            else:
                notes_starts[note.start] = [instrument.program]

    notes_ends = {}

    for instrument in midi.instruments:
        for note in instrument.notes:
            if note.end in notes_ends:
                notes_ends[note.end].append(instrument.program)
            else:
                notes_ends[note.end] = [instrument.program]

    notes_starts_sorted = sorted(notes_starts.items())
    notes_ends_sorted = sorted(notes_ends.items())

    start = None
    end = None
    articulation = [None, None]
    stamps = []
    idx = 0

    for time, current_articulation in notes_starts_sorted:
        if time is None:
            start = time
            end = time
            articulation = current_articulation
        elif current_articulation != articulation:
            # print(f'Time segment starts in {start}, ends in {end} with articulation {articulation[0]}')
            stamps += [[start, end, articulation[0]]]
            start = time
            end = time
            articulation = current_articulation
        else:
            end = time
        idx += 1

    if articulation is not None:
        # print(f'Time segment starts in {start}, ends in {notes_ends_sorted[-1][0]} with articulation {articulation[0]}')
        stamps.append([start, notes_ends_sorted[-1][0], articulation[0]])

    for idx, value in enumerate(stamps):
        match value[2]:
            case 6:
                value[2] = 'Staccato'
            case [6]:
                value[2] = 'Staccato'
            case 48:
                value[2] = 'Legato'
            case [48]:
                value[2] = 'Legato'
            case other:
                stamps.pop(idx)

    # for idx, value in enumerate(stamps):
    #     if value[2] == 40:
    #         stamps.pop(idx)

    stamps.pop(0)
    if not stamps:
        stamps.append([notes_starts_sorted[0][0], notes_ends_sorted[-1][0], notes_ends_sorted[-1][1][0]])
    return stamps


def write_time_stamps(midi_path, out_name):
    ts = timestamp(midi_path)
    df = pd.DataFrame(ts)
    df.to_csv(out_name + '.csv', index=False, header=False)


def cut_audio(audio_file, timestamps, output_dir='Data_Segments'):
    df = pd.read_csv(timestamps)

    os.makedirs(output_dir, exist_ok=True)
    os.makedirs(output_dir+'/Staccato', exist_ok=True)
    os.makedirs(output_dir+'/Legato', exist_ok=True)

    for index, row in df.iterrows():
        start = row[0] * 1000  # Converting time from seconds to milliseconds
        end = row[1] * 1000
        # if row[2][0] == '6' or row[2][0] == 'S':
        #     row[2] = 'Staccato'
        # elif row[2][0] == '48' or row[2][0] == 48 or row[2][0] == 'L':
        #     row[2] = 'Legato'
        # elif row[2][0] == '40':
        #     break
        label = row[2]
        # if (end - start) > 1000:
        #     break

        name = os.path.basename(audio_file)
        name = os.path.splitext(name)[0]

        audio = AudioSegment.from_file(audio_file)
        sliced_audio = audio[start:end]
        # if label == 'Staccato':
        #     output_file = os.path.join(output_dir+'/Staccato', f"{name}_{label}_segment_{index}.wav")
        #     sliced_audio.export(output_file, format='wav')
        # if label == 'Legato':
        #     output_file = os.path.join(output_dir + '/Legato', f"{name}_{label}_segment_{index}.wav")
        #     sliced_audio.export(output_file, format='wav')
        # else:
        output_file = os.path.join(output_dir, f"{name}_{label}_segment_{index}.wav")
        sliced_audio.export(output_file, format='wav')


if __name__ == '__main__':
    output_dir = 'Data_Segments'
    os.makedirs(output_dir, exist_ok=True)
    os.makedirs(output_dir+'/Staccato', exist_ok=True)
    os.makedirs(output_dir+'/Legato', exist_ok=True)
    audio_directory = 'Recordings/Staccato'
    csv_directory = 'Alignments/Staccato/Timestamps'

    for audio_filee in os.listdir("Recordings/Staccato"):
        for csv_file in os.listdir("Alignments/Staccato/Timestamps"):
            audio_filename = os.path.splitext(os.path.basename(audio_filee))[0]
            csv_filename = os.path.splitext(os.path.basename(csv_file))[0]
            if audio_filename == csv_filename:
                print(audio_filename, csv_filename)
                cut_audio('Recordings/Staccato/' + audio_filee, 'Alignments/Staccato/Timestamps/' + csv_file)

    for audio_filee in os.listdir("Recordings/Legato"):
        for csv_file in os.listdir("Alignments/Legato/Timestamps"):
            audio_filename = os.path.splitext(os.path.basename(audio_filee))[0]
            csv_filename = os.path.splitext(os.path.basename(csv_file))[0]
            if audio_filename == csv_filename:
                print(audio_filename, csv_filename)
                cut_audio('Recordings/Legato/' + audio_filee, 'Alignments/Legato/Timestamps/' + csv_file)

