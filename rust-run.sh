#!/bin/sh

set -e

sourcefile=$(basename $1)
sourcename="${sourcefile%.*}"

rustc $1 -o $(dirname $1)/$sourcename

cd $(dirname $1)
./$sourcename