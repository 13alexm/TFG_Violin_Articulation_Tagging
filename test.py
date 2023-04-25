from music21 import *

s = converter.parse('etudes/xml/test.mxl')

for notes in s.flat.notesAndRests:
    print(f"The element {notes.pitch} has offset {notes.getOffsetInHierarchy(s)}")
    print(f"The element {notes.pitch} has offset {notes.getOffsetBySite(notes.activeSite)} \n")
