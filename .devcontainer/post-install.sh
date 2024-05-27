#!/bin/sh

# Install poetry deps:
conda init
source ~/.bashrc
conda activate cadquery
poetry install # --with dev
