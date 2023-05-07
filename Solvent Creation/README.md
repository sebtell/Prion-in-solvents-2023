# The solvent creation has been performed with the aid of **ACPYPE** and followed the steps outlined in the **GROMACS** ArchWiki:
https://wiki.archlinux.org/title/GROMACS#Use_a_non-water_solvent

>To use a non-water solvent with standard tools such as gmx pdb2gmx and gmx solvate do the following:

>1. Create one solvent molecule's structure file and topology.
>2. Create a box containing a couple hundred of the solvent molecules (216 seems to be a standard) and run a short equilibration on the system at standard conditions.
>3. Copy the output structure file .gro from the simulation to solvent.gro, where solvent is the name you wish to use for this molecule. Place this copy in the top level >force field directory (where each force field has its own directory).
>4. Modify the topology file for the single solvent by removing everything but the [moleculetype] section and name the molecule in the file as SOL.
>5. Rename the topology file as solvent.itp and move it to the force field directory to which it applies.
>6. Update watermodels.dat for the force field you wish to use with this solvent (located in the force field's directory), adding the solvent. You will simply add a line >with filename shortdescription longdescription where filename omits the file extension.

>Now when you run gmx pdb2gmx this solvent model should be available for the applicable force field. Additionally you can use -cs solvent when running gmx solvate."


# So in the general case: 
First convert a PDB file of your future solvent into files that can be read by GROMACS through the aid of ACPYPE. You must choose what force field you will use before creating your solvent. The notebook *pdb_to_gromacs_with_acpype.ipynb* creates files for multiple force fields, Amber being one of them.

Locate the files relevant to your force field and separate them from the rest. The important files are the .gro, .top, and posre.itp files. 
Now, as per any of the *_creation* notebooks, you will create a box of 300 molecules with the aid of the .gro file. You will also need a relevant topology file, which is created by editing the end of the .top file to include 300 molecules instead of one. The folders needed to run the *_creation* notebooks already include their relevant *300.top* file for ease of use.  

Perform the equilibration on the system (energy minimzation, temperature equilibration, pressure equilibration) and make sure that the density has reached the target value. If it hasn't, raise the length of the NPT step. It is the resulting *npt.gro* file that you will copy as per step 3 above. 
Do note that both the temperature and pressure equilibriation steps saves data very frequently to perform heat capacity calculations through the *gms dos* command. I would not recommended to save data this frequently during your actual protein simulation.

**It is important** that you save the [atomtypes] from the topology file somewhere else when performing step 4. You will need to paste them into your topology file during the actual protein simulation, otherwise the force field can't read the input from your new solvent. More on this in the *Prion-in-solvents-2023/Simulation* folder. 
The *end product* folders include the important files that you should possess after a successful solvent creation. 

