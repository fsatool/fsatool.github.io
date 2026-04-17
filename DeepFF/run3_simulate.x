mpiexec -np 1 fsatool sim -i ./run3_simulate.x -pdb molecule.pdb -r restart_0.rst

exit $?

&sim
  deepmode=2, icuda=1, lagfreq=0.0, maxstep=60, printcvstep=10, savetrajstep=20, deltatime=0.001, kelvin0=300.0, iseed=0, ishake=0
/

&gnn
  networkfile = "network_1l_256emb_aspirin.txt"
  molnames = "molecule"
/
