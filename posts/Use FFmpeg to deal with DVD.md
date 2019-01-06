# Extract audio from a DVD volume (.cdr)

1. Concatenate `VOB` files and save it to
   Concatenate the desired VOB files into a single stream and mux them to MPEG-2:
   ```bash
   $ cat /Volumes/0/VIDEO_TS/*.VOB | ffmpeg -i - output.mp2
   ```
Reference: https://askubuntu.com/a/725527/861392

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
   
