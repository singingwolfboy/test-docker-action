#!/bin/sh
set -e
touch abc.deb abc-dbgsym.deb
filename=`ls *.deb | grep -v -dbgsym`
dbgsym=`ls *.deb | grep -dbgsym`
echo ::set-output name=filename::$filename
echo ::set-output name=filename-dbgsym::$dbgsym
