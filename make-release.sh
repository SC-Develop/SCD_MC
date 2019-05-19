project=`ls source/*.pro | grep -v grep | grep .pro`

project=../${project}

echo
echo "make project -> $project"
echo

cd build-release/

qmake -o Makefile ${project} -spec linux-g++ && /usr/bin/make

echo
