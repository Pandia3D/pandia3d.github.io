#!/bin/bash

source VirtualEnv/bin/activate
make html
rm -r docs/
mkdir -p docs/
cp -a build/html/. docs/
touch docs/.nojekyll
deactivate
