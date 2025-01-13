#!/bin/bash

python3 setup.py develop --user
mkdir -p data
python3 -m nanoowl.build_image_encoder_engine data/owl_image_encoder_patch32.engine
cd examples/tree_demo
python3 tree_demo.py ../../data/owl_image_encoder_patch32.engine