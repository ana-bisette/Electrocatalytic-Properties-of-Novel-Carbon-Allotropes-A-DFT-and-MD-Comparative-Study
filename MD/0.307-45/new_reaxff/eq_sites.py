#!/usr/bin/env python
# coding: utf-8

# In[29]:


import pymatgen.core

from pymatgen.io.vasp import Poscar
poscar = Poscar.from_file("POSCAR")
structure = poscar.structure

#from pymatgen.transformations.standard_transformations import SubstitutionTransformation
#substitution_dict = {"H": "C"}
#transformation = SubstitutionTransformation(substitution_dict)
#new_structure = transformation.apply_transformation(structure)

from pymatgen.symmetry.analyzer import SpacegroupAnalyzer

symm_analyzer = SpacegroupAnalyzer(structure)

symmetrized_structure = symm_analyzer.get_symmetrized_structure()
symmetric_sites = symmetrized_structure.equivalent_sites

for equiv_sites in symmetric_sites:
    print("Symmetrically equivalent sites:")
    for site in equiv_sites:
        print(site)
