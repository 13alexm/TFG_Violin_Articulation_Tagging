from music21 import *

s = converter.parse('etudes/xml/test.mxl')

slur_bounds = []

for slur in s.flat.getElementsByClass('Slur'):
    start = slur.getFirst()
    end = slur.getLast()
    slur_bounds.append([start.getOffsetInHierarchy(s), end.getOffsetInHierarchy(s) + end.duration.quarterLength, end.getOffsetInHierarchy(s)])
    print(slur_bounds)
    dummy = False



