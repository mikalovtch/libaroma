@ECHO OFF
cd ..\obj

echo Compiling HB-UCDN
%LIBAROMA_GCC% -c ^
  -save-temps -O2 ^
  -fdata-sections -ffunction-sections -Wl,--gc-sections ^
  -D_GLIBCXX_DEBUG_PEDANTIC -D_GLIBCXX_DEBUG ^
  -fPIC -DPIC -Wl,-s -Werror ^
 ^
  ../../../libs/harfbuzz-ng/src/hb-ucdn/ucdn.c ^
 ^
  -I../../../libs/harfbuzz-ng/src/hb-ucdn

cd ..\libs

if "%1"=="-f" GOTO DONE
pause
:DONE