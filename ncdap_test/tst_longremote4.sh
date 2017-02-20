#!/bin/sh

# if this is part of a distcheck action, then this script
# will be executed in a different directory
# than the one containing it; so capture the path to this script
# as the location of the source directory.

if test "x$topsrcdir" != x ; then
  srcdir="$topsrcdir/ncdap_test"
else
  srcdir=`dirname $0`
fi

cd $srcdir
srcdir=`pwd`
# compute the build directory
builddir=`pwd`/..
# Hack for CYGWIN
if [ `uname | cut -d "_" -f 1` = "MINGW32" ]; then
    srcdir=`pwd | sed 's/\/c\//c:\//g'`
    builddir="$srcdir"/..
fi
cd ${builddir}/ncdap_test

sh ${srcdir}/tst_remote.sh "$srcdir" "$builddir" "4" "" "long"
exit