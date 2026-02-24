# Electrocatalytic Properties of Novel Carbon Allotropes  
### Scientific Initiation Project – UFABC (2023–2025)

## Overview

This repository contains scripts and data processing workflows developed during a Scientific Initiation project at the Federal University of ABC (UFABC).

The research focused on investigating the electrocatalytic properties of novel carbon allotropes (specifically **Penta-graphene** and **Biphenylene**) through computational modeling. The study performed a systematic investigation comparing the accuracy of **Reactive Force Field Molecular Dynamics (ReaxFF-MD)** and **Density Functional Theory (DFT)** in describing catalytic processes for clean energy applications.

---

## Project Scope

- **Comparative Analysis:** Evaluating the viability and accuracy of Molecular Dynamics (MD) with reactive fields versus DFT (Gold Standard) for carbon-based catalysts.
- **Electrochemical Reactions:** Study of Hydrogen Evolution/Oxidation (HER/HOR) and Oxygen Evolution/Reduction (OER/ORR) mechanisms.
- **Surface Interaction:** Analysis of adsorption energies ($\Delta G_{ads}$) for intermediates like H*, O*, OH*, and OOH*.
- **Automation:** Development of workflows for high-throughput identification of non-equivalent catalytic sites.

---

## Repository Structure

- `DFT/` – Data related to Density Functional Theory simulations.
    - Includes Quantum ESPRESSO (QE) input files, output logs, and Pseudopotentials used.
    - Energy extraction scripts and final converged structures.
- `MD/` – Data related to Molecular Dynamics simulations.
    - Contains LAMMPS input scripts, data files (structures), and trajectory outputs.
    - Comparative data using two different ReaxFF potentials (CHO and CHOFe).
- `SACADA_files/` – Files processed through the **SACADA** (Symmetry-Adapted Carbon Allotrope Database Analyzer) framework.
    - Used for identifying symmetry-unique adsorption sites and structural classification.
- `Graphs/` – Visual representations of the results.
    - Scaling relation plots, volcano plots, and energy profiles mentioned in the final report.

---

## Technologies & Tools

- **Computational Engines:** Quantum ESPRESSO (DFT), LAMMPS (MD).
- **Potentials:** ReaxFF (CHO & CHOFe).
- **Languages:** Python, Bash.
- **Analysis:** Pandas, Matplotlib, Gnuplot.
- **Visualization:** VMD (Visual Molecular Dynamics).

---

## Key Results (Summary)

The project successfully mapped the catalytic activity of 2D carbon allotropes, identifying that while MD provides a fast qualitative overview, DFT remains essential for precise electronic descriptions of active sites. The developed scripts allowed for the automated treatment of over 20+ non-equivalent sites per structure.

---

## Academic Context

- **Student:** Ana Júlia Bisette Furquim
- **Advisors:** Dra. Lanna Emilli Barbosa Lucchetti & Prof. Dr. Pedro Alves da Silva Autreto
- **Institution:** Federal University of ABC (UFABC)
- **Group:** GEEDAI (Interdisciplinary Group of Electronic Structure and Atomistic Dynamics)
- **Funding:** UFABC, CNPq
