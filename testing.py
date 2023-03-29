from music21 import *
import copy

s = converter.parse("etudes/xml/Legato/Kayser34.mxl")
s_legato = copy.deepcopy(s)
slur_bounds = []

for xml_slur in s_legato.flat.getElementsByClass('Slur'):
    start = xml_slur.getFirst()
    end = xml_slur.getLast()
    slur_bounds.append([start, end])

dummy = False
for xml_note in s_legato.flat.notesAndRests:

    print("Selecting note ", xml_note)
    xml_rest = note.Rest()
    xml_rest.duration.quarterLength = xml_note.duration.quarterLength
    xml_rest.offset = xml_note.offset

    if slur_bounds:
        if xml_note == slur_bounds[0][0] and not slur_bounds[0][0].articulations:
            dummy = True
            print(f"This {xml_note} is the first note")
    else:
        dummy = False

    if dummy:
        pass

    elif not dummy:
        measure = xml_note.getContextByClass('Measure')
        #measure.remove(xml_note)
        measure.replace(xml_note, xml_rest)
        print(f"Replacing {xml_note} by rest")

    if slur_bounds:
        if xml_note == slur_bounds[0][1]:
            dummy = False
            print(f"This {xml_note} is the last note of a tie")
            slur_bounds.pop(0)
            print(slur_bounds)
    else:
        dummy = False


s_legato.write("xml", "legato_silence_output.xml")


# s.write("midi", "legato_test.midi")

def get_legato(score, out_file, option_staccato=True):
    pass
