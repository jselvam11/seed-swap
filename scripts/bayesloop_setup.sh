#!/usr/bin/env bash
# ./bayesloop_setup.sh [dir]
cd $1
if [ -e "${1}/bayesloop" ];then
    echo "Already installed"
    exit 0
fi

source ~/anaconda3/etc/profile.d/conda.sh
conda create -n bayesloop python=3.6 -y
git clone https://github.com/jselvam11/bayesloop.git bayesloop
cd bayeloop
git checkout seed-swap
conda activate bayesloop
conda install -y pip pytest
python setup.py install
conda deactivate
cd -
