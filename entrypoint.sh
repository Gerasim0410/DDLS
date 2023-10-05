#!/bin/bash

# Activate the virtual environment
source yolact/bin/activate

# Hide warnings
export NPY_NO_DEPRECATED_API=NPY_1_7_API_VERSION
export PYTHONWARNINGS="ignore"

# Download weights
gdown 1rWsv0rMcPGldBNNlzuuvqDXMpMcKYR7O
unzip weights.zip

# Run evaluation
python eval.py --trained_model=weights/yolact_base_54_800000.pth --score_threshold=0.3 --top_k=100 --image=test_data/PennFudanPed/PNGImages/FudanPed00002.png:output/output_image.png

# Run test
python test.py
