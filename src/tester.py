from music21 import *
from staccato import get_staccato
from legato import get_legato
from detache import get_detache
import generate_midi as gm

file = converter.parse('etudes/xml/Staccato/kreutzer4.mxl')


get_staccato(file, 'k4_stac')
get_legato(file, 'k4_leg')
get_detache(file, 'k4_det')
gm.merge4midi('k4_stac.midi', 'k4_leg.midi', 'k4_det.midi', 'k4_stac_full.midi', 'k4_final')

