#!/bin/bash

energies="energies.csv"

echo "Estrutura;Espécie;Sítio;Energia (eV)" > "$energies"

for structure in "0.307-45" "0.431-44" "0.477-43" "0.524-34" "0.559-19" "0.604-50" "0.728-42" "0.766-41" "0.797-320" "0.900-3" "0.960-258" "0.971-168"; do
    for specie in H OH OOH O; do
        for site in {1..24}; do
            dir="/home/ana.bisette/MD/newReaxFF_adsorption/$structure/${specie}_specie/${specie}_${site}"
            file="$dir/log.lammps"

            if [ -f "$file" ]; then
                last_line=$(grep -A 1 "Energy initial, next-to-last, final =" "$file" | tail -n 1)

                if [ -n "$last_line" ]; then
                    energy_kcal=$(echo "$last_line" | awk '{print $3}')

                    energy_ev=$(awk "BEGIN {printf \"%.6f\", $energy_kcal * 0.0433641}")

                    echo "$structure;$specie;${specie}_$site;$energy_ev" >> "$energies"
                else
                    echo "$structure;$specie;${specie}_$site;?" >> "$energies"
                fi
            fi
        done
    done
done

