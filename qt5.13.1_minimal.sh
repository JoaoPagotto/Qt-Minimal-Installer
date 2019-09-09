Qt 5.13.1 for Linux - Minimal Installer
Script by: joaopagotto

Tested on:
- Debian 10
- Raspbian Buster Lite July 2019

#--------------------------------------

apt-get clean
apt-get update
apt-get dist-upgrade
apt-get autoremove

#--------------------------------------

apt-get install mc rcconf vim pv subversion git openssh-server screen dos2unix

#--------------------------------------

apt-get install \
 build-essential \
 libbluetooth-dev \
 libdbus-1-dev \
 libfontconfig1-dev \
 libfreetype6-dev \
 libgl1-mesa-dev \
 libglib2.0-dev \
 libicu-dev \
 libinput-dev \
 libjpeg-dev \
 libmariadbclient-dev \
 libpng-dev \
 libpq-dev \
 libsqlite3-dev \
 libssl-dev \
 libx11-dev \
 libx11-xcb-dev \
 libxcb-glx0-dev \
 libxcb-icccm4-dev \
 libxcb-image0-dev \
 libxcb-keysyms1-dev \
 libxcb-randr0-dev \
 libxcb-render-util0-dev \
 libxcb-shape0-dev \
 libxcb-shm0-dev \
 libxcb-sync0-dev \
 libxcb-xfixes0-dev \
 libxcb1-dev \
 libxext-dev \
 libxfixes-dev \
 libxi-dev \
 libxkbcommon-dev \
 libxkbcommon-x11-dev
 libxrender-dev \
 nasm \
 xcb \
 xorg

#--------------------------------------

cd /usr/local/src

wget http://download.qt.io/official_releases/qt/5.13/5.13.1/single/qt-everywhere-src-5.13.1.tar.xz
tar xvfJ qt-everywhere-src-5.13.1.tar.xz
cd qt-everywhere-src-5.13.1

#--------------------------------------
# 
# -opensource -confirm-license \
# -release \
# -no-vulkan \
# -no-xcb \
# -no-gbm \
# -no-pch \
# -no-use-gold-linker \
# -opengl desktop \
# -nomake examples \
# -nomake tests \
# -nomake tools \
# -qt-libpng \
# -qt-zlib \
# -system-libpng \
# -reduce-exports \
# 
# -skip qt3d \
# -skip qtactiveqt \
# -skip qtandroidextras \
# -skip qtcanvas3d \
# -skip qtcharts \
# -skip qtconnectivity \
# -skip qtdatavis3d \
# -skip qtdeclarative \
# -skip qtdoc \
# -skip qtdocgallery \
# -skip qtfeedback \
# -skip qtgamepad \
# -skip qtgraphicaleffects \
# -skip qtimageformats \
# -skip qtlocation \
# -skip qtlottie \
# -skip qtmacextras \
# -skip qtmultimedia \
# -skip qtnetworkauth \
# -skip qtpim \
# -skip qtpurchasing \
# -skip qtqa \
# -skip qtquickcontrols \
# -skip qtquickcontrols2 \
# -skip qtremoteobjects \
# -skip qtrepotools \
# -skip qtscript \
# -skip qtscxml \
# -skip qtsensors \
# -skip qtserialbus \
# -skip qtserialport \
# -skip qtspeech \
# -skip qtsvg \
# -skip qtsystems \
# -skip qttools \
# -skip qttranslations \
# -skip qtvirtualkeyboard \
# -skip qtwayland \
# -skip qtwebchannel \
# -skip qtwebengine \
# -skip qtwebglplugin \
# -skip qtwebsockets \
# -skip qtwebview \
# -skip qtwinextras \
# -skip qtx11extras \
# -skip qtxmlpatterns
#
#--------------------------------------

./configure \
 -opensource -confirm-license \
 -release \
 -no-vulkan \
 -no-xcb \
 -no-gbm \
 -no-pch \
 -no-use-gold-linker \
 -opengl desktop \
 -nomake examples \
 -nomake tests \
 -nomake tools \
 -qt-libpng \
 -qt-zlib \
 -system-libpng \
 -reduce-exports \
 -skip qt3d \
 -skip qtactiveqt \
 -skip qtandroidextras \
 -skip qtcanvas3d \
 -skip qtcharts \
 -skip qtconnectivity \
 -skip qtdatavis3d \
 -skip qtdeclarative \
 -skip qtdoc \
 -skip qtdocgallery \
 -skip qtfeedback \
 -skip qtgamepad \
 -skip qtgraphicaleffects \
 -skip qtimageformats \
 -skip qtlocation \
 -skip qtlottie \
 -skip qtmacextras \
 -skip qtmultimedia \
 -skip qtnetworkauth \
 -skip qtpim \
 -skip qtpurchasing \
 -skip qtqa \
 -skip qtquickcontrols \
 -skip qtquickcontrols2 \
 -skip qtremoteobjects \
 -skip qtrepotools \
 -skip qtscript \
 -skip qtscxml \
 -skip qtsensors \
 -skip qtserialbus \
 -skip qtspeech \
 -skip qtsvg \
 -skip qtsystems \
 -skip qttools \
 -skip qttranslations \
 -skip qtvirtualkeyboard \
 -skip qtwayland \
 -skip qtwebchannel \
 -skip qtwebengine \
 -skip qtwebglplugin \
 -skip qtwebsockets \
 -skip qtwebview \
 -skip qtwinextras \
 -skip qtx11extras \
 -skip qtxmlpatterns

#--------------------------------------

make -j4
make install

#--------------------------------------

cd /usr/local
ln -s Qt-5.13.1 Qt

#--------------------------------------

cd /root
mcedit .bashrc

export QTDIR=/usr/local/Qt
export PATH=$QTDIR/bin:$PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$QTDIR/lib

#--------------------------------------
