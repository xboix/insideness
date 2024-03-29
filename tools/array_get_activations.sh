#!/bin/bash
#SBATCH -n 2
#SBATCH --array=2-3
#SBATCH --job-name=insideness
#SBATCH --mem=30GB
#SBATCH --gres=gpu:titan-x:1
#SBATCH -t 5:00:00
#SBATCH --qos=cbmm
#SBATCH --workdir=./log/

cd /om/user/xboix/src/insideness/

/om2/user/jakubk/miniconda3/envs/torch/bin/python -c 'import torch; print(torch.rand(2,3).cuda())'

singularity exec -B /om:/om --nv /om/user/xboix/singularity/xboix-tensorflow.simg \
python /om/user/xboix/src/insideness/main.py \
--experiment_index=${SLURM_ARRAY_TASK_ID} \
--host_filesystem=om \
--network=multi_lstm \
--run=extract_activations
