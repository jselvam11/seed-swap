#!/usr/bin/env bash
# ./zhusuan_setup.sh [dir]
cd $1
if [ -e "${1}/zhusuan" ];then
    echo "Already installed"
    exit 0
fi

source ~/anaconda3/etc/profile.d/conda.sh
conda create -n zhusuan -y
git clone https://github.com/uiuc-arc/zhusuan.git
cd zhusuan
git checkout seed-swap
conda activate zhusuan
conda install -y pip pytest
pip install .
pip install ".[examples]"
conda deactivate
cd -
