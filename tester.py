import os
from music21 import *
from staccato import get_staccato
from legato import get_legato
from detache import get_detache
from generate_midi import *

file = converter.parse('etudes/xml/Staccato/kreutzer30.mxl')
get_staccato(file, 'k30_stac')
get_legato(file, 'k30_leg')
get_detache(file, 'k30_det')
merge4midi('k30_stac.midi', 'k30_leg.midi', 'k30_det.midi', 'k30_stac_full.midi', 'k30_final')

file = converter.parse('etudes/xml/Staccato/wohlfahrt24.mxl')
get_staccato(file, 'w24_stac')
get_legato(file, 'w24_leg')
get_detache(file, 'w24_det')
merge4midi('w24_stac.midi', 'w24_leg.midi', 'w24_det.midi', 'w24_stac_full.midi', 'w24_final')