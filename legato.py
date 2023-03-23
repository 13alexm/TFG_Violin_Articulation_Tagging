from music21 import *

s = converter.parse("etudes/xml/kreutzer4.mxl")
new_voice = stream.Voice(id=2)

slurs = []
voice = s.makeVoices()[1]
for xml_slur in s.flat.getElementsByClass('Slur'):
    slurs.append(xml_slur.getFirst())
    slurs.append(xml_slur.getLast())


print(slurs)

for xml_note in s.flat.notes:
    if xml_note not in slurs:
        xml_rest = note.Rest()
        xml_rest.duration.quarterLength = xml_note.duration.quarterLength
        xml_rest.offset = xml_note.offset
        new_voice.append(xml_rest)
    else:
        new_voice.append(xml_note)

s.append(new_voice)
s.write("xml", "legato_test.xml")
s.write("midi", "legato_test.midi")

def get_legato(score, out_file, option_staccato=True):
    pass
