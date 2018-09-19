#Install opencv-2.4.12.3 on Centos

sudo yum install -y gcc g++ gtk+-devel libjpeg-devel libtiff-devel jasper-devel libpng-devel zlib-devel cmake unzip

sudo yum install -y yum-priorities

wget https://github.com/Itseez/opencv/archive/2.4.12.3.zip

unzip 2.4.12.3.zip

cd opencv-2.4.12.3

mkdir build

cd build

export PYTHON_EXECUTABLE=$(readlink -e $(which python))

export PYTHON_INCLUDE_PATH=${PYTHON_EXECUTABLE%/*/*}/include

export PYTHON_LIBRARY=${PYTHON_EXECUTABLE%/*/*}/lib/libpython2.7.a

export PYTHON_PACKAGES_PATH=${PYTHON_EXECUTABLE%/*/*}/lib/python2.7/site-packages

cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local ..

make

sudo make install

import cv2
print  cv2.__version__
