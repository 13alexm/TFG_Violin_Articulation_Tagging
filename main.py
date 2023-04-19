import os
from music21 import *
from staccato import *
#from legato import *
from generate_midi import *
import pretty_midi


if __name__ == '__main__':
    for filename in os.listdir('etudes/xml/Staccato'):
        if os.path.isfile(os.path.join('etudes/xml/Staccato', filename)):
            fullpath = os.path.join('etudes/xml/Staccato', filename)
            file = os.path.splitext(filename)[0]

            try:
                s = converter.parse(fullpath)
                s = get_staccato(s, f'outputs/{file}_processed')
                print("File: ", print(file), ' was completed')
            except Exception as e:
                print("Error in file: ", file)
                continue
