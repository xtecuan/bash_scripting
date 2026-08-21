#!/bin/bash

port=8081
bindAdd=0.0.0.0

python3 -m http.server $port --bind $bindAdd
