DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DIR_TO=$DIR/../build_android
rm -rf $DIR_TO
mkdir -p $DIR_TO
cd $DIR_TO && cd $_
cmake -DCMAKE_TOOLCHAIN_FILE=../tools/android.toolchain.cmake ..
make
