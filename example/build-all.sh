#!/bin/bash

MODNAME=simple

set -e

rm -rf venv/ build/ dist/ src/$MODNAME/simple.py src/ext/simple_wrap.c

swig -outdir src/$MODNAME/ -python -py3 -relativeimport src/ext/simple.i

python3 -m venv venv
. venv/bin/activate
pip install wheel

python setup.py build_ext
python setup.py bdist_wheel

pip install dist/$MODNAME*.whl

python -i showcase.py
