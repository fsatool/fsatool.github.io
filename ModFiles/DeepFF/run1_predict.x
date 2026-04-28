mpiexec -np 1 fsatool analysis deep  -i run1_predict.x
exit $?

&deep
  task = "gnnpredict"
  icudagroup = 1
/

&gnn
  networkfile = "network_1l_256emb_aspirin.txt"
  molnames = "molecule"

  batchsize = 1
  lossfunction = "mae"
  ifbuildedgeatruntime = .true.
/

