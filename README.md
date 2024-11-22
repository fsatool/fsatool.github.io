# FSATOOL
![FSATOOL icon](https://github.com/fsatool/fsatool.github.io/blob/master/images/manual/1.jpg)

**FSATOOL** (short for "Fast Sampling and Analysis Tool") is a molecular dynamics simulation and trajectory data analysis program. It is developed by Chen, Changjun's group in Huazhong University of Science and Technology.

# Authors

* Associate Prof. **Chen, Changjun**
* **Meng, Fanjun** (doctoral student, 2023-present)
* **Gao, Junyong** (graduate student, 2022-present)
* **Wu, Mincong** (doctoral student, 2021-present)
* **Liao, Jun** (doctoral student, 2020-present)
* **Shu, Zirui** (graduate student, 2020-2023)
* **Zhang, Haozhe** (graduate student, 2018-2021)
* **Gong, Qiankun** (graduate student, 2017-2020)
* **Zhang, Haomiao** (doctoral student, 2016-2021)

# Software Functions

* Molecular dynamics simulation in implicit and explicit solvent (GB, PME, GPU acceleration) (Ref.2, Ref.3)
  ![(fig:pme)](https://github.com/fsatool/fsatool.github.io/blob/master/images/manual/pme.jpg)
* Collective variable calculation for MD trajectory (Ref.2)
  ![(fig:collective variable)](https://github.com/fsatool/fsatool.github.io/blob/master/images/manual/cv.jpg)
* Enhanced sampling in collective variable space and temperature space (SMD, REMD, ABMD) (Ref.1, Ref.2, Ref.3)
  ![(fig:enhanced sampling)](https://github.com/fsatool/fsatool.github.io/blob/master/images/manual/enhanced_sampling.jpg)
* Dimensionality reduction and free energy calculation (PCA, TICA, SRV, TAE; GMM, WHAM, MBAR) (Ref.1, Ref.2, Ref.3)
  ![(fig:free energy)](https://github.com/fsatool/fsatool.github.io/blob/master/images/manual/free_energy.png)
* Markov state model analysis and transition path calculation (Ref.1)
  ![(fig:msm)](https://github.com/fsatool/fsatool.github.io/blob/master/images/manual/msm.jpg)
* Electrostatic potential, solvation free energy and binding free energy calculation (MM-PBSA/GBSA, GPU acceleration) (Ref.4)
  ![(fig:mmpbsa)](https://github.com/fsatool/fsatool.github.io/blob/master/images/manual/mmpbsa.jpg)
* [Massive molecular structure clustering (one million)](https://github.com/fsatool/fsatool.github.io/wiki/Clustering) (K-medoids, GPU acceleration) (Ref.5)
  ![(fig:molecular clustering)](https://github.com/fsatool/fsatool.github.io/blob/master/images/manual/cluster.jpg)

# Download
[FSATOOL](https://github.com/fsatool/fsatool.github.io)

# Reference Manual
  FSATOOL reference manual is on the [web page](https://github.com/fsatool/fsatool.github.io/wiki).
  
# Software Installation
1. Download and Install NVIDIA HPC SDK (NVHPC, version 22.5) (https://developer.nvidia.com/nvidia-hpc-sdk-downloads).
2. Set up the NVHPC environment by the module file in the directory ${NVHPC_HOME}/modulefiles/nvhpc/ and ensure NVHPC's compilers (nvcc, nvfortran, mpicc, mpif90) are working properly.
3. Download the FSATOOL repository (git clone https://github.com/fsatool/fsatool.github.io).
4. Unzip the latest FSATOOL source code package and move into the directory.
5. Run 'make preparelib' to install NETCDF and FFTW libraries.
6. Run 'make' to compile FSATOOL source codes
7. Copy the generated executable file "fsatool" to any place you want to do the simulation or analysis work.

# Software Usage
```
Execute the command "mpirun -n nproc fsatool modname taskname -i inputfile"

   "nproc" is the number of processes in the calculation.
   "modname" specifies the module to run.
   "taskname"(optional) gives the task name in each module.
   "inputfile"(optional) is a user-defined input parameter file.

   All the available modname, taskname and default input files are listed as follows:

   modname=sim,                             inputfile=sim.in
   modname=msm,                             inputfile=msm.in
                       taskname=cluster     inputfile=cluster.in
                       taskname=lumping     inputfile=lumping.in
                       taskname=tpt         inputfile=tpt.in
                       taskname=check       inputfile=check.in
                       taskname=tram        inputfile=tram.in
                       taskname=picksnap    inputfile=picksnap.in
   modname=analysis,   taskname=wham,       inputfile=wham.in
                       taskname=gmm,        inputfile=gmm.in
                       taskname=freehis,    inputfile=freehis.in
                       taskname=contactmap, inputfile=contactmap.in
                       taskname=phi,        inputfile=phi.in
                       taskname=anm,        inputfile=anm.in
                       taskname=cv,         inputfile=cv.in
                       taskname=reducedim,  inputfile=reducedim.in
                       taskname=deep,       inputfile=deep.in
   modname=normalmode, taskname=anm         inputfile=anm.in
                       taskname=qha         inputfile=qha.in
                       taskname=nma         inputfile=nma.in
   modname=surfpb,                          inputfile=surfpb.in
```

# Publications
```
 [1] Haomiao Zhang, Qiankun Gong, Haozhe Zhang, and Changjun Chen                                  
     FSATOOL: A useful tool to do the conformational sampling and trajectory analysis work for biomolecules.                                               
     J. Comput. Chem. 2020, 41, 156-164
 [2] Zirui Shu, Mincong Wu, Jun Liao and Changjun Chen                                        
     FSATOOL 2.0: An integrated molecular dynamics simulation and trajectory data analysis program. 
     J. Comput. Chem. 2022. 43: 215-224
 [3] Mincong Wu, Jun Liao, Zirui Shu and Changjun Chen
     Enhanced sampling in explicit solvent by deep learning module in FSATOOL.
     J. Comput. Chem., 2023. 44: 1845-1856.   
 [4] Jun Liao, Zirui Shu, Junyong Gao, Mincong Wu and Changjun Chen
     SurfPB: A GPU-accelerated electrostatic calculation and visualization tool for biomolecules.
     J. Chem. Inf. Model, 2023. 63: 4490-4496.
 [5] Junyong Gao, Mincong Wu, Jun Liao, Fanjun Meng, Changjun Chen
     Clustering one million molecular structures on GPU within seconds.
     J. Comput. Chem. 2024, https://onlinelibrary.wiley.com/doi/10.1002/jcc.27470
```

# Acknowledgment

We gratefully acknowledge the support from the National Natural Science Foundation of China (NSFC).

# Contact Information

If you have any question, please contact **Chen, Changjun**
* Email: **cjchen@hust.edu.cn**
