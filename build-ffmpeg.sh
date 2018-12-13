version="4.1"

conda-build ffmpeg --numpy 1.14 --output-folder ./dump/ffmpeg && cd ./dump/ffmpeg && 
conda convert --platform osx-64 "./linux-64/ffmpeg-$version-0.tar.bz2" -o . && 
anaconda -v -t $ANACONDA_TOKEN upload "./linux-64/ffmpeg-$version-0.tar.bz2" &&  
anaconda -v -t $ANACONDA_TOKEN upload "./osx-64/ffmpeg-$version-0.tar.bz2" && conda-build purge
