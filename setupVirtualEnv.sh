#!/bin/bash

rm -r VirtualEnv
python3 -m venv VirtualEnv
source VirtualEnv/bin/activate
pip install --upgrade pip
source $which pip
pip install sphinx sphinxcontrib-packages sphinxcontrib-httpdomain
deactivate
