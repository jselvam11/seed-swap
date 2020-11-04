#!/usr/bin/env bash
# ./lightwood_setup.sh [dir]

cd $1
if [ -e "${1}/lightwood" ];then
    echo "Already installed"
    exit 0
fi

source ~/anaconda3/etc/profile.d/conda.sh
conda create -n lightwood python=3.6 -y
git clone https://github.com/jselvam11/lightwood.git lightwood
cd lightwood
git checkout seed-swap
conda activate lightwood
conda install -y pip pytest
pip3 install lightwood
conda deactivate
cd -
