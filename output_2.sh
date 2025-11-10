There are: 95561 Atoms
Atom distribution over 30 domains: av 3185 stddev 82 min 3080 max 3324

Updating coordinates and applying constraints on the GPU.

Constraining the starting coordinates (step 0)

Constraining the coordinates at t0-dt (step 0)
Center of mass motion removal mode is Linear
We have the following groups for center of mass motion removal:
  0:  rest
RMS relative constraint deviation after constraining: 4.10e-06
Initial temperature: 283.383 K

Started mdrun on rank 0 Mon Nov 10 11:07:30 2025

           Step           Time
              0        0.00000

   Energies (kJ/mol)
           Bond          Angle    Proper Dih. Per. Imp. Dih.          LJ-14
    3.01158e+02    4.82473e+04    5.40887e+04    2.75753e+03    2.31029e+04
     Coulomb-14        LJ (SR)   Coulomb (SR)   Coul. recip.      Potential
    2.86831e+05    1.13780e+05   -1.66390e+06    1.49096e+04   -1.11988e+06
    Kinetic En.   Total Energy  Conserved En.    Temperature Pressure (bar)
    2.38143e+05   -8.81734e+05   -8.81734e+05    2.84002e+02    2.97761e+03
   Constr. rmsd
    4.10180e-06


DD  step 79 load imb.: force 17.5%  pme mesh/force 2.336

DD  step 49999 load imb.: force  9.9%  pme mesh/force 2.504
           Step           Time
          50000      100.00000

Writing checkpoint, step 50000 at Mon Nov 10 11:08:08 2025


   Energies (kJ/mol)
           Bond          Angle    Proper Dih. Per. Imp. Dih.          LJ-14
    1.67189e+04    4.54177e+04    5.36020e+04    2.51060e+03    2.00671e+04
     Coulomb-14        LJ (SR)   Coulomb (SR)   Coul. recip.      Potential
    2.80626e+05    1.11885e+05   -1.65289e+06    1.48322e+04   -1.10723e+06
    Kinetic En.   Total Energy  Conserved En.    Temperature Pressure (bar)
    2.50195e+05   -8.57032e+05   -8.81268e+05    2.98374e+02   -7.38939e+00
   Constr. rmsd
    4.10180e-06


Energy conservation over simulation part #1 of length 100 ps, time 0 to 100 ps
  Conserved energy drift: 4.87e-05 kJ/mol/ps per atom


	<======  ###############  ==>
	<====  A V E R A G E S  ====>
	<==  ###############  ======>

	Statistics over 50001 steps using 501 frames

   Energies (kJ/mol)
           Bond          Angle    Proper Dih. Per. Imp. Dih.          LJ-14
    1.60768e+04    4.54739e+04    5.37004e+04    2.59453e+03    2.02292e+04
     Coulomb-14        LJ (SR)   Coulomb (SR)   Coul. recip.      Potential
    2.80948e+05    1.11744e+05   -1.65195e+06    1.48692e+04   -1.10631e+06
    Kinetic En.   Total Energy  Conserved En.    Temperature Pressure (bar)
    2.51465e+05   -8.54849e+05   -8.81494e+05    2.99890e+02    1.37779e+02
   Constr. rmsd
    0.00000e+00

   Total Virial (kJ/mol)
    7.98931e+04    2.39821e+01   -1.61701e+02
    2.39879e+01    7.98486e+04    2.81390e+02
   -1.61693e+02    2.81401e+02    7.99116e+04

   Pressure (bar)
    1.38029e+02   -2.79696e+00    7.83403e+00
   -2.79717e+00    1.35212e+02   -5.53475e+00
    7.83378e+00   -5.53517e+00    1.40098e+02


	M E G A - F L O P S   A C C O U N T I N G

 NB=Group-cutoff nonbonded kernels    NxN=N-by-N cluster Verlet kernels
 RF=Reaction-Field  VdW=Van der Waals  QSTab=quadratic-spline table
 W3=SPC/TIP3p  W4=TIP4p (single or pairs)
 V&F=Potential and force  V=Potential only  F=Force only

 Computing:                               M-Number         M-Flops  % Flops
-----------------------------------------------------------------------------
 Pair Search distance check            7340.320448       66062.884     0.0
 NxN QSTab Elec. + LJ [F]           4554745.420992   186744562.261    97.8
 NxN QSTab Elec. + LJ [V&F]           46100.194112     2719911.453     1.4
 1,4 nonbonded interactions            2810.856216      252977.059     0.1
 Reset In Box                            59.821186         179.464     0.0
 CG-CoM                                  59.916747         179.750     0.0
 Bonds                                  540.210804       31872.437     0.0
 Angles                                1963.839276      329924.998     0.2
 Propers                               3002.060040      687471.749     0.4
 Impropers                              202.804056       42183.244     0.0
 Virial                                  48.552411         873.943     0.0
 Stop-CM                                 47.971622         479.716     0.0
 Calc-Ekin                              955.801122       25806.630     0.0
 Lincs                                    0.021520           1.291     0.0
 Lincs-Mat                                0.121824           0.487     0.0
 Constraint-V                             0.095737           0.862     0.0
 Settle                                   0.049478          18.307     0.0
-----------------------------------------------------------------------------
 Total                                               190902506.536   100.0
-----------------------------------------------------------------------------


    D O M A I N   D E C O M P O S I T I O N   S T A T I S T I C S

 av. #atoms communicated per step for force:  2 x 213279.1


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


      R E A L   C Y C L E   A N D   T I M E   A C C O U N T I N G

On 30 MPI ranks doing PP, each using 5 OpenMP threads, and
on 10 MPI ranks doing PME, each using 5 OpenMP threads

 Activity:              Num   Num      Call    Wall time         Giga-Cycles
                        Ranks Threads  Count      (s)         total sum    %
--------------------------------------------------------------------------------
 Domain decomp.           30    5        626       1.067        394.834   2.1
 DD comm. load            30    5          2       0.000          0.016   0.0
 Send X to PME            30    5      50001       0.752        278.291   1.5
 Neighbor search          30    5        626       0.522        193.116   1.0
 Launch PP GPU ops.       30    5     297502       4.000       1479.724   7.8
 Comm. coord.             30    5     148125       6.766       2503.311  13.2
 Force                    30    5      50001       2.046        757.052   4.0
 Wait + Comm. F           30    5     149001       9.002       3330.504  17.6
 PME GPU mesh *           10    5      50001      32.050       3952.423  20.9
 PME wait for PP *                                 6.352        783.326   4.1
 Wait + Recv. PME F       30    5      50001      12.140       4491.371  23.8
 Wait GPU NB nonloc.      30    5      50001       0.014          5.024   0.0
 Wait GPU NB local        30    5      50001       0.005          1.719   0.0
 Wait GPU state copy      30    5     160378       0.573        211.915   1.1
 NB X/F buffer ops.       30    5       1628       0.010          3.736   0.0
 Write traj.              30    5          1       0.016          5.878   0.0
 Constraints              30    5          2       0.000          0.098   0.0
 GPU constr. setup        30    5        626       0.079         29.222   0.2
 Kinetic energy           30    5      10001       0.072         26.671   0.1
 Comm. energies           30    5       5001       0.843        311.755   1.6
 Rest                                              0.406        150.176   0.8
--------------------------------------------------------------------------------
 Total                                            38.314      18899.215 100.0
--------------------------------------------------------------------------------
(*) Note that with separate PME ranks, the walltime column actually sums to
    twice the total reported, but the cycle count total and % are correct.
--------------------------------------------------------------------------------
 Breakdown of PME mesh activities
--------------------------------------------------------------------------------
 Wait PME GPU gather      10    5      50001       0.007          0.868   0.0
 Launch PME GPU ops.      10    5     450010       3.265        402.694   2.1
 Wait PME Recv. PP X      10    5      50001       1.373        169.278   0.9
 Wait PME GPU spread      10    5      50001       0.879        108.456   0.6
 Wait GPU FFT to PME      10    5      50001      18.164       2240.030  11.9
 PME Halo exch comm       10    5     100002       8.556       1055.071   5.6
--------------------------------------------------------------------------------
 Note that the cycle count and % columns are weighted by the number of ranks,
 while walltimes are not. Hence, with separate PME ranks, the fraction of each
 activity's walltime does not correspond to the cycle %.
--------------------------------------------------------------------------------

               Core t (s)   Wall t (s)        (%)
       Time:     7636.529       38.314    19931.6
                 (ns/day)    (hour/ns)
Performance:      225.512        0.106
Finished mdrun on rank 0 Mon Nov 10 11:08:09 2025
