import copy
from music21 import *
from staccato import *
import matplotlib.pyplot as plt




def plot_midi(midi):
    pitch_offsets = []
    for note in midi.flat.notes:
        pitch_offsets.append((note.pitch.ps, note.offset))

    # Sort the pitch/offset pairs by offset
    pitch_offsets.sort(key=lambda x: x[1])

    # Extract the pitches and offsets into separate lists
    pitches = [p for p, o in pitch_offsets]
    offsets = [o for p, o in pitch_offsets]

    # Plot the pitch contour over time
    plt.plot(offsets, pitches, "o", color='black')
    plt.xlabel('Time (seconds)')
    plt.ylabel('Pitch (MIDI number)')
    plt.show()


def fill_gaps(l):
    filled = []
    if len(l[0]) != 2:
        raise Exception("Cannot perform operation")
    else:
        sorted_list = sorted(l, key=lambda x: x[0])

        prev_pos = sorted_list[0][0]
        if prev_pos != 0:
            filled.insert(0, [0, 0])
        for pos, obj in sorted_list:
            if pos - prev_pos > 1:
                gap_size = pos - prev_pos - 1
                # filled.extend([[None] * 2] * gap_size)
                for i in range(1, gap_size + 1):
                    filled.append([prev_pos + i, 0])
            filled.append([pos, obj])
            prev_pos = pos
    return filled


def remove_order(l):
    if len(l[0]) != 2:
        raise Exception("Cannot perform operation")
    else:
        return [x[1] for x in l]


def get_timestamps(notes):
    pass


# Loading XML file
score = converter.parse('etudes/xml/kreutzer4.mxl')
print(len(score.flat.getElementsByClass('Note')))
# Getting MIDI from XML
midi_file = score.write('midi')
# Creating MIDI object from previous file
midi = converter.parse(midi_file)
unscore = copy.deepcopy(score)
tag = get_staccato(score, out_file="stac", option_staccato=True)
untag = get_staccato(unscore, out_file="rest", option_staccato=False)

tag_plot = fill_gaps(tag)

removed = remove_order(tag_plot)

# for i in range(len(midi.flat.notes)):
#     start_time = midi.secondsMap.noteStartTime(midi.flat.notes[i])
#     print('Note starts at ', start_time)

for note in removed:
    if not isinstance(note, int):
        print("This is a note")
        start = note.start
        print(start)

    else:
        print("This is an integer")

tempo = score.getTimeSignatures()
print(tempo)
plot_midi(midi)
    # start_time = note.offset
    # duration = note.duration.quarterLength
    # end_time = start_time + duration * 60.0 / tempo