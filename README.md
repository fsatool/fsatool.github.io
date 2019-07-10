# FSATOOL project

[FSATOOL](https://fsatool.github.io/fsatool)[^1] is a useful tool for the conformational sampling and trajectory analysis for the biomolecules. It must be compiled with AMBER software (<http://ambermd.org/>). It contains several existing sampling methods, including **replica exchange molecular dynamics** (REMD), **adaptively biased molecular dynamics** (ABMD), s**teered molecular dynamics** (SMD), **essential dynamics sampling** (EDS) and **mixing REMD** method. All these methods work in the accelerated simulations on GPU with AMBER.
Besides the sampling function, it is also able to build the folding netwo   rk and the dominant transition pathways from the simulation data based on the **Markov state model** (MSM) and the transition path theory. Users do not need to do the tedious intermediate steps by hand.

# FSATOOL members

FSATOOL is developed by Changjun Chen’s group in school of physics at Huazhong University of Science and Technology (HUST). All the members that are working on this project are as follows:

- Changjun Chen (PI)
- Haomiao Zhang
- Qiankun Gong
- Haozhe Zhang

# Selected publications

FSATOOL is not only a simple implementation package of the existing methods. We are continuously trying to improve their performances in the practical simulations. For example, we set up the state databases at all the temperature levels in the REMD simulation. This completely decouples the number of the active replicas and the number of the temperature levels. It could be helpful for a large system.
Moreover, we combine the biased and the unbiased methods into one simulation. Biased replicas are for the fast sampling purpose and the unbiased replicas generate the data for free energy calculation. It provides a minimalist approach to the construction of the free energy landscape.

1. H. Zhang, Q. Gong, H. Zhang, and C. Chen, Combining the biased and unbiased sampling strategy into One convenient free energy calculation method. J. Comput. Chem., 2019. 40: 1806-1815.
2. C. Chen and Y. Huang, Walking freely in the energy and temperature space by the modified replica exchange molecular dynamics method. J. Comput. Chem., 2016. 37: 1565-1575

# Acknowledgments 

We gratefully acknowledge the support from the National Natural Science Foundation of China (NSFC). 


[^1]: Please refer <https://fsatool.github.io/fsatool> for documentation