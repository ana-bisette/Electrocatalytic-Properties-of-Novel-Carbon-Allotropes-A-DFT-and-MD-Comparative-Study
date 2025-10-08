#!/usr/bin/env python
# coding: utf-8

# In[29]:
from pymatgen.io.vasp.inputs import Poscar
from pymatgen.symmetry.analyzer import SpacegroupAnalyzer

def find_symmetric_sites(poscar_file):
    # Read POSCAR file
    poscar = Poscar.from_file(poscar_file)
    structure = poscar.structure
    
    # Get space group information
    sg_analyzer = SpacegroupAnalyzer(structure)
    sg = sg_analyzer.get_space_group_symbol()
    
    # Get symmetrically equivalent sites
    symm_sites = sg_analyzer.get_symmetrized_structure().equivalent_sites
    
    return symm_sites

# Example usage:
poscar_file = "POSCAR"  # Update with the path to your POSCAR file
symm_sites = find_symmetric_sites(poscar_file)

# Print out symmetrically equivalent sites
for i, equiv_site in enumerate(symm_sites):
    print(f"Site {i + 1}: {equiv_site}")

# In[ ]:




