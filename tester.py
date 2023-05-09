import os
from music21 import *
from staccato import get_staccato
from legato import get_legato
from generate_midi import *

file = converter.parse('etudes/xml/Staccato/wohlfahrt24.mxl')
get_staccato(file, 'w24_stac')
get_legato(file, 'w24_leg')

merge3midi('w24_stac.midi', 'w24_leg.midi', 'w24_leg_full.midi', 'w24_final')