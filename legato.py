from music21 import *

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

def get_legato(s, out_file):

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
    # s.write("midi", out_file + ".midi")
    s.write("midi", out_file + ".midi")
    pass
