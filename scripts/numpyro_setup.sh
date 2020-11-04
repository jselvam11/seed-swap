#!/usr/bin/env bash
# ./numpyro_setup.sh [dir]
cd $1
if [ -e "${1}/numpyro" ];then
    echo "Already installed"
    exit 0
fi

source ~/anaconda3/etc/profile.d/conda.sh
conda create -n numpyro -y
git clone https://github.com/jselvam11/numpyro.git
cd numpyro
git checkout seed-swap
conda activate numpyro
conda install -y pip pytest
pip install -e .[dev]
conda deactivate
cd -
