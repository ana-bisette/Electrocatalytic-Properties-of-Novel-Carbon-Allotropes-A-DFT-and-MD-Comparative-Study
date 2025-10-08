#!/bin/bash
#SBATCH --job-name=simulacao
#SBATCH --partition=medium
#SBATCH --output=/home/ana.bisette/espresso/calculators/estruturas/0.477-43/OH/OH_1/simulacao.out
#SBATCH --error=/home/ana.bisette/espresso/calculators/estruturas/0.477-43/OH/OH_1/erro.err
#SBATCH --time=96:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=16

module load quantum-espresso-7.1-gcc-9.4.0-22ybmei

mpirun pw.x -in input.pwi > output.pwo
