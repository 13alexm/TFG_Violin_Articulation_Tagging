from music21 import *
#from staccato import *
#from legato import *
from generate_midi import *
import pretty_midi


score = converter.parse('etudes/xml/score.xml')

# Iterate over all the notes in the score
for note in score.flat.notes:

    # Check if the note is a member of a legato tie
    tie_sites = note.getSpannerSites()
    legato_tie = None
    for site in tie_sites:
        if isinstance(site.spanner, spanner.Line) and site.offset == note.offset:
            legato_tie = site.spanner

    # If the note is a member of a legato tie, print information about the tie and the note's role in it
    if legato_tie is not None:
        start_note = legato_tie.getSpannedElements()[0]
        end_note = legato_tie.getSpannedElements()[-1]
        if note == start_note:
            print(note, 'is the start note of a legato tie from', start_note, 'to', end_note)
        elif note == end_note:
            print(note, 'is the end note of a legato tie from', start_note, 'to', end_note)
        else:
            print(note, 'is a middle note of a legato tie from', start_note, 'to', end_note)