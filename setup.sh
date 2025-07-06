#!/bin/sh

echo "y" |  python -m pip uninstall stumpy
rm -rf stumpy.egg-info build dist __pycache__
export NUMBA_DISABLE_JIT=1
export NUMBA_ENABLE_CUDASIM=1
python -m pip install .
# rm -rf stumpy.egg-info build dist __pycache__
