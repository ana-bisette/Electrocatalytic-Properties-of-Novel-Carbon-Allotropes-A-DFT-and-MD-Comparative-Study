#!/bin/bash

# 14 estruturas - adsorption

for i in "0.307-45" "0.431-44" "0.477-43" "0.493-290" "0.524-34" "0.559-19" "0.604-50" "0.728-42" "0.766-41" "0.797-320" "0.900-3" "0.960-258" "0.966-303" "0.971-168"; do
    estruturas="/home/ana/jobs/adsorption/$i"
    
    # Verifica se o diretório existe antes de tentar acessá-lo
    if [ -d "$estruturas" ]; then
        cd "$estruturas" || { echo "Failed to enter directory $estruturas"; continue; }
        pwd  # Imprime o diretório atual para verificação

        for j in "H_specie" "O_specie" "OH_specie" "OOH_specie"; do
            species="$estruturas/$j"
            
            # Verifica se o diretório da espécie existe
            if [ -d "$species" ]; then
                cd "$species" || { echo "Failed to enter directory $species"; continue; }
                pwd  # Imprime o diretório atual para verificação
                # Aqui você pode adicionar os comandos que deseja executar dentro do diretório
            else
                echo "Directory does not exist: $species"
            fi
        done
    else
        echo "Directory does not exist: $estruturas"
    fi
done
