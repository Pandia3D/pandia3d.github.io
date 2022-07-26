#!/bin/bash

source VirtualEnv/bin/activate
make html
cp -a build/html/. docs/
deactivate
