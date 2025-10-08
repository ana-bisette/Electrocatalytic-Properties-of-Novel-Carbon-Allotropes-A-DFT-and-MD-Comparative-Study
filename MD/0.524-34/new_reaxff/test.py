#!/usr/bin/env python
# coding: utf-8

# In[29]:
from pymatgen.io.vasp.inputs import Poscar
from pymatgen.symmetry.analyzer import SpacegroupAnalyzer

def write_symmetric_sites(poscar_file, output_file):
    # Read POSCAR file
    poscar = Poscar.from_file(poscar_file)
    structure = poscar.structure
    
    # Get space group information
    sg_analyzer = SpacegroupAnalyzer(structure)
    sg = sg_analyzer.get_space_group_symbol()
    
    # Get symmetrically equivalent sites
    symm_sites = sg_analyzer.get_symmetrized_structure().equivalent_sites
    
    # Write symmetrically equivalent sites to output file
    with open(output_file, 'w') as f:
        for i, equiv_site in enumerate(symm_sites):
            f.write(f"Equivalent Group {i + 1}:\n")
            for site in equiv_site:
                f.write(f"{site}\n")
            f.write("\n")

# Example usage:
poscar_file = "POSCAR"  # Update with the path to your POSCAR file
output_file = "test.txt"  # Output file name
write_symmetric_sites(poscar_file, output_file)

# In[ ]:




