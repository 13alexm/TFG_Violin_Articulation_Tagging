from music21 import *
from staccato import get_staccato
from legato import get_legato
from detache import get_detache
import generate_midi as gm

file = converter.parse('etudes/xml/Staccato/wohlfahrt24_2.mxl')


get_staccato(file, 'w242_stac')
get_legato(file, 'w242_leg')
get_detache(file, 'w242_det')
gm.merge4midi('w242_stac.midi', 'w242_leg.midi', 'w242_det.midi', 'w242_stac_full.midi', 'w242_final')

