import os
import shutil
from ase import Atoms, io
from ase.calculators.espresso import Espresso, EspressoProfile
from ase.db import connect
from ase.io.espresso import write_espresso_in

pseudopotentials = {
    'C': 'C.pbe-n-kjpaw_psl.1.0.0.UPF',
    'O': 'O.pbe-n-kjpaw_psl.0.1.UPF',
    'H': 'H.pbe-rrkjus_psl.1.0.0.UPF',
}

parameters = {
    'calculation': 'relax',
    'restart_mode': 'from_scratch',
    'nstep': 1000,
    'tprnfor': True,
    'etot_conv_thr': 1.0e-4,
    'forc_conv_thr': 1.0e-3,
    'ecutwfc': 50,
    'ecutrho': 400,
    'nspin': 2,
    'tot_magnetization': 0, ## Personalizável
    'input_dft': 'pbe',
    'occupations': 'smearing',
    'degauss': 1.0e-4,
    'smearing': 'gaussian',
    'conv_thr': 1.0e-6,
    'mixing_mode': 'plain',
    'mixing_beta': 0.3,
    'electron_maxstep': 100,
    'scf_must_converge': False,
    'diagonalization': 'david',
    'ion_dynamics': 'bfgs',
    'bfgs_ndim': 1,
}

working_dir = os.getcwd()
input_file = os.path.join(working_dir, "POSCAR")
structure = io.read(input_file)
#structure = io.read(input_file, format="POSCAR")

profile = EspressoProfile(
    command='/opt/ohpc/pub/apps/quantum-espresso/q-e-qe-7.1/bin/pw.x',
    pseudo_dir='/home/ana.bisette/qe/SSSP/'
)

calc = Espresso(
    profile=profile,
    pseudopotentials=pseudopotentials,
    input_data=parameters,
    kpts=(2, 2, 1),
    offset=(0, 0, 0),
    directory='sim'
)

structure.calc = calc

#energy = structure.get_potential_energy()

db_path = os.path.join(working_dir, "results.db")
db = connect(db_path)

#sim_path = os.path.join(working_dir, "H_1")
sim_path = os.path.join(working_dir)
os.makedirs(sim_path, exist_ok=True)

input_file_path = os.path.join(sim_path, "input.pwi")
write_espresso_in(input_file_path, structure, input_data=parameters, pseudopotentials=pseudopotentials)

with open(input_file_path, 'r') as file:
    lines = file.readlines()

lines = [line for line in lines if not line.strip().startswith('starting_magnetization')]

with open(input_file_path, 'w') as file:
    file.writelines(lines)

slurm_script = f"""#!/bin/bash
#SBATCH --job-name=simulacao
#SBATCH --partition=medium
#SBATCH --output={sim_path}/simulacao.out
#SBATCH --error={sim_path}/erro.err
#SBATCH --time=96:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=16

module load quantum-espresso-7.1-gcc-9.4.0-22ybmei

mpirun -np pw.x -in input.pwi > output.pwo
"""

with open(os.path.join(sim_path, "submit.sh"), "w") as f:
    f.write(slurm_script)

os.system(f"cd {sim_path} && sbatch submit.sh")
