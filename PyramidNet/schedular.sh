#!/bin/bash
#SBATCH --partition=dcs
#SBATCH --job-name=test
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --ntasks-per-node=1
#SBATCH --time=1:00:00
#SBATCH --mem-per-cpu=23000
# mention number of GPU here
#SBATCH --gres=gpu:4
#SBATCH -o joboutput.%J

#%Module load python3
# single GPU
# python train.py

# multiple GPUs
python train.py --gpu_devices 0 1 2 3 --batch_size 768