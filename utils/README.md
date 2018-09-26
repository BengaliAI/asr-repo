# Utility Codes


## `flac2wav.sh` 

Batch converts `.flac` file to `.wav` on Linux based platforms.

### Dependencies 

Install `ffmpeg` on Ubuntu first. 

```
sudo add-apt-repository ppa:jonathonf/ffmpeg-3
sudo apt-get update
sudo apt-get install ffmpeg libav-tools x264 x265
```

### Usage

The flac files should be stored in a root directory and there should be other subfolders such as `00`, `01` etc. Just put the bash script one level before the directory and run the file, make sure to modify the read and target directory.

Modify these two paths

```
target_dir="/media/manash/Drive/openslr-data/converted/"
flac_dir="/media/manash/Drive/openslr-data/test-bash/"
```

Then run

```
bash flac2.wav.sh
```

