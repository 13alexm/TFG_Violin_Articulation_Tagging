from music21 import *
import copy


def get_staccato(scr, out_file, option_staccato=True):  # CHECK VOICES HANDLING
    score = copy.deepcopy(scr)
    for xml_note in score.recurse().notes:
        staccato_bool = False
        if xml_note.articulations:
            for xml_articulation in xml_note.articulations:
                if xml_articulation.name == 'staccato' or xml_articulation.name == 'staccatissimo' or xml_articulation.name == 'spiccato':
                    print(f"Note {xml_note.pitches} with articulation {xml_note.articulations}")
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


if __name__ == '__main__':
    sc = converter.parse('etudes/t.mxl')
    get_staccato(sc, 'kreutzer', option_staccato=True)
