#!/bin/sh

python3 -m pip install --upgrade pip
pip3 freeze | grep -v -E 'setuptools|pip' | xargs pip3 uninstall -y
python3 -m ensurepip

pip3 install numpy
pip3 install torch
pip3 install scikit-learn
pip3 install scipy
pip3 install matplotlib
