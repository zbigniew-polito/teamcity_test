
mkdir -p build

touch build/build_no
build_no=$(cat build/build_no)

if ! [[ "$build_no" =~ ^[0-9]+$ ]]
then
  build_no=0
fi;

build_no=$((build_no+1))

echo "$build_no" > build/build_no;

env > build/env 

echo "----------------------"
echo "----------------------"

echo "Build number : $build_no"
echo "TeamCity env.BUILD_NUMBER : $BUILD_NUMBNER"
echo "TeamCity env.BUILD_VCS_NUMBER : $BUILD_VCS_NUMBER"
echo "TeamCity env.BUILD_URL : $BUILD_URL"


echo ""

echo "----------------------"
echo "----------------------"

mkdir -p temp
touch temp/touched.file

exit $RETURN_VALUE