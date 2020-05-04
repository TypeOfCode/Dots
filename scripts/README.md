# ffselect
FFselect is a little script I created to make Music formating a little more automated.
It can format files to mp3 or aac (the only two you can do) with easy syntax (atleast I think so):
  
  ffselect -d ~/Music -e flac -o ./temp/mp3 -r mp3
  ffselect -i 'Usao - Chariot.flac' -r mp3
  
It supports both directory scans and singular files. To explain what's going on:

  -d  - This specifies a working directory where your files are.
  -e  - This specifies what the files extensions are ('*' for every).
  -o  - This specifies where the formated files are gonna go (Output directory).
  -r  - This specifies what the result extension or format is going to be.
  -i  - This specifies an input file if your doing a singular file
  
Some more options are:
  -v  - For enabling the output of ffmpeg
  -f  - This forces ffselect to run even if you have root
  -a  - This option check sub-directories of the working directory for files
  -h  - For just outputing help (doesn't support --help for some reason)
  
Some optional options are:
  --bitrate - As the name implies it changes the bitrate
  --quality - This changes the quality (-q:a option in ffmpeg)
  --folders - This option enables the creation of sub-directories (like ~/Music/1/1.flac to ./temp/mp3/1/1.mp3)
 
Just little things with this script that you can't specify the codec it's hardcoded (may change).
And it realy doesn't support that much stuff as this is not really a serious project probably won't add more formats

# startx-xdg
This is not really a big deal as it only changes two lines to make XDG base directory structure to work with xstart.
