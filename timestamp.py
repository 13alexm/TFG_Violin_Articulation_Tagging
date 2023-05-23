import pandas as pd
import pretty_midi
import pandas


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
        if len(current_articulation) > 0:
            if time is None:
                start = time
                end = notes_ends_sorted[idx][0]
                articulation = current_articulation
            elif current_articulation != articulation:
                print(f'Time segment starts in {start}, ends in {end} with articulation {articulation[0]}')
                stamps += [[start, end, articulation[0]]]
                start = time
                end = notes_ends_sorted[idx][0]
                articulation = current_articulation
            else:
                end = notes_ends_sorted[idx][0]
        idx += 1
    if articulation is not None:
        print(f'Time segment starts in {start}, ends in {notes_ends_sorted[-1][0]} with articulation {articulation[0]}')
        stamps.append([start, notes_ends_sorted[-1][0], articulation[0]])

    for idx, value in enumerate(stamps):
        if value[2] == 40:
            stamps.pop(idx)
        elif value[2] == 6:
            value[2] = 'Staccato'
        elif value[2] == 48:
            value[2] = 'Legato'
        elif value[2] == 71:
            value[2] = 'Detache'
    stamps.pop(0)
    return stamps


def write_time_stamps(ts, out_name):
    transposed = list(map(list, zip(*ts)))
    df = pd.DataFrame(ts)
    df.to_csv(out_name+'.csv', index=False, header=False)


if __name__ == '__main__':
    time_stamps = timestamp('w24_final.midi')
    write_time_stamps(time_stamps, "timeeeeeeeeees")
    midi_data = pretty_midi.PrettyMIDI('w24_final.midi')
