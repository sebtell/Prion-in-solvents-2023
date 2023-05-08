The four notebooks above perform analysis on their relevant prion protein solvent simulation, and saves figures in the *results* folder. All *!gmx* commands used and the explanation of their purpose can be found in the [GROMACS manual](https://manual.gromacs.org/current/user-guide/cmdline.html). 
If you wish to use these commands directly in a terminal then do mind the **print** prompts. Many gmx commands require further input and this is a workaround for performing the simulation in a jupyter notebook format.

# The analyses performed are, in order of appearance:
1 Root Mean Square Deviation (gmx rms)

2 Radius of Gyration (gmx gyrate)

3 Root Mean Square Fluctuation (gmx rmsf)

4 Mean Square Displacement (gmx msd)

5 Solvent Accessible Surface Area (gmx sasa)

# Explanation for cutoffs used for Root Mean Square Fluctuation and Solvent Accessible Surface Area
You may notice that these commands are performed on a subset of the time interval of 1 ns. This subset corresponds to what has been estimated as the interval when the protein has finally stabilized, which has been marked with a green color in the RMSD graph. With any other simulation data you should make sure that you have an appropriate subset.  
