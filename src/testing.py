from music21 import *
import copy

s = converter.parse("etudes/xml/test.mxl")
s_legato = copy.deepcopy(s)
slur_bounds = []

for xml_slur in s_legato.flat.getElementsByClass('Slur'):
    start = xml_slur.getFirst()
    end = xml_slur.getLast()
    #slur_bounds.append([start.seconds, end.seconds])
    slur_bounds.append([start.getOffsetInHierarchy(s_legato), end.getOffsetInHierarchy(s_legato) + end.duration.quarterLength])

dummy = False
for xml_note in s_legato.flat.notesAndRests:

    print("Selecting note ", xml_note)
    if slur_bounds:
        if dummy:
            if xml_note.getOffsetInHierarchy(s_legato) < slur_bounds[0][1]:
                dummy = False
                print(f"This {xml_note} is the last note of a tie")
                slur_bounds.pop(0)
                print(slur_bounds)
        elif not dummy:
            if xml_note.getOffsetInHierarchy(s_legato) >= slur_bounds[0][0]:
                dummy = True

    else:
        dummy = False

    """
        if slur_bounds:
        print(xml_note.getOffsetInHierarchy(s_legato), slur_bounds[0][0])
        if xml_note.getOffsetInHierarchy(s_legato) >= slur_bounds[0][0]:
            dummy = True
            print(f"This {xml_note} is the first note")
    else:
        dummy = False
    """


    if dummy:
        print("Dummy true")
        pass

    elif not dummy:
        print("Dummy false")
        xml_rest = note.Rest()
        xml_rest.duration.quarterLength = xml_note.duration.quarterLength
        xml_rest.offset = xml_note.offset
        measure = xml_note.getContextByClass('Measure')
        #measure.remove(xml_note)
        measure.replace(xml_note, xml_rest)
        print(f"Replacing {xml_note} by rest")



s_legato.write("xml", "legato_silence_output.xml")
s_legato.write("midi", "legato_test.midi")


"""
9/05/2021
"""

s = converter.parse("etudes/xml/Staccato/kreutzer4.mxl")
new_voice = stream.Voice(id=2)
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
        new_voice.append(xml_rest)

    if slur_bounds:
        if xml_note == slur_bounds[0][1]:
            dummy = False
            print(f"This {xml_note} is the last note of a tie")
            slur_bounds.pop(0)
            print(slur_bounds)
    else:
        dummy = False

s.append(new_voice)
#s.write("xml", "legato_output.xml")
s.write("midi", "legato_test.midi")

def get_legato(score, out_file, option_staccato=True):
    pass
