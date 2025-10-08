#!/bin/bash

estrutura="0.559-19"
base="/home/ana.bisette/MD/oldReaxFF_adsorption/$estrutura"
sitios=8
cd $base

#H_species
for i in $(seq 1 $sitios); do
    pasta="$base/H_specie/H_$i"
    input="/home/ana.bisette/MD/newReaxFF_adsorption/$estrutura/H_specie/H_$i/H_$i.lmp"
    mkdir $pasta    
    cp -r  /home/ana.bisette/MD/oldReaxFF_adsorption/H_template/. $pasta/
    cp $input $pasta/
    sed -i "s/^read_data.*/read_data       H_$i.lmp/" "$pasta/input"
    cd $pasta
    sbatch job
done

cd $base

#OH_specie
for i in $(seq 1 $sitios); do
    pasta="$base/OH_specie/OH_$i"
    input="/home/ana.bisette/MD/newReaxFF_adsorption/$estrutura/OH_specie/OH_$i/OH_$i.lmp"
    mkdir $pasta
    cp -r /home/ana.bisette/MD/oldReaxFF_adsorption/OH_template/. $pasta/
    cp $input $pasta/
    sed -i "s/^read_data.*/read_data       OH_$i.lmp/" "$pasta/input"
    cd $pasta
    sbatch job
done

cd $base

#O_specie
for i in $(seq 1 $sitios); do
    pasta="$base/O_specie/O_$i"
    input="/home/ana.bisette/MD/newReaxFF_adsorption/$estrutura/O_specie/O_$i/O_$i.lmp"
    mkdir $pasta
    cp -r /home/ana.bisette/MD/oldReaxFF_adsorption/O_template/. $pasta/
    cp $input $pasta/
    sed -i "s/^read_data.*/read_data       O_$i.lmp/" "$pasta/input"
    cd $pasta
    sbatch job
done

cd $base

#OOH_specie
for i in $(seq 1 $sitios); do
    pasta="$base/OOH_specie/OOH_$i"
    input="/home/ana.bisette/MD/newReaxFF_adsorption/$estrutura/OOH_specie/OOH_$i/OOH_$i.lmp"
    mkdir $pasta
    cp -r /home/ana.bisette/MD/oldReaxFF_adsorption/OOH_template/. $pasta/
    cp $input $pasta/
    sed -i "s/^read_data.*/read_data       OOH_$i.lmp/" "$pasta/input"
    cd $pasta
    sbatch job
done
