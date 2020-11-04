#!/usr/bin/env bash
# ./problog_setup.sh [dir]
cd $1
if [ -e "${1}/problog" ];then
    echo "Already installed"
    exit 0
fi

source ~/anaconda3/etc/profile.d/conda.sh
conda create -n problog -y
git clone https://github.com/jselvam11/problog.git
cd problog
git checkout seed-swap
conda activate problog
conda install -y pip pytest
pip install problog
conda deactivate
cd -
