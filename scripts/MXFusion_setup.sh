#!/usr/bin/env bash
# ./MXFusion_setup.sh [dir]

cd $1
if [ -e "${1}/MXFusion" ];then
    echo "Already installed"
    exit 0
fi

source ~/anaconda3/etc/profile.d/conda.sh
conda create -n MXFusion python=3.7 -y
git clone https://github.com/jselvam11/MXFusion.git MXFusion
cd MXFusion
git checkout seed-swap
conda activate MXFusion
conda install -y pip pytest
pip install .
conda deactivate
cd -
