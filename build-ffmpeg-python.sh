version="0.2.0"

conda-build ffmpeg-python --numpy 1.14 --output-folder ./dump/ffmpeg_python && cd ./dump/ffmpeg_python && 
conda convert --platform win-64 "./linux-64/ffmpeg-python-$version-py36_0.tar.bz2" -o . && 
conda convert --platform osx-64 "./linux-64/ffmpeg-python-$version-py36_0.tar.bz2" -o . && 
anaconda -v -t $ANACONDA_TOKEN upload "./linux-64/ffmpeg-python-$version-py36_0.tar.bz2" && 
anaconda -v -t $ANACONDA_TOKEN upload "./win-64/ffmpeg-python-$version-py36_0.tar.bz2" && 
anaconda -v -t $ANACONDA_TOKEN upload "./osx-64/ffmpeg-python-$version-py36_0.tar.bz2" && conda-build purge
