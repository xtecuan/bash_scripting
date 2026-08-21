#!/bin/bash

port=8080
rootdir=$HOME/public
bindAddress=0.0.0.0

jwebserver -d $rootdir -p  $port -b $bindAddress

