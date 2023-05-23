from music21 import *
import os


def generate_midi(fp, mp='etudes/midi/'):
    score = converter.parse(fp)
    midi_data = score.write('midi')
    name = os.path.splitext(os.path.basename(fp))[0]
    mp += name + '.mid'
    with open(mp, 'wb') as f:
        f.write(bytes(midi_data))
    return mp


midi_path = generate_midi('etudes/xml/4.mxl')
# subprocess.call(['open', '-a', 'MidiEditor', midi_path])
