version="0.3.0"

conda-build skorch --numpy 1.14 --output-folder ./dump/skorch && cd ./dump/skorch && 
conda convert --platform win-64 "./linux-64/skorch-$version-py36_0.tar.bz2" -o . && 
conda convert --platform osx-64 "./linux-64/skorch-$version-py36_0.tar.bz2" -o . && 
anaconda -v -t $ANACONDA_TOKEN upload "./linux-64/skorch-$version-py36_0.tar.bz2" && 
anaconda -v -t $ANACONDA_TOKEN upload "./win-64/skorch-$version-py36_0.tar.bz2" && 
anaconda -v -t $ANACONDA_TOKEN upload "./osx-64/skorch-$version-py36_0.tar.bz2" && conda-build purge
