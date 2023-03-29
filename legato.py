from music21 import *

s = converter.parse("etudes/xml/test.mxl")
new_voice = stream.Voice(id=2)
# Add break if articulation
slur_bounds = []
for xml_slur in s.flat.getElementsByClass('Slur'):
    start_offset = xml_slur.getFirst().offset
    end_offset = xml_slur.getLast().offset
    slur_bounds.append([start_offset, end_offset])
    #notes_in_between = s.getElementsByClass("Note").getElementsByOffset(start_offset, end_offset)
    #slurs.extend([_ for _ in notes_in_between])


print(slur_bounds)
i = 0
dummy = False
for xml_note in s.flat.notes:
    if not xml_note.articulations:
        if xml_note.offset > slur_bounds[0][0]:
            dummy = True
            print(f"This {xml_note} is the first note")

        elif xml_note.offset > slur_bounds[0][1]:
            dummy = False
            slur_bounds.pop(0)

        if not dummy:
            xml_rest = note.Rest()
            xml_rest.duration.quarterLength = xml_note.duration.quarterLength
            xml_rest.offset = xml_note.offset
            new_voice.append(xml_rest)

        if dummy:
            new_voice.append(xml_note)

s.append(new_voice)
s.write("xml", "legato_test.xml")
s.write("midi", "legato_test.midi")

def get_legato(score, out_file, option_staccato=True):
    pass
