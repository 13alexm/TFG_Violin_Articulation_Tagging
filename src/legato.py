from music21 import *
import copy


def get_legato(scr, out_file, option_legato=True):
    s = copy.deepcopy(scr)
    slur_bounds = []

    for xml_slur in s.flat.getElementsByClass('Slur'):
        start = xml_slur.getFirst()
        end = xml_slur.getLast()
        slur_bounds.append([start.getOffsetInHierarchy(s), end.getOffsetInHierarchy(s) + end.duration.quarterLength,
                            end.getOffsetInHierarchy(s)])
    print(slur_bounds)

    for xml_note in s.recurse().notes:
        legato_bool = False
        if slur_bounds:
            note_offset = xml_note.getOffsetInHierarchy(s)
            if slur_bounds[0][0] <= note_offset < slur_bounds[0][1]:
                if not xml_note.articulations:
                    legato_bool = True
                    print(f'Writing {xml_note} with articulation {xml_note.articulations}')
                else:
                    legato_bool = False

            xml_rest = note.Rest()
            xml_rest.duration.quarterLength = xml_note.duration.quarterLength
            xml_rest.offset = xml_note.offset

            if not legato_bool == option_legato:
                # replace the XML note with the rest in its measure
                measure = xml_note.getContextByClass('Measure')
                measure.remove(xml_note)
                measure.insert(xml_note.offset, xml_rest)
                print(f'Resting {xml_note}')
            if slur_bounds[0][2] == note_offset:
                slur_bounds.pop(0)
        else:
            xml_rest = note.Rest()
            xml_rest.duration.quarterLength = xml_note.duration.quarterLength
            xml_rest.offset = xml_note.offset
            measure = xml_note.getContextByClass('Measure')
            measure.remove(xml_note)
            measure.insert(xml_note.offset, xml_rest)
            print(f'Resting {xml_note}')

    s.write("midi", out_file + ".midi")


if __name__ == '__main__':
    sc = converter.parse('../etudes/xml/test.mxl')
    scc = converter.parse('../etudes/xml/Staccato/wohlfahrt24.mxl')
    get_legato(scc, 'what')
