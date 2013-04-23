#!/bin/bash

SRC_DIR=$1
DESC_DIR=$2

dirnames=`find $SRC_DIR -type d -print`
for dn in $dirnames ; do
  thema=`basename $dn`
cat << CSS > $DESC_DIR/$thema.css.less
@import "$thema/bootswatch";
@import "$thema/variables";
CSS
done
