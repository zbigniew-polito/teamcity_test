
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

echo "Build number $build_no"

echo "----------------------"
echo "----------------------"


exit $RETURN_VALUE