from music21 import *
import copy
from generate_midi import *

def get_legato(scr, out_file):
    s = copy.deepcopy(scr)
    new_voice = stream.Voice(id=1)
    ts = s.recurse().getElementsByClass(meter.TimeSignature)[0]
    new_voice.append(meter.TimeSignature(f"{ts.numerator}/{ts.denominator}"))
    slur_bounds = []

    for xml_slur in s.flat.getElementsByClass('Slur'):
        start = xml_slur.getFirst()
        end = xml_slur.getLast()
        slur_bounds.append([start, end])

    dummy = False
    for xml_note in s.flat.notesAndRests:

        print("Selecting note ", xml_note)

        if slur_bounds:
            if xml_note == slur_bounds[0][0] and not slur_bounds[0][0].articulations:
                dummy = True
                print(f"This {xml_note} is the first note")
        else:
            dummy = False

        if dummy:
            print(f"Appending note {xml_note}")
            new_voice.append(xml_note)

        elif not dummy:
            xml_rest = note.Rest()
            xml_rest.duration.quarterLength = xml_note.duration.quarterLength
            xml_rest.offset = xml_note.offset
            #new_voice.append(xml_rest)
            measure = xml_note.getContextByClass('Measure')
            measure.remove(xml_note)
            measure.insert(xml_note.offset, xml_rest)

        if slur_bounds:
            if xml_note == slur_bounds[0][1]:
                dummy = False
                print(f"This {xml_note} is the last note of a tie")
                slur_bounds.pop(0)
                #print(slur_bounds)
        else:
            dummy = False

    #s.append(new_voice)
    #s.show()
    #s.write("xml", "legato_output.xml")
    s.write("midi", out_file + '.midi')
    scr.write("midi", out_file + "_full" + '.midi')


if __name__ == '__main__':
    sc = converter.parse('etudes/xml/test.mxl')
    scc = converter.parse('etudes/xml/Staccato/wohlfahrt24.mxl')
    get_legato(scc, 'what')
    merge2midi('what.midi', 'what_full.midi', "whatout") 