# Electrocatalytic Properties of Novel Carbon Allotropes  
### Undergraduate Research Project – UFABC (2023–2025)

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
    - Includes Quantum ESPRESSO (QE) input files, output logs, and Pseudopotentials.
    - **Note:** Contains auxiliary scripts and experimental workflows used for energy extraction and convergence tests.
- `MD/` – Data related to Molecular Dynamics simulations.
    - Contains LAMMPS input scripts, data files (structures), and trajectory outputs (ReaxFF CHO/CHOFe).
    - **Note:** Includes various experimental scripts for thermalization and reactive run adjustments.
- `SACADA_files/` – Files processed through the **SACADA** framework.
    - Structural classification and symmetry-unique site identification.
    - **Note:** Includes auxiliary scripts for data parsing and site mapping.
- `Graphs/` – Visual representations of the results.
    - Scaling relation plots, volcano plots, and energy profiles.

---

## Technologies & Tools

- **Computational Engines:** Quantum ESPRESSO (DFT), LAMMPS (MD).
- **Potentials:** ReaxFF (CHO & CHOFe).
- **Languages:** Python, Bash.
- **Analysis:** Pandas, Matplotlib, Gnuplot.
- **Visualization:** VMD (Visual Molecular Dynamics).

---

## Conceptual Representation

<div align="center">
  <img src="https://github.com/user-attachments/assets/271a65fb-2b35-42d0-8f94-1b6b42af7cc1" alt="Diagram" width="700">
  <p><em>Simplified representation of the electrochemical system investigated in this study.</em></p>
</div>

Simplified representation of the electrochemical system investigated in this study.



---

## Key Results (Summary)

The project successfully mapped the catalytic activity of 2D carbon allotropes, identifying that while MD provides a fast qualitative overview, DFT remains essential for precise electronic descriptions. The developed scripts allowed for the automated treatment of over 20+ non-equivalent sites per structure.

---

## Academic Context

- **Student:** Ana Júlia Bisette Furquim
- **Advisors:** Dra. Lanna Emilli Barbosa Lucchetti & Prof. Dr. Pedro Alves da Silva Autreto
- **Institution:** Federal University of ABC (UFABC)
- **Group:** GEEDAI (Interdisciplinary Group of Electronic Structure and Atomistic Dynamics)
- **Funding:** CNPq
