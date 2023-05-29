import os
import timestamp as ts
import generate_midi as gm

if __name__ == '__main__':
    for filename in os.listdir('etudes/xml/Staccato'):
        if os.path.isfile(os.path.join('etudes/xml/Staccato', filename)):
            fullpath = os.path.join('etudes/xml/Staccato', filename)
            gm.get_midi_with_articulations(fullpath)

    for filename in os.listdir('etudes/xml/Legato'):
        if os.path.isfile(os.path.join('etudes/xml/Legato', filename)):
            fullpath = os.path.join('etudes/xml/Legato', filename)
            gm.get_midi_with_articulations(fullpath)

    for filename in os.listdir("Aligned_MIDI"):
        if os.path.isfile(os.path.join("Aligned_MIDI", filename)):
            fullpath = os.path.join("Aligned_MIDI", filename)
            name = os.path.splitext(filename)[0]
            ts.write_time_stamps(fullpath, 'Aligned_MIDI/'+name+'_time')
