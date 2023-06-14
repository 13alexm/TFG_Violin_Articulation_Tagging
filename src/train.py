import os
import librosa
import numpy as np
import matplotlib.pyplot as plt


def apply_fft(input_dir, output_dir='STFT_Segments'):
    os.makedirs(output_dir, exist_ok=True)

    audios = os.listdir(input_dir)
    for file in audios:
        audio_path = os.path.join(input_dir, file)
        audio, sr = librosa.load(audio_path, sr=None)
        stft = librosa.stft(audio)
        #stft = librosa.amplitude_to_db(np.abs(stft))

        magnitude = np.abs(stft)
        phase = np.angle(stft)

        stft_data = {
            'magnitude': magnitude,
            'phase': phase
        }
        out_file = os.path.join(output_dir, f"stft_{os.path.splitext(file)[0]}.npz")
        np.savez(out_file, **stft_data)


def plot_stft(file):
    stft = np.load(file)

    magnitude = librosa.amplitude_to_db(stft['magnitude'])
    phase = stft['phase']

    plt.figure(figsize=(10, 4))
    plt.imshow(magnitude, aspect='auto', origin='lower', cmap='jet')
    plt.colorbar(format='%+2.0f dB')
    plt.title('STFT Magnitude')
    plt.xlabel('Frame')
    plt.ylabel('Frequency Bin')
    plt.tight_layout()
    plt.show()


if __name__ == '__main__':
    apply_fft('Data_Segments')
    plot_stft('STFT_Segments/stft_Staccato_segment_17.npz')
