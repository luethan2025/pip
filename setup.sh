#!/bin/sh

conda init
conda activate base

python3 -m pip install --upgrade pip

pip3 install datasets
pip3 install torch torchvision --index-url https://download.pytorch.org/whl/cu128
