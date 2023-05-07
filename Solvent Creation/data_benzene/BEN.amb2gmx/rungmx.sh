
echo 0 | gmx editconf -f BEN_GMX.gro -bt octahedron -d 1 -c -princ
gmx grompp -f em.mdp -c out.gro -p BEN_GMX.top -o em.tpr -v
gmx mdrun -ntmpi 1 -v -deffnm em
gmx grompp -f md.mdp -c em.gro -p BEN_GMX.top -o md.tpr -r em.gro
gmx mdrun -ntmpi 1 -v -deffnm md