from music21 import *
from staccato import get_staccato

file = converter.parse('etudes/telemann.mxl')


get_staccato(file, 't_stac')

"""
get_legato(file, 't_leg')
get_detache(file, 't_det')
merge4midi('t_stac.midi', 't_leg.midi', 't_det.midi', 't_stac_full.midi', 't_final')
"""

