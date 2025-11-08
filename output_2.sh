The number of OpenMP threads was set by environment variable OMP_NUM_THREADS to 5 (and the command-line setting agreed with that)

Input Parameters:
   integrator                     = md
   tinit                          = 0
   dt                             = 0.002
   nsteps                         = 10000
   init-step                      = 0
   simulation-part                = 1
   mts                            = false
   mass-repartition-factor        = 1
   comm-mode                      = Linear
   nstcomm                        = 100
   bd-fric                        = 0
   ld-seed                        = -1644431582
   emtol                          = 10
   emstep                         = 0.01
   niter                          = 20
   fcstep                         = 0
   nstcgsteep                     = 1000
   nbfgscorr                      = 10
   rtpi                           = 0.05
   nstxout                        = 0
   nstvout                        = 0
   nstfout                        = 0
   nstlog                         = 0
   nstcalcenergy                  = 100
   nstenergy                      = 500
   nstxout-compressed             = 0
   compressed-x-precision         = 1000
   cutoff-scheme                  = Verlet
   nstlist                        = 10
   pbc                            = xyz
   periodic-molecules             = false
   verlet-buffer-tolerance        = 0.005
   verlet-buffer-pressure-tolerance = 0.5
   rlist                          = 0.904
   coulombtype                    = PME
   coulomb-modifier               = Potential-shift
   rcoulomb-switch                = 0
   rcoulomb                       = 0.9
   epsilon-r                      = 1
   epsilon-rf                     = inf
   vdw-type                       = Cut-off
   vdw-modifier                   = Potential-shift
   rvdw-switch                    = 0
   rvdw                           = 0.9
   DispCorr                       = No
   table-extension                = 1
   fourierspacing                 = 0.1125
   fourier-nx                     = 100
   fourier-ny                     = 100
   fourier-nz                     = 100
   pme-order                      = 4
   ewald-rtol                     = 1e-05
   ewald-rtol-lj                  = 0.001
   lj-pme-comb-rule               = Geometric
   ewald-geometry                 = 3d
   epsilon-surface                = 0
   ensemble-temperature-setting   = constant
   ensemble-temperature           = 300
   tcoupl                         = V-rescale
   nsttcouple                     = 10
   nh-chain-length                = 0
   print-nose-hoover-chain-variables = false
   pcoupl                         = No
   refcoord-scaling               = No
   posres-com: not available
   posres-comB: not available
   QMMM                           = false
qm-opts:
   ngQM                           = 0
   constraint-algorithm           = Lincs
   continuation                   = false
   Shake-SOR                      = false
   shake-tol                      = 0.0001
   lincs-order                    = 4
   lincs-iter                     = 1
   lincs-warnangle                = 30
   nwall                          = 0
   wall-type                      = 9-3
   wall-r-linpot                  = -1
   wall-atomtype[0]               = -1
   wall-atomtype[1]               = -1
   wall-density[0]                = 0
   wall-density[1]                = 0
   wall-ewald-zfac                = 3
   pull                           = false
   awh                            = false
   rotation                       = false
   interactiveMD                  = false
   disre                          = No
   disre-weighting                = Conservative
   disre-mixed                    = false
   dr-fc                          = 1000
   dr-tau                         = 0
   nstdisreout                    = 100
   orire-fc                       = 0
   orire-tau                      = 0
   nstorireout                    = 100
   free-energy                    = no
   cos-acceleration               = 0
   deform (3x3):
      deform[    0]={ 0.00000e+00,  0.00000e+00,  0.00000e+00}
      deform[    1]={ 0.00000e+00,  0.00000e+00,  0.00000e+00}
      deform[    2]={ 0.00000e+00,  0.00000e+00,  0.00000e+00}
   simulated-tempering            = false
   swapcoords                     = no
   userint1                       = 0
   userint2                       = 0
   userint3                       = 0
   userint4                       = 0
   userreal1                      = 0
   userreal2                      = 0
   userreal3                      = 0
   userreal4                      = 0
   applied-forces:
     electric-field:
       x:
         E0                       = 0
         omega                    = 0
         t0                       = 0
         sigma                    = 0
       y:
         E0                       = 0
         omega                    = 0
         t0                       = 0
         sigma                    = 0
       z:
         E0                       = 0
         omega                    = 0
         t0                       = 0
         sigma                    = 0
     density-guided-simulation:
       active                     = false
       group                      = protein
       similarity-measure         = inner-product
       atom-spreading-weight      = unity
       force-constant             = 1e+09
       gaussian-transform-spreading-width = 0.2
       gaussian-transform-spreading-range-in-multiples-of-width = 4
       reference-density-filename = reference.mrc
       nst                        = 1
       normalize-densities        = true
       adaptive-force-scaling     = false
       adaptive-force-scaling-time-constant = 4
       shift-vector               = 
       transformation-matrix      = 
     qmmm-cp2k:
       active                     = false
       qmgroup                    = System
       qmmethod                   = PBE
       qmfilenames                = 
       qmcharge                   = 0
       qmmultiplicity             = 1
     colvars:
       active                     = false
       configfile                 = 
       seed                       = -1
     nnpot:
       active                     = false
       modelfile                  = model.pt
       input-group                = System
       model-input1               = 
       model-input2               = 
       model-input3               = 
       model-input4               = 
grpopts:
   nrdf:      201703
   ref-t:         300
   tau-t:         0.1
annealing:          No
annealing-npoints:           0
   acc:	           0           0           0
   nfreeze:           N           N           N
   energygrp-flags[  0]: 0

The -nsteps functionality is deprecated, and may be removed in a future version. Consider using gmx convert-tpr -nsteps or changing the appropriate .mdp file field.

Overriding nsteps with value passed on the command line: 50000 steps, 100 ps
Changing nstlist from 10 to 80, rlist from 0.904 to 1.078


This run has forced use of 'GPU-aware MPI'. However, GROMACS cannot determine if underlying MPI is GPU-aware. Check the GROMACS install guide for recommendations for GPU-aware support. If you observe failures at runtime, try unsetting the GMX_FORCE_GPU_AWARE_MPI environment variable.

GPU-aware MPI detected, enabling direct GPU communication. If GROMACS crashes at the beginning of the run, try fixing your MPI installation, or set the GMX_DISABLE_DIRECT_GPU_COMM environment variable as a workaround.

This run has requested the 'GPU PME decomposition' feature, enabled by the GMX_GPU_PME_DECOMPOSITION environment variable. PME decomposition lacks substantial testing and should be used with caution.

Initializing Domain Decomposition on 4 ranks
NOTE: disabling dynamic load balancing as it is not supported with GPU PME decomposition.
Dynamic load balancing: off
Using update groups, nr 35323, average size 2.7 atoms, max. radius 0.104 nm
Minimum cell size due to atom displacement: 0.570 nm
Initial maximum distances in bonded interactions:
    two-body bonded interactions: 0.425 nm, LJ-14, atoms 821 829
  multi-body bonded interactions: 0.425 nm, Proper Dih., atoms 821 829
Minimum cell size due to bonded interactions: 0.467 nm
Using 2 separate PME ranks, as requested with -npme option
Optimizing the DD grid for 2 cells with a minimum initial size of 0.570 nm
The maximum allowed number of cells is: X 15 Y 15 Z 13
Domain decomposition grid 2 x 1 x 1, separate PME ranks 2
PME domain decomposition: 2 x 1 x 1
Interleaving PP and PME ranks
This rank does only particle-particle work.
Domain decomposition rank 0, coordinates 0 0 0

The initial number of communication pulses is: X 1
The initial domain decomposition cell size is: X 4.50 nm

The maximum allowed distance for atom groups involved in interactions is:
                 non-bonded interactions           1.286 nm
            two-body bonded interactions  (-rdd)   1.286 nm
          multi-body bonded interactions  (-rdd)   1.286 nm

Local state does not use filler particles

On host v019.ib.bridges2.psc.edu 4 GPUs selected for this run.
Mapping of GPU IDs to the 4 GPU tasks in the 4 ranks on this node:
  PP:0,PME:1,PP:2,PME:3
PP tasks will do (non-perturbed) short-ranged interactions on the GPU
PP task will update and constrain coordinates on the GPU
PME tasks will do all aspects on the GPU
GPU direct communication will be used between MPI ranks.
Using 4 MPI processes
Using 5 OpenMP threads per MPI process

System total charge: 0.000
Will do PME sum in reciprocal space for electrostatic interactions.

++++ PLEASE READ AND CITE THE FOLLOWING REFERENCE ++++
U. Essmann, L. Perera, M. L. Berkowitz, T. Darden, H. Lee, L. G. Pedersen 
A smooth particle mesh Ewald method
J. Chem. Phys. (1995)
DOI: 10.1063/1.470117
-------- -------- --- Thank You --- -------- --------

Using a Gaussian width (1/beta) of 0.288146 nm for Ewald
Potential shift: LJ r^-12: -3.541e+00 r^-6: -1.882e+00, Ewald -1.111e-05
Initialized non-bonded Coulomb Ewald tables, spacing: 8.85e-04 size: 1018

Generated table with 1039 data points for 1-4 COUL.
Tabscale = 500 points/nm
Generated table with 1039 data points for 1-4 LJ6.
Tabscale = 500 points/nm
Generated table with 1039 data points for 1-4 LJ12.
Tabscale = 500 points/nm


Using GPU 8x4 nonbonded short-range kernels

NBNxM GPU setup: super-cluster 2x2x2

Using a dual 8x4 pair-list setup updated with dynamic, rolling pruning:
  outer list: updated every 80 steps, buffer 0.178 nm, rlist 1.078 nm
  inner list: updated every  6 steps, buffer 0.003 nm, rlist 0.903 nm
At tolerance 0.005 kJ/mol/ps per atom, equivalent classical 1x1 list would be:
  outer list: updated every 80 steps, buffer 0.272 nm, rlist 1.172 nm
  inner list: updated every  6 steps, buffer 0.018 nm, rlist 0.918 nm

The average pressure is off by at most 0.56 bar due to missing LJ interactions

Using Lorentz-Berthelot Lennard-Jones combination rule
Removing pbc first time

Linking all bonded interactions to atoms


Overriding thread affinity set outside gmx mdrun

Pinning threads with an auto-selected logical cpu stride of 1

Initializing LINear Constraint Solver

++++ PLEASE READ AND CITE THE FOLLOWING REFERENCE ++++
B. Hess, H. Bekker, H. J. C. Berendsen, J. G. E. M. Fraaije
LINCS: A Linear Constraint Solver for molecular simulations
J. Comp. Chem. (1997)
DOI: 10.1002/(sici)1096-987x(199709)18:12<1463::aid-jcc4>3.0.co;2-h
-------- -------- --- Thank You --- -------- --------

The number of constraints is 10760

++++ PLEASE READ AND CITE THE FOLLOWING REFERENCE ++++
S. Miyamoto, P. A. Kollman
SETTLE: An Analytical Version of the SHAKE and RATTLE Algorithms for Rigid
Water Models
J. Comp. Chem. (1992)
DOI: 10.1002/jcc.540130805
-------- -------- --- Thank You --- -------- --------

Intra-simulation communication will occur every 10 steps.

++++ PLEASE READ AND CITE THE FOLLOWING REFERENCE ++++
G. Bussi, D. Donadio, M. Parrinello
Canonical sampling through velocity rescaling
J. Chem. Phys. (2007)
DOI: 10.1063/1.2408420
-------- -------- --- Thank You --- -------- --------

There are: 95561 Atoms
Atom distribution over 2 domains: av 47780 stddev 324 min 47542 max 48019

Updating coordinates and applying constraints on the GPU.

Constraining the starting coordinates (step 0)

Constraining the coordinates at t0-dt (step 0)
Center of mass motion removal mode is Linear
We have the following groups for center of mass motion removal:
  0:  rest
RMS relative constraint deviation after constraining: 4.00e-06
Initial temperature: 283.383 K

Started mdrun on rank 0 Sat Nov  8 03:35:19 2025

           Step           Time
              0        0.00000

   Energies (kJ/mol)
           Bond          Angle    Proper Dih. Per. Imp. Dih.          LJ-14
    3.01156e+02    4.82473e+04    5.40887e+04    2.75753e+03    2.31029e+04
     Coulomb-14        LJ (SR)   Coulomb (SR)   Coul. recip.      Potential
    2.86831e+05    1.13780e+05   -1.66389e+06    1.49096e+04   -1.11987e+06
    Kinetic En.   Total Energy  Conserved En.    Temperature Pressure (bar)
    2.38143e+05   -8.81729e+05   -8.81729e+05    2.84002e+02    2.97762e+03
   Constr. rmsd
    4.00009e-06


DD  step 79 load imb.: force  1.0%  pme mesh/force 6.975

DD  step 49999 load imb.: force  3.1%  pme mesh/force 0.998
           Step           Time
          50000      100.00000

Writing checkpoint, step 50000 at Sat Nov  8 03:35:58 2025


   Energies (kJ/mol)
           Bond          Angle    Proper Dih. Per. Imp. Dih.          LJ-14
    1.64485e+04    4.63032e+04    5.34461e+04    2.59989e+03    2.02089e+04
     Coulomb-14        LJ (SR)   Coulomb (SR)   Coul. recip.      Potential
    2.81204e+05    1.11024e+05   -1.65401e+06    1.47363e+04   -1.10803e+06
    Kinetic En.   Total Energy  Conserved En.    Temperature Pressure (bar)
    2.51566e+05   -8.56468e+05   -8.81338e+05    3.00010e+02   -9.83442e+00
   Constr. rmsd
    4.00009e-06


Energy conservation over simulation part #1 of length 100 ps, time 0 to 100 ps
  Conserved energy drift: 4.10e-05 kJ/mol/ps per atom


	<======  ###############  ==>
	<====  A V E R A G E S  ====>
	<==  ###############  ======>

	Statistics over 50001 steps using 501 frames

   Energies (kJ/mol)
           Bond          Angle    Proper Dih. Per. Imp. Dih.          LJ-14
    1.61255e+04    4.55747e+04    5.36346e+04    2.60455e+03    2.02173e+04
     Coulomb-14        LJ (SR)   Coulomb (SR)   Coul. recip.      Potential
    2.80882e+05    1.11940e+05   -1.65213e+06    1.48590e+04   -1.10629e+06
    Kinetic En.   Total Energy  Conserved En.    Temperature Pressure (bar)
    2.51558e+05   -8.54731e+05   -8.81543e+05    3.00000e+02    1.37508e+02
   Constr. rmsd
    0.00000e+00

   Total Virial (kJ/mol)
    7.98825e+04   -3.21807e+02    1.25942e+02
   -3.21815e+02    7.96520e+04    4.72926e+01
    1.25971e+02    4.72895e+01    8.02342e+04

   Pressure (bar)
    1.39522e+02    9.25550e+00   -1.95261e+00
    9.25577e+00    1.44602e+02    2.17583e+00
   -1.95365e+00    2.17594e+00    1.28401e+02


	M E G A - F L O P S   A C C O U N T I N G

 NB=Group-cutoff nonbonded kernels    NxN=N-by-N cluster Verlet kernels
 RF=Reaction-Field  VdW=Van der Waals  QSTab=quadratic-spline table
 W3=SPC/TIP3p  W4=TIP4p (single or pairs)
 V&F=Potential and force  V=Potential only  F=Force only

 Computing:                               M-Number         M-Flops  % Flops
-----------------------------------------------------------------------------
 Pair Search distance check            5981.420752       53832.787     0.0
 NxN QSTab Elec. + LJ [F]           3895662.055872   159722144.291    97.7
 NxN QSTab Elec. + LJ [V&F]           39428.797312     2326299.041     1.4
 1,4 nonbonded interactions            2810.856216      252977.059     0.2
 Reset In Box                            59.821186         179.464     0.0
 CG-CoM                                  59.916747         179.750     0.0
 Bonds                                  540.210804       31872.437     0.0
 Angles                                1963.839276      329924.998     0.2
 Propers                               3002.060040      687471.749     0.4
 Impropers                              202.804056       42183.244     0.0
 Virial                                  47.921151         862.581     0.0
 Stop-CM                                 47.971622         479.716     0.0
 Calc-Ekin                              955.801122       25806.630     0.0
 Lincs                                    0.021520           1.291     0.0
 Lincs-Mat                                0.121824           0.487     0.0
 Constraint-V                             0.095737           0.862     0.0
 Settle                                   0.049478          18.307     0.0
-----------------------------------------------------------------------------
 Total                                               163474234.695   100.0
-----------------------------------------------------------------------------


    D O M A I N   D E C O M P O S I T I O N   S T A T I S T I C S

 av. #atoms communicated per step for force:  2 x 24962.1


Dynamic load balancing report:
 DLB got disabled because it was unsuitable to use.
 Average load imbalance: 1.4%.
 The balanceable part of the MD step is 31%, load imbalance is computed from this.
 Part of the total run time spent waiting due to load imbalance: 0.4%.
 Average PME mesh/force load: 4.785
 Part of the total run time spent waiting due to PP/PME imbalance: 27.3 %

NOTE: 27.3 % performance was lost because the PME ranks
      had more work to do than the PP ranks.
      You might want to increase the number of PME ranks
      or increase the cut-off and the grid spacing.


      R E A L   C Y C L E   A N D   T I M E   A C C O U N T I N G

On 2 MPI ranks doing PP, each using 5 OpenMP threads, and
on 2 MPI ranks doing PME, each using 5 OpenMP threads

 Activity:              Num   Num      Call    Wall time         Giga-Cycles
                        Ranks Threads  Count      (s)         total sum    %
--------------------------------------------------------------------------------
 Domain decomp.            2    5        626       4.702        117.214   5.9
 DD comm. load             2    5          2       0.000          0.001   0.0
 Send X to PME             2    5      50001       1.177         29.335   1.5
 Neighbor search           2    5        626       2.383         59.397   3.0
 Launch PP GPU ops.        2    5     198752       3.386         84.404   4.3
 Comm. coord.              2    5      49375       3.146         78.432   4.0
 Force                     2    5      50001      14.290        356.268  18.0
 Wait + Comm. F            2    5      50001       6.226        155.224   7.8
 PME GPU mesh *            2    5      50001      20.514        511.429  25.9
 PME wait for PP *                                19.173        477.988  24.2
 Wait + Recv. PME F        2    5      50001       1.489         37.117   1.9
 Wait GPU NB nonloc.       2    5      50001       0.007          0.177   0.0
 Wait GPU NB local         2    5      50001       0.005          0.125   0.0
 Wait GPU state copy       2    5     160378       1.145         28.545   1.4
 NB X/F buffer ops.        2    5       1628       0.031          0.761   0.0
 Write traj.               2    5          1       0.170          4.242   0.2
 Constraints               2    5          2       0.007          0.167   0.0
 GPU constr. setup         2    5        626       0.359          8.948   0.5
 Kinetic energy            2    5      10001       0.440         10.959   0.6
 Comm. energies            2    5       5001       0.264          6.576   0.3
 Rest                                              0.452         11.269   0.6
--------------------------------------------------------------------------------
 Total                                            39.677       1978.320 100.0
--------------------------------------------------------------------------------
(*) Note that with separate PME ranks, the walltime column actually sums to
    twice the total reported, but the cycle count total and % are correct.
--------------------------------------------------------------------------------
 Breakdown of PME mesh activities
--------------------------------------------------------------------------------
 Wait PME GPU gather       2    5      50001       0.012          0.311   0.0
 Launch PME GPU ops.       2    5     450010       2.727         67.993   3.4
 Wait PME Recv. PP X       2    5      50001       2.275         56.707   2.9
 Wait PME GPU spread       2    5      50001       2.270         56.592   2.9
 Wait GPU FFT to PME       2    5      50001       9.419        234.810  11.9
 PME Halo exch comm        2    5     100002       4.005         99.837   5.0
--------------------------------------------------------------------------------
 Note that the cycle count and % columns are weighted by the number of ranks,
 while walltimes are not. Hence, with separate PME ranks, the fraction of each
 activity's walltime does not correspond to the cycle %.
--------------------------------------------------------------------------------

               Core t (s)   Wall t (s)        (%)
       Time:      793.010       39.677     1998.7
                 (ns/day)    (hour/ns)
Performance:      217.764        0.110
Finished mdrun on rank 0 Sat Nov  8 03:35:58 2025
