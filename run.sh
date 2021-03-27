#!/bin/bash
#SBATCH -N 1
#SBATCH -c 1
#SBATCH --gres=gpu
#SBATCH -p res-gpu-small
#SBATCH --qos=debug
#SBATCH --job-name=AdaBins
source /etc/profile
source ~/anaconda3/etc/profile.d/conda.sh
conda activate base
# python eval.py
python evaluate.py args_test_kitti_eigen.txt 

echo "==> Done."