Loading the correct module toolchain...
HYDRA build details:
    Version:                                 5.0.0a1
    Release Date:                            unreleased development copy
    CC:                              gcc   -std=gnu11     
    Configure options:                       '--disable-option-checking' '--prefix=/...' '--with-device=ch4:ucx' '--with-ucx=/...' '--with-cuda=/opt/packages/cuda/v12.6.1' '--with-hwloc=embedded' 'CFLAGS=-std=gnu11 -O2' '--disable-fortran' 'CC=gcc' 'CXX=g++' 'FC=gfortran' 'F77=gfortran' '--cache-file=/dev/null' '--srcdir=.' 'LDFLAGS= -L/.../ucx-install/lib' 'LIBS= ' 'CPPFLAGS= -I/.../ucx-install/include -DNETMOD_INLINE=__netmod_inline_ucx__ -DPOSIX_EAGER_INLINE=__posix_eager_inline_iqueue__ -I/opt/packages/cuda/v12.6.1/include -I/.../mpich/src/mpl/include -I/.../mpich/modules/json-c -I/.../modules/hwloc/include -D_REENTRANT -I/.../mpich/src/mpi/romio/include -I/.../mpich/src/pmi/include -I/.../mpich/src/mpi/datatype/typerep/yaksa/src/frontend/include'
    Process Manager:                         pmi
    Launchers available:                     ssh rsh fork slurm ll lsf sge manual persist
    Topology libraries available:            hwloc
    Resource management kernels available:   user slurm ll lsf sge pbs cobalt
    Demux engines available:                 poll select
UCX not linked at mpiexec stage
                      :-) GROMACS - gmx grompp, 2025.3 (-:

Executable:   /.../bin/gmx_mpi
Data prefix:  /...
Working dir:  /...
Command line:
  gmx_mpi grompp -f pme_verlet.mdp -c conf.gro -p topol.top -o run_mpich4gpunpme_cm.tpr -maxwarn 1

Ignoring obsolete mdp entry 'ns_type'
Replacing old mdp entry 'nstxtcout' by 'nstxout-compressed'
Setting the LD random seed to -1579074

Generated 2145 of the 2145 non-bonded parameter combinations
Generating 1-4 interactions: fudge = 0.5

Generated 2145 of the 2145 1-4 parameter combinations

Excluding 3 bonded neighbours molecule type 'Protein_chain_A'

turning H bonds into constraints...

Excluding 3 bonded neighbours molecule type 'Protein_chain_B'

turning H bonds into constraints...

Excluding 3 bonded neighbours molecule type 'Protein_chain_C'

turning H bonds into constraints...

Excluding 3 bonded neighbours molecule type 'Protein_chain_D'

turning H bonds into constraints...

Excluding 2 bonded neighbours molecule type 'SOL'

turning H bonds into constraints...

Excluding 2 bonded neighbours molecule type 'SOL'

Excluding 2 bonded neighbours molecule type 'SOL'

Excluding 2 bonded neighbours molecule type 'SOL'

Excluding 2 bonded neighbours molecule type 'SOL'

Excluding 1 bonded neighbours molecule type 'NA'

turning H bonds into constraints...

Taking velocities from 'conf.gro'
Analysing residue names:
There are:  1408    Protein residues
There are: 24739      Water residues
There are:    12        Ion residues
Analysing Protein...
Number of degrees of freedom in T-Coupling group System is 201703.00

The largest distance between excluded atoms is 0.425 nm between atom 821 and 829

Determining Verlet buffer for a tolerance of 0.005 kJ/mol/ps at 300 K

Calculated rlist for 1x1 atom pair-list as 0.932 nm, buffer size 0.032 nm

Set rlist, assuming 4x4 atom pair-list, to 0.904 nm, buffer size 0.004 nm

Note that mdrun will redetermine rlist based on the actual pair-list setup
Calculating fourier grid dimensions for X Y Z
Using a fourier grid of 100x100x100, spacing 0.110 0.110 0.110

Estimate for the relative computational load of the PME mesh part: 0.34

This run will generate roughly 7 Mb of data

Back Off! I just backed up run_mpich4gpunpme_cm.tpr to ./#run_mpich4gpunpme_cm.tpr.3#

GROMACS reminds you: "Sir, spare your threats: The bug which you would fright me with I seek." (Hermione, Act III, scene II of Shakespeare's Winter's Tale)

Grompp complete. Starting mdrun...
[1761978119.334214] [w004:10184:0]          parser.c:2368 UCX  INFO  UCX_* env variable: UCX_LOG_LEVEL=info
[1761978119.334931] [w004:10184:0]      ucp_worker.c:1903 UCX  INFO    ucp_context_0 self cfg#1 tag(self/memory rc_mlx5/mlx5_0:1 rc_mlx5/mlx5_1:1 rc_mlx5/mlx5_2:1 rc_mlx5/mlx5_3:1 rc_mlx5/mlx5_4:1 rc_mlx5/mlx5_5:1 rc_mlx5/mlx5_6:1 rc_mlx5/mlx5_7:1 rc_mlx5/mlx5_0:1 rc_mlx5/mlx5_1:1 rc_mlx5/mlx5_2:1 rc_mlx5/mlx5_3:1 rc_mlx5/ml
[1761978119.507368] [w004:10187:0]          parser.c:2368 UCX  INFO  UCX_* env variable: UCX_LOG_LEVEL=info
[1761978119.508073] [w004:10187:0]      ucp_worker.c:1903 UCX  INFO    ucp_context_0 self cfg#1 tag(self/memory rc_mlx5/mlx5_0:1 rc_mlx5/mlx5_1:1 rc_mlx5/mlx5_2:1 rc_mlx5/mlx5_3:1 rc_mlx5/mlx5_4:1 rc_mlx5/mlx5_5:1 rc_mlx5/mlx5_6:1 rc_mlx5/mlx5_7:1 rc_mlx5/mlx5_0:1 rc_mlx5/mlx5_1:1 rc_mlx5/mlx5_2:1 rc_mlx5/mlx5_3:1 rc_mlx5/ml
[1761978119.711513] [w004:10189:0]          parser.c:2368 UCX  INFO  UCX_* env variable: UCX_LOG_LEVEL=info
[1761978119.712228] [w004:10189:0]      ucp_worker.c:1903 UCX  INFO    ucp_context_0 self cfg#1 tag(self/memory rc_mlx5/mlx5_0:1 rc_mlx5/mlx5_1:1 rc_mlx5/mlx5_2:1 rc_mlx5/mlx5_3:1 rc_mlx5/mlx5_4:1 rc_mlx5/mlx5_5:1 rc_mlx5/mlx5_6:1 rc_mlx5/mlx5_7:1 rc_mlx5/mlx5_0:1 rc_mlx5/mlx5_1:1 rc_mlx5/mlx5_2:1 rc_mlx5/mlx5_3:1 rc_mlx5/ml
[1761978119.714424] [w004:10185:0]          parser.c:2368 UCX  INFO  UCX_* env variable: UCX_LOG_LEVEL=info
[1761978119.714707] [w004:10183:0]          parser.c:2368 UCX  INFO  UCX_* env variable: UCX_LOG_LEVEL=info
[1761978119.715127] [w004:10185:0]      ucp_worker.c:1903 UCX  INFO    ucp_context_0 self cfg#1 tag(self/memory rc_mlx5/mlx5_0:1 rc_mlx5/mlx5_1:1 rc_mlx5/mlx5_2:1 rc_mlx5/mlx5_3:1 rc_mlx5/mlx5_4:1 rc_mlx5/mlx5_5:1 rc_mlx5/mlx5_6:1 rc_mlx5/mlx5_7:1 rc_mlx5/mlx5_0:1 rc_mlx5/mlx5_1:1 rc_mlx5/mlx5_2:1 rc_mlx5/mlx5_3:1 rc_mlx5/ml
[1761978119.715430] [w004:10183:0]      ucp_worker.c:1903 UCX  INFO    ucp_context_0 self cfg#1 tag(self/memory rc_mlx5/mlx5_0:1 rc_mlx5/mlx5_1:1 rc_mlx5/mlx5_2:1 rc_mlx5/mlx5_3:1 rc_mlx5/mlx5_4:1 rc_mlx5/mlx5_5:1 rc_mlx5/mlx5_6:1 rc_mlx5/mlx5_7:1 rc_mlx5/mlx5_0:1 rc_mlx5/mlx5_1:1 rc_mlx5/mlx5_2:1 rc_mlx5/mlx5_3:1 rc_mlx5/ml
[1761978119.715419] [w004:10186:0]          parser.c:2368 UCX  INFO  UCX_* env variable: UCX_LOG_LEVEL=info
[1761978119.716121] [w004:10186:0]      ucp_worker.c:1903 UCX  INFO    ucp_context_0 self cfg#1 tag(self/memory rc_mlx5/mlx5_0:1 rc_mlx5/mlx5_1:1 rc_mlx5/mlx5_2:1 rc_mlx5/mlx5_3:1 rc_mlx5/mlx5_4:1 rc_mlx5/mlx5_5:1 rc_mlx5/mlx5_6:1 rc_mlx5/mlx5_7:1 rc_mlx5/mlx5_0:1 rc_mlx5/mlx5_1:1 rc_mlx5/mlx5_2:1 rc_mlx5/mlx5_3:1 rc_mlx5/ml
[1761978119.716914] [w004:10188:0]          parser.c:2368 UCX  INFO  UCX_* env variable: UCX_LOG_LEVEL=info
[1761978119.717656] [w004:10188:0]      ucp_worker.c:1903 UCX  INFO    ucp_context_0 self cfg#1 tag(self/memory rc_mlx5/mlx5_0:1 rc_mlx5/mlx5_1:1 rc_mlx5/mlx5_2:1 rc_mlx5/mlx5_3:1 rc_mlx5/mlx5_4:1 rc_mlx5/mlx5_5:1 rc_mlx5/mlx5_6:1 rc_mlx5/mlx5_7:1 rc_mlx5/mlx5_0:1 rc_mlx5/mlx5_1:1 rc_mlx5/mlx5_2:1 rc_mlx5/mlx5_3:1 rc_mlx5/ml
[1761978119.717920] [w004:10190:0]          parser.c:2368 UCX  INFO  UCX_* env variable: UCX_LOG_LEVEL=info
[1761978119.718697] [w004:10190:0]      ucp_worker.c:1903 UCX  INFO    ucp_context_0 self cfg#1 tag(self/memory rc_mlx5/mlx5_0:1 rc_mlx5/mlx5_1:1 rc_mlx5/mlx5_2:1 rc_mlx5/mlx5_3:1 rc_mlx5/mlx5_4:1 rc_mlx5/mlx5_5:1 rc_mlx5/mlx5_6:1 rc_mlx5/mlx5_7:1 rc_mlx5/mlx5_0:1 rc_mlx5/mlx5_1:1 rc_mlx5/mlx5_2:1 rc_mlx5/mlx5_3:1 rc_mlx5/ml
[1761978119.780823] [w004:10183:0]      ucp_worker.c:1903 UCX  INFO    ucp_context_0 intra-node cfg#2 tag(rc_mlx5/mlx5_0:1 sysv/memory rc_mlx5/mlx5_1:1 rc_mlx5/mlx5_2:1 rc_mlx5/mlx5_3:1 rc_mlx5/mlx5_4:1 rc_mlx5/mlx5_5:1 rc_mlx5/mlx5_6:1 rc_mlx5/mlx5_7:1 rc_mlx5/mlx5_0:1 rc_mlx5/mlx5_1:1 rc_mlx5/mlx5_2:1 rc_mlx5/mlx5_3:1 rc_m
[1761978119.781099] [w004:10184:0]      ucp_worker.c:1903 UCX  INFO    ucp_context_0 intra-node cfg#2 tag(rc_mlx5/mlx5_0:1 sysv/memory rc_mlx5/mlx5_1:1 rc_mlx5/mlx5_2:1 rc_mlx5/mlx5_3:1 rc_mlx5/mlx5_4:1 rc_mlx5/mlx5_5:1 rc_mlx5/mlx5_6:1 rc_mlx5/mlx5_7:1 rc_mlx5/mlx5_0:1 rc_mlx5/mlx5_1:1 rc_mlx5/mlx5_2:1 rc_mlx5/mlx5_3:1 rc_m
[1761978119.781161] [w004:10185:0]      ucp_worker.c:1903 UCX  INFO    ucp_context_0 intra-node cfg#2 tag(rc_mlx5/mlx5_0:1 sysv/memory rc_mlx5/mlx5_1:1 rc_mlx5/mlx5_2:1 rc_mlx5/mlx5_3:1 rc_mlx5/mlx5_4:1 rc_mlx5/mlx5_5:1 rc_mlx5/mlx5_6:1 rc_mlx5/mlx5_7:1 rc_mlx5/mlx5_0:1 rc_mlx5/mlx5_1:1 rc_mlx5/mlx5_2:1 rc_mlx5/mlx5_3:1 rc_m
[1761978119.781621] [w004:10186:0]      ucp_worker.c:1903 UCX  INFO    ucp_context_0 intra-node cfg#2 tag(rc_mlx5/mlx5_0:1 sysv/memory rc_mlx5/mlx5_1:1 rc_mlx5/mlx5_2:1 rc_mlx5/mlx5_3:1 rc_mlx5/mlx5_4:1 rc_mlx5/mlx5_5:1 rc_mlx5/mlx5_6:1 rc_mlx5/mlx5_7:1 rc_mlx5/mlx5_0:1 rc_mlx5/mlx5_1:1 rc_mlx5/mlx5_2:1 rc_mlx5/mlx5_3:1 rc_m
[1761978119.781780] [w004:10189:0]      ucp_worker.c:1903 UCX  INFO    ucp_context_0 intra-node cfg#2 tag(rc_mlx5/mlx5_0:1 sysv/memory rc_mlx5/mlx5_1:1 rc_mlx5/mlx5_2:1 rc_mlx5/mlx5_3:1 rc_mlx5/mlx5_4:1 rc_mlx5/mlx5_5:1 rc_mlx5/mlx5_6:1 rc_mlx5/mlx5_7:1 rc_mlx5/mlx5_0:1 rc_mlx5/mlx5_1:1 rc_mlx5/mlx5_2:1 rc_mlx5/mlx5_3:1 rc_m
[1761978119.781802] [w004:10187:0]      ucp_worker.c:1903 UCX  INFO    ucp_context_0 intra-node cfg#2 tag(rc_mlx5/mlx5_0:1 sysv/memory rc_mlx5/mlx5_1:1 rc_mlx5/mlx5_2:1 rc_mlx5/mlx5_3:1 rc_mlx5/mlx5_4:1 rc_mlx5/mlx5_5:1 rc_mlx5/mlx5_6:1 rc_mlx5/mlx5_7:1 rc_mlx5/mlx5_0:1 rc_mlx5/mlx5_1:1 rc_mlx5/mlx5_2:1 rc_mlx5/mlx5_3:1 rc_m
[1761978119.781992] [w004:10188:0]      ucp_worker.c:1903 UCX  INFO    ucp_context_0 intra-node cfg#2 tag(rc_mlx5/mlx5_0:1 sysv/memory rc_mlx5/mlx5_1:1 rc_mlx5/mlx5_2:1 rc_mlx5/mlx5_3:1 rc_mlx5/mlx5_4:1 rc_mlx5/mlx5_5:1 rc_mlx5/mlx5_6:1 rc_mlx5/mlx5_7:1 rc_mlx5/mlx5_0:1 rc_mlx5/mlx5_1:1 rc_mlx5/mlx5_2:1 rc_mlx5/mlx5_3:1 rc_m
[1761978119.785008] [w004:10190:0]      ucp_worker.c:1903 UCX  INFO    ucp_context_0 intra-node cfg#2 tag(rc_mlx5/mlx5_0:1 sysv/memory rc_mlx5/mlx5_1:1 rc_mlx5/mlx5_2:1 rc_mlx5/mlx5_3:1 rc_mlx5/mlx5_4:1 rc_mlx5/mlx5_5:1 rc_mlx5/mlx5_6:1 rc_mlx5/mlx5_7:1 rc_mlx5/mlx5_0:1 rc_mlx5/mlx5_1:1 rc_mlx5/mlx5_2:1 rc_mlx5/mlx5_3:1 rc_m
[1761978119.823043] [w004:10185:a]      ucp_worker.c:1903 UCX  INFO    ucp_context_0 intra-node cfg#3 tag(rc_mlx5/mlx5_0:1 sysv/memory rc_mlx5/mlx5_1:1 rc_mlx5/mlx5_2:1 rc_mlx5/mlx5_3:1 rc_mlx5/mlx5_4:1 rc_mlx5/mlx5_5:1 rc_mlx5/mlx5_6:1 rc_mlx5/mlx5_7:1 rc_mlx5/mlx5_0:1 rc_mlx5/mlx5_1:1 rc_mlx5/mlx5_2:1 rc_mlx5/mlx5_3:1 rc_m
[1761978119.827308] [w004:10184:a]      ucp_worker.c:1903 UCX  INFO    ucp_context_0 intra-node cfg#3 tag(rc_mlx5/mlx5_0:1 sysv/memory rc_mlx5/mlx5_1:1 rc_mlx5/mlx5_2:1 rc_mlx5/mlx5_3:1 rc_mlx5/mlx5_4:1 rc_mlx5/mlx5_5:1 rc_mlx5/mlx5_6:1 rc_mlx5/mlx5_7:1 rc_mlx5/mlx5_0:1 rc_mlx5/mlx5_1:1 rc_mlx5/mlx5_2:1 rc_mlx5/mlx5_3:1 rc_m
[1761978119.832403] [w004:10186:a]      ucp_worker.c:1903 UCX  INFO    ucp_context_0 intra-node cfg#3 tag(rc_mlx5/mlx5_0:1 sysv/memory rc_mlx5/mlx5_1:1 rc_mlx5/mlx5_2:1 rc_mlx5/mlx5_3:1 rc_mlx5/mlx5_4:1 rc_mlx5/mlx5_5:1 rc_mlx5/mlx5_6:1 rc_mlx5/mlx5_7:1 rc_mlx5/mlx5_0:1 rc_mlx5/mlx5_1:1 rc_mlx5/mlx5_2:1 rc_mlx5/mlx5_3:1 rc_m
[1761978119.846865] [w004:10187:a]      ucp_worker.c:1903 UCX  INFO    ucp_context_0 intra-node cfg#3 tag(rc_mlx5/mlx5_0:1 sysv/memory rc_mlx5/mlx5_1:1 rc_mlx5/mlx5_2:1 rc_mlx5/mlx5_3:1 rc_mlx5/mlx5_4:1 rc_mlx5/mlx5_5:1 rc_mlx5/mlx5_6:1 rc_mlx5/mlx5_7:1 rc_mlx5/mlx5_0:1 rc_mlx5/mlx5_1:1 rc_mlx5/mlx5_2:1 rc_mlx5/mlx5_3:1 rc_m
                      :-) GROMACS - gmx mdrun, 2025.3 (-:
Command line:
  gmx_mpi mdrun -s run_mpich4gpunpme_cm.tpr -ntomp 5 -nb gpu -pme gpu -pin on -nsteps 50000 -npme 1


Back Off! I just backed up md.log to ./#md.log.6#
Compiled SIMD is AVX2_256, but CPU also supports AVX_512 (see log).
Reading file run_mpich4gpunpme_cm.tpr, VERSION 2025.3 (single precision)
Overriding nsteps with value passed on the command line: 50000 steps, 100 ps
Changing nstlist from 10 to 80, rlist from 0.904 to 1.078


This run has forced use of 'GPU-aware MPI'. However, GROMACS cannot determine if underlying MPI is GPU-aware. Check the GROMACS install guide for recommendations for GPU-aware support. If you observe failures at runtime, try unsetting the GMX_FORCE_GPU_AWARE_MPI environment variable.

On host w004.ib.bridges2.psc.edu 8 GPUs selected for this run.
Mapping of GPU IDs to the 8 GPU tasks in the 8 ranks on this node:
  PP:0,PP:1,PP:2,PP:3,PP:4,PP:5,PP:6,PME:7
PP tasks will do (non-perturbed) short-ranged interactions on the GPU
PP task will update and constrain coordinates on the GPU
PME tasks will do all aspects on the GPU
GPU direct communication will be used between MPI ranks.
Using 8 MPI processes
Using 5 OpenMP threads per MPI process


Back Off! I just backed up ener.edr to ./#ener.edr.4#
starting mdrun 'NADP-DEPENDENT ALCOHOL DEHYDROGENASE in water'
50000 steps,    100.0 ps.

Writing final coordinates.

Back Off! I just backed up confout.gro to ./#confout.gro.4#


Dynamic load balancing report:
 DLB got disabled because it was unsuitable to use.
 Average load imbalance: 3.3%.
 The balanceable part of the MD step is 23%, load imbalance is computed from this.
 Part of the total run time spent waiting due to load imbalance: 0.8%.
 Average PME mesh/force load: 3.060
 Part of the total run time spent waiting due to PP/PME imbalance: 37.6 %

NOTE: 37.6 % performance was lost because the PME ranks
      had more work to do than the PP ranks.
      You might want to increase the number of PME ranks
      or increase the cut-off and the grid spacing.


NOTE: 32 % of the run time was spent in domain decomposition,
      3 % of the run time was spent in pair search,
      you might want to increase nstlist (this has no effect on accuracy)

               Core t (s)   Wall t (s)        (%)
       Time:     1046.991       26.185     3998.5
                 (ns/day)    (hour/ns)
Performance:      329.971        0.073

GROMACS reminds you: "Nobody ever complained a seminar was too easy to understand." (Ken Dill)

 Simulation completed successfully.
