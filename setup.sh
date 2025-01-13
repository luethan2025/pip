#!/bin/sh

clear_cache=false # delete cache

for arg in "$@"; do
  case $arg in
    --clear_cache)
      clear_cache=true
      shift
      ;;
    --help)
      echo "Usage: $0 [--clear_cache]"
      exit 0
      ;;
    *)
      echo "Unknown option: $arg"
      echo "Use --help for usage."
      exit 1
      ;;
  esac
done

if [ "$clear_cache" = true ]; then
  if [[ "$(uname -s)" == "Darwin" ]]; then
    echo "rm -rf ~/Library/Caches/pip"
    rm -rf ~/Library/Caches/pip
  else
    echo "Could not remove cache for non-macOS device"
    echo "Skipping..."
  fi
fi

python3 -m pip install --upgrade pip
pip3 freeze | grep -v -E 'setuptools|pip' | xargs pip3 uninstall -y
python3 -m ensurepip

pip3 install numpy
pip3 install torch torchvision
pip3 install transformers
pip3 install scikit-learn
pip3 install scipy
pip3 install matplotlib
pip3 install opencv-python
pip3 install ipykernel
pip3 install nltk
