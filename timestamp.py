from music21 import *
import matplotlib.pyplot as plt


def get_staccato(score):
    """
    :param score: score object (loaded XML file)
    :return: list of midi notes which have been tagged as staccato in the corresponding XML file
    """

    # Getting MIDI from XML
    midi_file = score.write('midi')
    # Creating MIDI object from previous file
    midi = converter.parse(midi_file)

    staccato_notes = []
    for count, note in enumerate(score.flat.notes):
        if note.articulations:
            for articulation in note.articulations:
                if articulation.name == 'staccato':
                    # print(f"this is a {articulation.name} note in position {count}")
                    midi_note = midi.flat.getElementsByOffset(note.offset, classList=['Note'])[0]
                    staccato_notes.append([count, midi_note])
                    # Breaking to avoid looping in articulations list after having found staccato
                    break
    return staccato_notes


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
    plt.plot(offsets, pitches, color='black')
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
tag = get_staccato(score)
tag_plot = fill_gaps(tag)
removed = remove_order(tag_plot)

# for i in range(len(midi.flat.notes)):
#     start_time = midi.secondsMap.noteStartTime(midi.flat.notes[i])
#     print('Note starts at ', start_time)

for note in removed:
    if not isinstance(note, int):
        print("This is a note")
        start = note.offset
        print(start)

    else:
        print("This is an integer")

tempo = score.getTimeSignatures()
print(tempo)

    # start_time = note.offset
    # duration = note.duration.quarterLength
    # end_time = start_time + duration * 60.0 / tempo