There are: 95561 Atoms
Atom distribution over 7 domains: av 13651 stddev 201 min 13460 max 13921

Updating coordinates and applying constraints on the GPU.

Constraining the starting coordinates (step 0)

Constraining the coordinates at t0-dt (step 0)
Center of mass motion removal mode is Linear
We have the following groups for center of mass motion removal:
  0:  rest
RMS relative constraint deviation after constraining: 4.00e-06
Initial temperature: 283.382 K

Started mdrun on rank 0 Sat Nov  1 02:22:07 2025

           Step           Time
              0        0.00000

   Energies (kJ/mol)
           Bond          Angle    Proper Dih. Per. Imp. Dih.          LJ-14
    3.01156e+02    4.82473e+04    5.40887e+04    2.75753e+03    2.31029e+04
     Coulomb-14        LJ (SR)   Coulomb (SR)   Coul. recip.      Potential
    2.86831e+05    1.13780e+05   -1.66389e+06    1.49096e+04   -1.11988e+06
    Kinetic En.   Total Energy  Conserved En.    Temperature Pressure (bar)
    2.38143e+05   -8.81732e+05   -8.81732e+05    2.84002e+02    2.97766e+03
   Constr. rmsd
    4.00011e-06


DD  step 79 load imb.: force  2.1%  pme mesh/force 3.560
step 12960: timed with pme grid 100 100 100, coulomb cutoff 0.900: 58.0 M-cycles
step 13120: timed with pme grid 84 84 84, coulomb cutoff 1.051: 62.1 M-cycles
step 13280: timed with pme grid 72 72 72, coulomb cutoff 1.226: 74.1 M-cycles
step 13440: timed with pme grid 80 80 80, coulomb cutoff 1.103: 58.1 M-cycles
step 13600: timed with pme grid 84 84 84, coulomb cutoff 1.051: 55.2 M-cycles
step 13760: timed with pme grid 96 96 96, coulomb cutoff 0.919: 56.3 M-cycles
step 13920: timed with pme grid 100 100 100, coulomb cutoff 0.900: 56.6 M-cycles
step 14080: timed with pme grid 80 80 80, coulomb cutoff 1.103: 56.7 M-cycles
step 14240: timed with pme grid 84 84 84, coulomb cutoff 1.051: 56.6 M-cycles
step 14400: timed with pme grid 96 96 96, coulomb cutoff 0.919: 54.3 M-cycles
step 14560: timed with pme grid 100 100 100, coulomb cutoff 0.900: 55.7 M-cycles
step 14720: timed with pme grid 80 80 80, coulomb cutoff 1.103: 56.9 M-cycles
step 14880: timed with pme grid 84 84 84, coulomb cutoff 1.051: 58.1 M-cycles
step 15040: timed with pme grid 96 96 96, coulomb cutoff 0.919: 55.8 M-cycles
step 15200: timed with pme grid 100 100 100, coulomb cutoff 0.900: 54.1 M-cycles
step 15360: timed with pme grid 80 80 80, coulomb cutoff 1.103: 56.0 M-cycles
step 15520: timed with pme grid 84 84 84, coulomb cutoff 1.051: 57.1 M-cycles
step 15680: timed with pme grid 96 96 96, coulomb cutoff 0.919: 55.7 M-cycles
step 15840: timed with pme grid 100 100 100, coulomb cutoff 0.900: 55.3 M-cycles
              optimal pme grid 100 100 100, coulomb cutoff 0.900

DD  step 49999 load imb.: force  9.1%  pme mesh/force 0.410
           Step           Time
          50000      100.00000

Writing checkpoint, step 50000 at Sat Nov  1 02:22:33 2025


   Energies (kJ/mol)
           Bond          Angle    Proper Dih. Per. Imp. Dih.          LJ-14
    1.63175e+04    4.64401e+04    5.35833e+04    2.62165e+03    2.02590e+04
     Coulomb-14        LJ (SR)   Coulomb (SR)   Coul. recip.      Potential
    2.80901e+05    1.13304e+05   -1.65707e+06    1.45427e+04   -1.10910e+06
    Kinetic En.   Total Energy  Conserved En.    Temperature Pressure (bar)
    2.50958e+05   -8.58141e+05   -8.81358e+05    2.99285e+02    1.04023e+02
   Constr. rmsd
    4.00011e-06


Energy conservation over simulation part #1 of length 100 ps, time 0 to 100 ps
  Conserved energy drift: 3.92e-05 kJ/mol/ps per atom


	<======  ###############  ==>
	<====  A V E R A G E S  ====>
	<==  ###############  ======>

	Statistics over 50001 steps using 501 frames

   Energies (kJ/mol)
           Bond          Angle    Proper Dih. Per. Imp. Dih.          LJ-14
    1.61086e+04    4.56038e+04    5.36185e+04    2.59463e+03    2.02111e+04
     Coulomb-14        LJ (SR)   Coulomb (SR)   Coul. recip.      Potential
    2.80938e+05    1.11899e+05   -1.65209e+06    1.46163e+04   -1.10650e+06
    Kinetic En.   Total Energy  Conserved En.    Temperature Pressure (bar)
    2.51487e+05   -8.55017e+05   -8.81521e+05    2.99916e+02    1.29589e+02
   Constr. rmsd
    0.00000e+00

   Total Virial (kJ/mol)
    7.98908e+04   -1.82948e+02    7.10483e+01
   -1.82953e+02    8.01642e+04   -2.94684e+00
    7.10259e+01   -2.94684e+00    8.03221e+04

   Pressure (bar)
    1.38694e+02    4.25490e+00   -9.90089e-02
    4.25507e+00    1.25408e+02    4.67458e+00
   -9.82258e-02    4.67458e+00    1.24664e+02


	M E G A - F L O P S   A C C O U N T I N G

 NB=Group-cutoff nonbonded kernels    NxN=N-by-N cluster Verlet kernels
 RF=Reaction-Field  VdW=Van der Waals  QSTab=quadratic-spline table
 W3=SPC/TIP3p  W4=TIP4p (single or pairs)
 V&F=Potential and force  V=Potential only  F=Force only

 Computing:                               M-Number         M-Flops  % Flops
-----------------------------------------------------------------------------
 Pair Search distance check            6782.461072       61042.150     0.0
 NxN Ewald Elec. + LJ [F]           4025302.716032   265669979.258    97.9
 NxN Ewald Elec. + LJ [V&F]           40724.102464     4357478.964     1.6
 1,4 nonbonded interactions            2810.856216      252977.059     0.1
 Reset In Box                            59.821186         179.464     0.0
 CG-CoM                                  59.916747         179.750     0.0
 Bonds                                  540.210804       31872.437     0.0
 Angles                                1963.839276      329924.998     0.1
 Propers                               3002.060040      687471.749     0.3
 Impropers                              202.804056       42183.244     0.0
 Virial                                  48.033876         864.610     0.0
 Stop-CM                                 47.971622         479.716     0.0
 Calc-Ekin                              955.801122       25806.630     0.0
 Lincs                                    0.021520           1.291     0.0
 Lincs-Mat                                0.121824           0.487     0.0
 Constraint-V                             0.095737           0.862     0.0
 Settle                                   0.049478          18.307     0.0
-----------------------------------------------------------------------------
 Total                                               271460460.977   100.0
-----------------------------------------------------------------------------


    D O M A I N   D E C O M P O S I T I O N   S T A T I S T I C S

 av. #atoms communicated per step for force:  2 x 76809.3


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


      R E A L   C Y C L E   A N D   T I M E   A C C O U N T I N G

On 7 MPI ranks doing PP, each using 5 OpenMP threads, and
on 1 MPI rank doing PME, using 5 OpenMP threads

 Activity:              Num   Num      Call    Wall time         Giga-Cycles
                        Ranks Threads  Count      (s)         total sum    %
--------------------------------------------------------------------------------
 Domain decomp.            7    5        626       9.609        672.422  32.1
 DD comm. load             7    5          2       0.000          0.005   0.0
 Send X to PME             7    5      50001       0.648         45.315   2.2
 Neighbor search           7    5        626       0.834         58.334   2.8
 Launch PP GPU ops.        7    5     198910       2.356        164.885   7.9
 Comm. coord.              7    5      49533       2.406        168.363   8.0
 Force                     7    5      50001       4.200        293.869  14.0
 Wait + Comm. F            7    5      50160       3.761        263.179  12.6
 PME GPU mesh *            1    5      50001       4.147         41.459   2.0
 PME wait for PP *                                22.033        220.250  10.5
 Wait + Recv. PME F        7    5      50001       0.691         48.361   2.3
 Wait GPU NB nonloc.       7    5      50001       0.002          0.164   0.0
 Wait GPU NB local         7    5      50001       0.002          0.153   0.0
 Wait GPU state copy       7    5     161003       0.545         38.149   1.8
 NB X/F buffer ops.        7    5       1628       0.013          0.886   0.0
 Write traj.               7    5          1       0.047          3.318   0.2
 Constraints               7    5          2       0.000          0.016   0.0
 GPU constr. setup         7    5        626       0.117          8.179   0.4
 Kinetic energy            7    5      10001       0.155         10.830   0.5
 Comm. energies            7    5       5001       0.643         45.000   2.1
 Rest                                              0.155         10.844   0.5
--------------------------------------------------------------------------------
 Total                                            26.185       2094.025 100.0
--------------------------------------------------------------------------------
(*) Note that with separate PME ranks, the walltime column actually sums to
    twice the total reported, but the cycle count total and % are correct.
--------------------------------------------------------------------------------
 Breakdown of PME mesh activities
--------------------------------------------------------------------------------
 Wait PME GPU gather       1    5      50001       0.026          0.257   0.0
 Launch PME GPU ops.       1    5     750035       2.552         25.511   1.2
 Wait PME Recv. PP X       1    5     350007       1.805         18.048   0.9
--------------------------------------------------------------------------------
 Note that the cycle count and % columns are weighted by the number of ranks,
 while walltimes are not. Hence, with separate PME ranks, the fraction of each
 activity's walltime does not correspond to the cycle %.
--------------------------------------------------------------------------------

NOTE: 32 % of the run time was spent in domain decomposition,
      3 % of the run time was spent in pair search,
      you might want to increase nstlist (this has no effect on accuracy)

               Core t (s)   Wall t (s)        (%)
       Time:     1046.991       26.185     3998.5
                 (ns/day)    (hour/ns)
Performance:      329.971        0.073
Finished mdrun on rank 0 Sat Nov  1 02:22:33 2025
