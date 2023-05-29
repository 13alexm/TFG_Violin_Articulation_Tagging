import pandas as pd
import pretty_midi
import os
from pydub import AudioSegment


def timestamp(midi_file):
    midi = pretty_midi.PrettyMIDI(midi_file)
    # midi.instruments.pop()  # Deleting channel containing all the notes
    notes_starts = {}

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
    print(notes_starts_sorted)
    print(notes_ends_sorted)

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
            print(f'Time segment starts in {start}, ends in {end} with articulation {articulation[0]}')
            stamps += [[start, end, articulation[0]]]
            start = time
            end = time
            articulation = current_articulation
        else:
            end = time
        idx += 1

    if articulation is not None:
        print(f'Time segment starts in {start}, ends in {notes_ends_sorted[-1][0]} with articulation {articulation[0]}')
        stamps.append([start, notes_ends_sorted[-1][0], articulation[0]])

    for idx, value in enumerate(stamps):
        match value[2]:
            case 6:
                value[2] = 'Staccato'
            case 48:
                value[2] = 'Legato'
            case 71:
                value[2] = 'Detache'

    for idx, value in enumerate(stamps):
        if value[2] == 40:
            stamps.pop(idx)

    stamps.pop(0)
    return stamps


def write_time_stamps(midi_path, out_name):
    ts = timestamp(midi_path)
    df = pd.DataFrame(ts)
    df.to_csv(out_name + '.csv', index=False, header=False)


def cut_audio(audio_file, timestamps, output_dir='Data_Segments'):
    df = pd.read_csv(timestamps)

    os.makedirs(output_dir, exist_ok=True)

    for index, row in df.iterrows():
        start = row[0] * 1000  # Converting time from seconds to milliseconds
        end = row[1] * 1000
        label = row[2]

        output_file = os.path.join(output_dir, f"{label}_segment_{index}.wav")

        audio = AudioSegment.from_file(audio_file)
        sliced_audio = audio[start:end]
        sliced_audio.export(output_file, format='wav')


if __name__ == '__main__':
    cut_audio('Alignments/w24.wav', 'Alignments/w24_timestamps.csv')
