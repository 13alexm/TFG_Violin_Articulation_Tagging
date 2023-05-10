from music21 import *
from generate_midi import *
import copy

def get_detache(scr, out_file, option_staccato=True):
    score = copy.deepcopy(scr)
    for count, xml_note in enumerate(score.flat.notes[::-1]):
        staccato_bool = False
        if xml_note.articulations:
            for xml_articulation in xml_note.articulations:
                if xml_articulation.name == 'tenuto':
                    # print(f"this is a {articulation.name} note in position {count}")
                    # convert the XML note into a rest
                    staccato_bool = True

        xml_rest = note.Rest()
        xml_rest.duration.quarterLength = xml_note.duration.quarterLength
        xml_rest.offset = xml_note.offset

        if not staccato_bool == option_staccato:
            # replace the XML note with the rest in its measure
            measure = xml_note.getContextByClass('Measure')
            measure.remove(xml_note)
            measure.insert(xml_note.offset, xml_rest)

   # score.write("xml", out_file + ".xml")
    score.write("midi", out_file + ".midi")
    scr.write("midi", out_file + "_full" + ".midi")
    return score
