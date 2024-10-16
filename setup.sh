#!/bin/sh

python3 -m pip install --upgrade pip
pip3 freeze | grep -v -E 'setuptools|pip' | xargs pip3 uninstall -y
python3 -m ensurepip
