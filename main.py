import os
from music21 import *
from staccato import get_staccato
from legato import get_legato
from generate_midi import *

if __name__ == '__main__':
    for filename in os.listdir('etudes/xml/Staccato'):
        if os.path.isfile(os.path.join('etudes/xml/Staccato', filename)):
            fullpath = os.path.join('etudes/xml/Staccato', filename)
            file = os.path.splitext(filename)[0]

            s = converter.parse(fullpath)
            s = get_staccato(s, f'outputs/{file}_processed')
            print("File: ", file, ' was completed')
            # print("Error in file: ", file)

    for filename in os.listdir('etudes/xml/Legato'):
        if os.path.isfile(os.path.join('etudes/xml/Legato', filename)):
            fullpath = os.path.join('etudes/xml/Legato', filename)
            file = os.path.splitext(filename)[0]

            s = converter.parse(fullpath)
            s = get_staccato(s, f'outputs/{file}_processed')
            print("File: ", file, ' was completed')
            # print("Error in file: ", file)
