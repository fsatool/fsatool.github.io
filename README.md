# FSATOOL
![FSATOOL icon](https://github.com/fsatool/fsatool.github.io/blob/master/images/manual/1.jpg)

FSATOOL (short for "Fast Sampling and Analysis Tool") is a molecular dynamics simulation and trajectory data analysis program. It is developed by Chen, Changjun's group in Huazhong University of Science and Technology.

# Authors

* Associate Prof. **Chen, Changjun**
* **Gao, Junyong** (graduate student, 2022-present)
* **Wu, Mincong** (doctoral student, 2021-present)
* **Liao, Jun** (doctoral student, 2020-present)
* **Shu, Zirui** (graduate student, 2020-2023)
* **Zhang, Haomiao** (doctoral student, 2016-2021)
* **Zhang, Haozhe** (graduate student, 2018-2021)
* **Gong, Qiankun** (graduate student, 2017-2020)

# Software Functions

* GPU-accelerated molecular dynamics simulation
* Enhanced sampling in collective variable space and temperature space
* Markov state model analysis
* Free energy calculation
* Electrostatic and binding free energy calculation
  
# Software Installation

1. Install NVIDIA HPC SDK (https://developer.nvidia.com/nvidia-hpc-sdk-downloads).
2. Compile NetCDF-Fortran and FFTW source codes by the nvfortran compiler.
   NetCDF (https://www.unidata.ucar.edu/software/netcdf/)
   FFTW (http://fftw.org/)
3. Set the environment variables NETCDFDIR and FFTWDIR to their root path.
4. Download and unzip the FSATOOL source code package.
5. Change to FSATOOL's root path and compile the source codes by the command "make".
6. Copy the generated executable file "fsatool" to any place you want to do the simulation or analysis work.


# Software Usage
```
Execute the command "mpirun -n nproc fsatool modname taskname -i inputfile"

   "nproc" is the number of processes in the calculation.
   "modname" specifies the module to run.
   "taskname"(optional) gives the task name in each module.
   "inputfile"(optional) is a user-defined input parameter file.

   All the available modname, taskname and default input files are listed as follows:

   modname=sim,                           inputfile=sim.in
   modname=msm,                           inputfile=msm.in
                     taskname=cluster     inputfile=cluster.in
                     taskname=lumping     inputfile=lumping.in
                     taskname=tpt         inputfile=tpt.in
                     taskname=check       inputfile=check.in
                     taskname=tram        inputfile=tram.in
                     taskname=picksnap    inputfile=picksnap.in
   modname=analysis, taskname=wham,       inputfile=wham.in
                     taskname=gmm,        inputfile=gmm.in
                     taskname=freehis,    inputfile=freehis.in
                     taskname=contactmap, inputfile=contactmap.in
                     taskname=phi,        inputfile=phi.in
                     taskname=anm,        inputfile=anm.in
                     taskname=cv,         inputfile=cv.in
                     taskname=reducedim,  inputfile=reducedim.in
                     taskname=deep,       inputfile=deep.in
```

# Publications
```
 [1] Mincong Wu, Jun Liao, Zirui Shu and Changjun Chen
     Enhanced sampling in explicit solvent by deep learning module in FSATOOL.
     J. Comput. Chem., 2023. 44: 1845-1856.
 [2] Jun Liao, Zirui Shu, Junyong Gao, Mincong Wu and Changjun Chen
     SurfPB: A GPU-accelerated electrostatic calculation and visualization tool for biomolecules.
     J. Chem. Inf. Model, 2023. 63: 4490-4496.
 [3] Zirui Shu, Mincong Wu, Jun Liao and Changjun Chen*                                           
     FSATOOL 2.0: An integrated molecular dynamics simulation and trajectory data analysis program. 
     J. Comput. Chem. 2022. 43: 215-224                                                             
 [4] Haomiao Zhang, Qiankun Gong, Haozhe Zhang, and Changjun Chen*                                  
     FSATOOL: A useful tool to do the conformational sampling and trajectory analysis work for biomolecules.                                                                              
     J. Comput. Chem. 2020, 41, 156-164              
```

# Reference Manual
  The FSATOOL reference manual is on the [website](https://github.com/fsatool/fsatool.github.io/wiki).

# Download
[FSATOOL 2.0 (2021)](https://github.com/fsatool/fsatool.github.io)

# Acknowledgment

We gratefully acknowledge the support from the National Natural Science Foundation of China (NSFC).

# Contact Information

* Associate Prof. **Chen, Changjun**  
* Email: **cjchen@hust.edu.cn**  



