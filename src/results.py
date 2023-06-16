import os
from pydub import AudioSegment
import pretty_midi


def get_total_duration(path):
    total_duration = 0
    for filename in os.listdir(path):
        if filename.endswith('.wav'):
            file_path = os.path.join(path, filename)
            audio = AudioSegment.from_file(file_path)
            duration = audio.duration_seconds
            total_duration += duration
    return total_duration


def get_number_of_files(path, extension):
    x = 0
    for filename in os.listdir(path):
        if filename.endswith(extension):
            x += 1
    return x


def get_number_of_notes(path, channel):
    midi_data = pretty_midi.PrettyMIDI(path)
    midi_programs = midi_data.instruments[channel]
    notes = midi_programs.notes
    return len(notes)


def get_end_time_midi(path):
    midi_data = pretty_midi.PrettyMIDI(path)
    return midi_data.get_end_time()


def get_duration(path):
    audio = AudioSegment.from_file(path)
    return audio.duration_seconds

mili = []
sec = []
secbig = []
big = []
if __name__ == '__main__':
    for filename in os.listdir('Data_Segments/Legato'):
        if filename.endswith('.wav'):
            file_path = os.path.join('Data_Segments/Legato', filename)
            duration = get_duration('Data_Segments/Legato')
            if duration < 1:
                mili.append(duration)

            if 1 < duration < 5:
                sec.append(duration)

            if 5 < duration < 10:
                secbig.append(duration)

            if duration > 10:
                big.append(duration)

    print(len(mili), len(sec), len(secbig), len(big))
