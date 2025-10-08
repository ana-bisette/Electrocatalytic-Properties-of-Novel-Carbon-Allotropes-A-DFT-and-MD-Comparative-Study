#!/bin/bash
#SBATCH --job-name=simulacao
#SBATCH --output=/home/ana.bisette/espresso/teste_calculators/0.559-19/O_specie/O_1/simulacao.out
#SBATCH --error=/home/ana.bisette/espresso/teste_calculators/0.559-19/O_specie/O_1/erro.err
#SBATCH --time=24:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=16

module load quantum-espresso-7.1-gcc-9.4.0-22ybmei

mpirun pw.x -in input.pwi > output.pwo
