import os
from pydub import AudioSegment
import pretty_midi
import librosa
import glob
import numpy as np



def get_total_duration(path):
    total_duration = 0
    for filename in os.listdir(path):
        if filename.endswith('.wav'):
            file_path = os.path.join(path, filename)
            audio = AudioSegment.from_file(file_path)
            audio_duration = audio.duration_seconds
            total_duration += audio_duration
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


def get_audio_duration(path):
    audio = AudioSegment.from_file(path)
    return audio.duration_seconds


if __name__ == '__main__':
    folder_path = 'Data_Segments/Legato'

    rms_values = []

    # Get a list of audio file paths in the folder
    audio_files = glob.glob(os.path.join(folder_path, "*.wav"))  # Modify the file extension if necessary

    # Loop through each audio file
    for audio_file in audio_files:
        # Load the audio file
        audio, sr = librosa.load(audio_file)  # Modify the function if your audio files have a different format

        # Calculate the RMS energy of the audio file
        rms = librosa.feature.rms(y=audio)

        # Compute the average RMS value for the entire audio file
        average_rms = np.mean(rms)

        # Append the average RMS value to the list
        rms_values.append(average_rms)

    # Compute the loudness deviation value
    loudness_deviation = np.std(rms_values)

    # Output the loudness deviation value
    print("Loudness Deviation:", loudness_deviation)








    # # Initialize counters
    # greater_than_10 = 0
    # between_5_and_10 = 0
    # between_1_and_5 = 0
    # less_than_one = 0
    # less_than_mili = 0
    # audio_files = glob.glob(os.path.join(folder_path, "*.wav"))  # Modify the file extension if necessary
    #
    # # Loop through each audio file
    # for audio_file in audio_files:
    #     # Load the audio file
    #     audio, _ = librosa.load(audio_file)  # Modify the function if your audio files have a different format
    #
    #     # Calculate the duration of the audio file in seconds
    #     duration = librosa.get_duration(y=audio, sr=_)
    #
    #     # Categorize the audio file based on duration
    #     if duration > 10:
    #         greater_than_10 += 1
    #     elif 5 <= duration <= 10:
    #         between_5_and_10 += 1
    #     elif 1 <= duration < 5:
    #         between_1_and_5 += 1
    #     elif 1 > duration > 0.5:
    #         less_than_one += 1
    #     elif duration < 0.5:
    #         less_than_mili += 1
    #
    # # Output the counts
    # print("Audio files with duration greater than 10 seconds:", greater_than_10)
    # print("Audio files with duration between 5 and 10 seconds:", between_5_and_10)
    # print("Audio files with duration between 1 and 5 seconds:", between_1_and_5)
    # print("Audio files with duration less than 1 second:", less_than_one)
    # print("Audio files with duration less than 0.5 ms:", less_than_mili)
    # mili = []
    # sec = []
    # secbig = []
    # big = []
    # for filename in os.listdir('Data_Segments/Legato'):
    #     if filename.endswith('.wav'):
    #         file_path = os.path.join('Data_Segments/Legato', filename)
    #         duration = get_duration('Data_Segments/Legato')
    #         if duration < 1:
    #             mili.append(duration)
    #
    #         if 1 < duration < 5:
    #             sec.append(duration)
    #
    #         if 5 < duration < 10:
    #             secbig.append(duration)
    #
    #         if duration > 10:
    #             big.append(duration)
    #
    # print(len(mili), len(sec), len(secbig), len(big))
