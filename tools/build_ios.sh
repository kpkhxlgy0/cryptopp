DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

DIR_SIM_TO=$DIR/../build_iossim
rm -rf $DIR_SIM_TO
mkdir -p $DIR_SIM_TO
cd $DIR_SIM_TO && cd $_
cmake -DCMAKE_TOOLCHAIN_FILE=../tools/ios.toolchain.cmake -DIOS_PLATFORM=SIMULATOR -GXcode ..
xcodebuild -target cryptopp -configuration Release

DIR_OS_TO=$DIR/../build_iosos
rm -rf $DIR_OS_TO
mkdir -p $DIR_OS_TO
cd $DIR_OS_TO && cd $_
cmake -DCMAKE_TOOLCHAIN_FILE=../tools/ios.toolchain.cmake -DIOS_PLATFORM=OS -GXcode ..
xcodebuild -target cryptopp -configuration Release

DIR_TO=$DIR/../build_ios
rm -rf $DIR_TO
mkdir -p $DIR_TO
cd $DIR_TO && cd $_
lipo -create $DIR_SIM_TO/Release-iphonesimulator/libcryptopp.a $DIR_OS_TO/Release-iphoneos/libcryptopp.a -output ./libcryptopp.a
