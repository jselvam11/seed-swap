#!/usr/bin/env bash
# ./bayeslite_setup.sh [dir]

cd $1
if [ -e "${1}/bayeslite" ];then
    echo "Already installed"
    exit 0
fi

source ~/anaconda3/etc/profile.d/conda.sh
conda create -n bayeslite python=3.6 -y
git clone https://github.com/jselvam11/bayeslite.git bayeslite
cd bayelite
git checkout seed-swap
conda activate bayeslite
conda install -y pip pytest
python setup.py install
conda deactivate
cd -
