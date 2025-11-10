
Command line:
  gmx_mpi mdrun -s run_mpich4gpunpme_cm.tpr -ntomp 5 -nb gpu -pme gpu -pin on -nsteps 50000 -npme 10


Back Off! I just backed up md.log to ./#md.log.9#
Compiled SIMD is AVX2_256, but CPU also supports AVX_512 (see log).
Reading file run_mpich4gpunpme_cm.tpr, VERSION 2025.3 (single precision)
Overriding nsteps with value passed on the command line: 50000 steps, 100 ps
Changing nstlist from 10 to 80, rlist from 0.904 to 1.078


This run has forced use of 'GPU-aware MPI'. However, GROMACS cannot determine if underlying MPI is GPU-aware. Check the GROMACS install guide for recommendations for GPU-aware support. If you observe failures at runtime, try unsetting the GMX_FORCE_GPU_AWARE_MPI environment variable.

This run has requested the 'GPU PME decomposition' feature, enabled by the GMX_GPU_PME_DECOMPOSITION environment variable. PME decomposition lacks substantial testing and should be used with caution.

On host v006.ib.bridges2.psc.edu 8 GPUs selected for this run.
Mapping of GPU IDs to the 8 GPU tasks in the 8 ranks on this node:
  PP:0,PP:1,PP:2,PME:3,PP:4,PP:5,PP:6,PME:7
PP tasks will do (non-perturbed) short-ranged interactions on the GPU
PP task will update and constrain coordinates on the GPU
PME tasks will do all aspects on the GPU
GPU direct communication will be used between MPI ranks.
Using 40 MPI processes
Using 5 OpenMP threads per MPI process

Back Off! I just backed up ener.edr to ./#ener.edr.5#
starting mdrun 'NADP-DEPENDENT ALCOHOL DEHYDROGENASE in water'
50000 steps,    100.0 ps.

Writing final coordinates.

Back Off! I just backed up confout.gro to ./#confout.gro.5#


Dynamic load balancing report:
 DLB got disabled because it was unsuitable to use.
 Average load imbalance: 16.0%.
 The balanceable part of the MD step is 19%, load imbalance is computed from this.
 Part of the total run time spent waiting due to load imbalance: 3.1%.
 Average PME mesh/force load: 2.354
 Part of the total run time spent waiting due to PP/PME imbalance: 27.5 %

NOTE: 27.5 % performance was lost because the PME ranks
      had more work to do than the PP ranks.
      You might want to increase the number of PME ranks
      or increase the cut-off and the grid spacing.


               Core t (s)   Wall t (s)        (%)
       Time:     7636.529       38.314    19931.6
                 (ns/day)    (hour/ns)
Performance:      225.512        0.106

GROMACS reminds you: "Shake Barrels Of Whisky Down My Throat" (Throwing Muses)

 Simulation completed successfully.

