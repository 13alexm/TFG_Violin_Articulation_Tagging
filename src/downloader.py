import subprocess
import os


def download_from_youtube(urls, output_dir, etude):
    for count, url in enumerate(urls):
        command = ['yt-dlp', '-x', '--audio-format', 'wav', '-o', f'{output_dir}/{etude}_{count}.%(ext)s', url]
        subprocess.run(command)


if __name__ == '__main__':
    video_urls = [
        'https://www.youtube.com/watch?v=DeOP5BXnBmE',
        'https://www.youtube.com/watch?v=mNtcTcfLsY4',
        'https://www.youtube.com/watch?v=mWpk_vV69L4',
        'https://www.youtube.com/watch?v=6HogJG2tGdc',
        'https://www.youtube.com/watch?v=rVEL8jo9j1M'
    ]
    name = 'wohlfahrt58'
    directory = 'Recordings/Legato'
    os.makedirs(directory, exist_ok=True)

    download_from_youtube(video_urls, directory, name)
