The four notebooks above perform a 1 nanosecond protein simulation run of the human prion protein in their respective solvent after a short equilibration. All !gmx commands used and the explanation of their purpose can be found in the [GROMACS manual](https://manual.gromacs.org/current/user-guide/cmdline.html). 
If you wish to use these commands directly in a terminal then do mind the **print** prompts. Many gmx commands require further input and this is a workaround for performing the simulation in a jupyter notebook format.

# If you want to run these simulations
You need to have inserted the relevant .gro and .itp files for each non-water solvent into your GROMACS top level force field directory and updated the *watermodels.dat* file as per the steps outlined [here](https://wiki.archlinux.org/title/GROMACS#Use_a_non-water_solvent). The requisite files can be found in their relevant *Prion-in-solvents-2023/Solvent Creation/data_molecule/end product* folder. 
You will need to manually edit the system topology file for the non-water simulations at certain times, as outlined in the notebook. These events are preceded by a **stop.** prompt which raises an error so that you will not miss them.  

The exception to the above is the water simulation. It can be run with a fresh install of GROMACS (version 2023) and requires no manual editing. 
