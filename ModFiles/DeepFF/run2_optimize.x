mpiexec -np 1 fsatool sim -i ./run2_optimize.x -pdb ./molecule.pdb

mv procinfo/restart_0.rst .
rm -r procinfo

exitcode=$?
exit $exitcode

&sim
  deepmode=2, imin=1, icuda=1, optmaxstep=60, optsdpstep=30, printcvstep=10, drms=0.00001, iseed=123
/

&gnn
  networkfile = "network_1l_256emb_aspirin.txt"
  molnames = "molecule"
/
