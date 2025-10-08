#!/bin/bash

energies="energies.csv"

echo "Structure,Specie,Site,Energy (eV)" > "$energies"

for structure in "0.477-43" "0.524-34" "0.559-19" "0.604-50" "0.728-42" "0.766-41" "0.797-320" "0.900-3" ; do
    for specie in H OH OOH O; do
        for site in {1..24}; do
            dir="/home/ana.bisette/espresso/calculators/estruturas/$structure/$specie/${specie}_${site}"
            file="$dir/output.pwo"

	    # Operador de teste
            if [ -f "$file" ] ; then
                line=$(grep "Final energy" "$file")

		# Operador de teste
                if [ -n "$line" ] ; then
                    energy_ry=$(echo "$line" | grep -oP "=\s*(-?\d+\.\d+)")
                    energy_ry=${energy_ry#*=}
                    energy_ry=$(echo $energy_ry | xargs)

                    energy_ev=$(awk "BEGIN {printf \"%.6f\", $energy_ry * 13.605693}")

                    echo "$structure,$specie,${specie}_$site,$energy_ev" >> "$energies"
                else
                    echo "$structure,$specie,${specie}_$site,?" >> "$energies"
                fi
            fi
        done
    done
done
