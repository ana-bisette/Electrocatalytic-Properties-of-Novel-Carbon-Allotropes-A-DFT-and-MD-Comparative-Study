#!/bin/bash
#SBATCH --job-name=simulacao
#SBATCH --output=/home/ana.bisette/espresso/teste_calculators/0.559-19/H_specie/H_4/simulacao.out
#SBATCH --error=/home/ana.bisette/espresso/teste_calculators/0.559-19/H_specie/H_4/erro.err
#SBATCH --time=02:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=16

module load quantum-espresso-7.1-gcc-9.4.0-22ybmei

mpirun pw.x -in input.pwi > output.pwo
