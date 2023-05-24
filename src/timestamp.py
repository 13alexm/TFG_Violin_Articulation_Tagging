import pandas as pd
import pretty_midi
import librosa


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


def write_time_stamps(ts, out_name):
    df = pd.DataFrame(ts)
    df.to_csv(out_name + '.csv', index=False, header=False)


if __name__ == '__main__':
    time_stamps = timestamp('wohlfahrt.midi')
    write_time_stamps(time_stamps, "w24_timestamps")
