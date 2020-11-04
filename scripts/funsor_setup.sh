#!/usr/bin/env bash
# ./funsor_setup.sh [dir]

cd $1
if [ -e "${1}/funsor" ];then
    echo "Already installed"
    exit 0
fi
source ~/anaconda3/etc/profile.d/conda.sh
conda create -n funsor python=3.6 -y
git clone https://github.com/jselvam11/funsor.git funsor
cd funsor
git checkout seed-swap
conda activate funsor
conda install -y pip pytest
pip install .
conda deactivate
cd -
