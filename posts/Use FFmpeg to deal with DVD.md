# Convert video or extract audio from a DVD volume (.cdr)

1. Concatenate `VOB` files and save as a new video file.
   ```bash
   $ ffmpeg -i concat:/Volumes/0/VIDEO_TS/VTS_01_1.VOB\|/Volumes/0/VIDEO_TS/VTS_01_2.VOB output.mp4
   ```
2. Concatenate `VOB` files and save as a new audio file.
   ```bash
   $ ffmpeg -i concat:/Volumes/0/VIDEO_TS/VTS_01_1.VOB\|/Volumes/0/VIDEO_TS/VTS_01_2.VOB output.mp2
   ```
Reference: https://stackoverflow.com/a/8349419/3164091

# Concatenate multiple `mp3` files into one file

1. Create a text file such as `list.txt`
2. In this txt file, list the files to be concatenated.
   ```
   file '/path/to/first.mp3'
   file '/path/to/second.mp3'
   ```
3. Use command to concatenate
   ```bash
   $ ffmpeg -f concat -i list.txt -c copy out.mp3
   ```
   If you see this error:
   ```bash
   [concat @ 0x7fcef3000000] Unsafe file name '/path/to/first.mp3'
   list.txt: Operation not permitted
   ```
   Add `-safe 0` before `-i` ([Reference](https://stackoverflow.com/questions/38996925/ffmpeg-concat-unsafe-file-name#comment65345487_38996925))

   ```
   $ ffmpeg -f concat -safe 0 -i list.txt -c copy out.mp3
   ```
Reference: https://superuser.com/a/1215832/648563
   
# How to read DVD chapters information
1. Install `lsdvd`
   `brew install lsdvd`
2. Run
   `lsdvd -c /Volumes/0/`
   Example output:
   ```
   libdvdread: Attempting to use device /dev/rdisk3 mounted on /Volumes/0 for CSS authentication
   Couldn't read enough bytes for title.
   Disc Title: unknown
   Title: 01, Length: 01:20:41.040 Chapters: 16, Cells: 16, Audio streams: 01, Subpictures: 00
	   VTS: 01, TTN: 01, FPS: 25.00, Format: PAL, Aspect ratio: 4/3, Width: 720, Height: 576, DF: ?
	   Palette: 286df0 51f05a 108080 ea8080 902235 6addca d29210 5b4992 7b8080 d18080 30b66d 4f515b 1c77b6 61cfcf 88b33a 3caea4 
	   Number of Angles: 1
	   Audio: 1, Language: zh - Chinese, Format: mpeg1, Frequency: 48000, Quantization: 16bit, Channels: 2, AP: 0, Content: Undefined, Stream id: 0xc0
	   Chapter: 01, Length: 00:03:21.760, Start Cell: 01
	   Chapter: 02, Length: 00:04:20.000, Start Cell: 02
	   Chapter: 03, Length: 00:02:25.800, Start Cell: 03
	   Chapter: 04, Length: 00:05:18.920, Start Cell: 04
	   Chapter: 05, Length: 00:04:29.000, Start Cell: 05
	   Chapter: 06, Length: 00:04:50.520, Start Cell: 06
	   Chapter: 07, Length: 00:05:06.160, Start Cell: 07
	   Chapter: 08, Length: 00:04:15.440, Start Cell: 08
	   Chapter: 09, Length: 00:06:51.520, Start Cell: 09
	   Chapter: 10, Length: 00:07:04.040, Start Cell: 10
	   Chapter: 11, Length: 00:03:43.680, Start Cell: 11
	   Chapter: 12, Length: 00:06:21.360, Start Cell: 12
	   Chapter: 13, Length: 00:05:42.920, Start Cell: 13
	   Chapter: 14, Length: 00:05:14.960, Start Cell: 14
	   Chapter: 15, Length: 00:07:11.000, Start Cell: 15
	   Chapter: 16, Length: 00:04:23.960, Start Cell: 16
	   Cell: 01, Length: 00:03:21.760
	   Cell: 02, Length: 00:04:20.000
	   Cell: 03, Length: 00:02:25.800
	   Cell: 04, Length: 00:05:18.920
	   Cell: 05, Length: 00:04:29.000
	   Cell: 06, Length: 00:04:50.520
	   Cell: 07, Length: 00:05:06.160
	   Cell: 08, Length: 00:04:15.440
	   Cell: 09, Length: 00:06:51.520
	   Cell: 10, Length: 00:07:04.040
	   Cell: 11, Length: 00:03:43.680
	   Cell: 12, Length: 00:06:21.360
	   Cell: 13, Length: 00:05:42.920
	   Cell: 14, Length: 00:05:14.960
	   Cell: 15, Length: 00:07:11.000
	   Cell: 16, Length: 00:04:23.960
      Longest track: 01
   ```
Reference: https://stackoverflow.com/a/48131707/3164091

# How to cut a video file
1. Run command:
   ```
   ffmpeg -i DVD1.mp4 -ss 00:03:21.760 -t 00:04:20.000 2.mp4
   ```
   `-ss` option is for starting timestamp. If don't provide this option, it defaults to `0`.
   `-t` option is for duration.
