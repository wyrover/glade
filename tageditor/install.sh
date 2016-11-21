#!/bin/dash -e
[ -d /tmp/tageditor ] ||
git clone git://github.com/Martchus/tageditor /tmp/tageditor
cd /tmp/tageditor
cmake -DCMAKE_C_COMPILER=x86_64-w64-mingw32-gcc \
-DCMAKE_CXX_COMPILER=x86_64-w64-mingw32-g++ \
-DCMAKE_RC_COMPILER_INIT=x86_64-w64-mingw32-windres \
-DCMAKE_FIND_ROOT_PATH=/usr/x86_64-w64-mingw32/sys-root/mingw \
-DWIDGETS_GUI=OFF
make --jobs=4
