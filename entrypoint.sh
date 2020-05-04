#!/bin/sh
set -e
touch abc.deb abc-dbgsym.deb
packages=`ls *.deb`
echo ::set-output name=filename::`echo \$packages | grep -v dbgsym`
echo ::set-output name=filename-dbgsym::`echo \$packages | grep dbgsym`
