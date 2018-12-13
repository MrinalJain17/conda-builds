@echo off

SET VERSION=4.0.2

call conda-build ffmpeg --numpy 1.14 --output-folder .\dump\ffmpeg
call anaconda -v -t $ANACONDA_TOKEN upload "./dump/ffmpeg/win-64/ffmpeg-%version%-0.tar.bz2"
call conda build purge
