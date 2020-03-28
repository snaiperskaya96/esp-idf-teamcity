#!/bin/bash

source ~/.profile
cd /tmp/code
idf.py build
chmod 777 -R build