Author: Yiyi

If you find this tutorial is useful for your research, you can help give this repo a 🌟. Thanks!


### 🤔 How to set up the compilation and running environment for Molecular Dynamic software which supports mul-nodes with mul-gpus on Linux system? 
### 如何在Linux系统中搭建支持多节点多GPU的分子动力学 (Molecular Dynamics, MD) 模拟软件编译运行环境？ 
This tutorial shows how to set up the enviroment for building the computing science software packages in linux system, in which we can run the computing science application on multiple gpus and on multiple nodes. This can help promote the running efficiency and as a prepared step for develop for software optimization on GPUs. 

本教程介绍了如何在 Linux 系统中为构建计算科学软件包创建环境，这样我们就能在多个 GPU 和多个节点上运行计算科学应用程序。这有助于提高运行效率，并为在 GPU 上进行软件优化的开发工作做好准备。
1.  [Set up 环境搭建](#setup)
2.  [How to write a sbatch to let Gromacs running on multiple GPUs and multiple nodes. 如何去写sbatch 脚本，以便让Gromacs在多GPU和多节点上运行](#howto)
3.  [Result 结果](#result)  
### <span id="setup"></span> 1. Set up 环境搭建 
compile UCX
```
./configure CC=gcc CXX=g++ --with-cuda=$CUDA_PATH --prefix=/your_ucx_install_dir --disable-logging --disable-debug --disable-assertions
make -j
make install
```

compile MPICH
```
git clone https://github.com/pmodels/mpich.git (for non-core developers without commit rights)
git submodule update --init
./autogen.sh
```

```
module purge 
export UCX_DIR=/your_ucx_install_dir
export MPICH_PREFIX=/your_mpich_install_dir
# 1) gcc/13.3.1-p20240614   2) cuda/12.6.1 
module load gcc
module load cuda
./configure --with-device=ch4:ucx \
    --with-ucx=$UCX_DIR \
    --with-cuda=$CUDA_PATH \
    --with-hwloc=embedded \
    CFLAGS=-std=gnu11 \
    --disable-fortran \
    --prefix=$MPICH_PREFIX
make -j
make install
```
We can see in the mpich install directory:
```
bin  etc  include  lib  share
bin]$ ls
hydra_nameserver  mpic++        mpicxx         mpirun
hydra_persist     mpicc         mpiexec        mpivars
hydra_pmi_proxy   mpichversion  mpiexec.hydra  parkill
```
Compile computing science software packages, e.g. gromacs 2025.3
```
interact -p GPU --gres=gpu:1 -t 02:00:00 -A your_gpu_account
module purge 
module load gcc
module load cuda
export MY_MPICH_DIR=/your_mpich_install_dir
export MY_UCX_DIR=/your_ucx_install_dir
export GMX_PREFIX=/your_gromacs_install_dir
```
To support the cufftmp, we need to export the consistent nvshmem version, which should be compatible with your cuda version.
```
export NVSHMEM_PATH=/.../nvhpc/Linux_x86_64/25.1/comm_libs/12.6/nvshmem 
export LD_LIBRARY_PATH=$NVSHMEM_PATH/lib:$LD_LIBRARY_PATH 
```
```
export PATH=~/software/cmake/cmake-3.29.3-linux-x86_64/bin:$PATH
export CC="$MY_MPICH_DIR/bin/mpicc"
export CXX="$MY_MPICH_DIR/bin/mpicxx"
```
```
cmake .. \
  -DGMX_MPI=ON \
  -DGMX_BUILD_OWN_FFTW=ON \
  -DGMX_GPU=CUDA \
  -DGMX_SIMD=AVX2_256 \
  -DGMX_USE_CUFFTMP=ON \
  -DcuFFTMp_ROOT=/.../nvhpc/Linux_x86_64/25.1/math_libs \
  -DCMAKE_INSTALL_PREFIX=$GMX_PREFIX \
  -DCMAKE_BUILD_TYPE=Release

make -j
make install
```
### <span id="howto"></span> 2. How to write a sbatch to let Gromacs running on multiple GPUs and multiple nodes. 如何去写sbatch 脚本，以便让Gromacs在多GPU和多节点上运行
```
#!/bin/bash
#SBATCH -p GPU 
#SBATCH -A your_account
#SBATCH --job-name=gpu_TEST
#SBATCH --output=slurm-gpu-shared-%j.out
#SBATCH -N 2
#SBATCH --ntasks-per-node=8
#SBATCH --gres=gpu:8
#SBATCH --cpus-per-task=5
#SBATCH -t 00:10:00
module purge 
module load gcc
module load cuda
export MY_MPICH_DIR=/your_mpich_install_dir
export MY_UCX_DIR=/your_ucx_install_dir
export GMX_PREFIX=/your_gromacs_install_dir
export NVSHMEM_PATH=/.../nvhpc/Linux_x86_64/25.1/comm_libs/12.6/nvshmem 
export LD_LIBRARY_PATH=$NVSHMEM_PATH/lib:$LD_LIBRARY_PATH
export GMX_BIN="$GMX_PREFIX/bin/gmx_mpi"
export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK
export HYDRA_BOOTSTRAP=slurm 
```
```
cd /your_benchmark_directory
$GMX_BIN grompp -f pme_verlet.mdp -c conf.gro -p topol.top -o run_gpu_cm.tpr -maxwarn 1
```
```
# When this option is enabled, GROMACS will attempt to decompose the PME calculation tasks spatially
# (think of it as slicing the calculation grid),
# and distribute them more evenly across multiple GPU processors.
# 启用这个选项后，GROMACS 会尝试将 PME 的计算任务在空间上分解（可以想象为把计算网格切块），并更均匀地分配到多个 GPU 处理器上。
export GMX_GPU_PME_DECOMPOSITION=1 
```
```
export GMX_FORCE_GPU_AWARE_MPI=1
```
```
$MY_MPICH_DIR/bin/mpiexec -bootstrap slurm -np $SLURM_NTASKS \
    -env LD_LIBRARY_PATH $LD_LIBRARY_PATH \
    -env UCX_LOG_LEVEL info \
    -env OMP_NUM_THREADS $OMP_NUM_THREADS \
    $GMX_BIN mdrun \
    -s run_gpu_cm.tpr \
    -ntomp $SLURM_CPUS_PER_TASK \
    -nb gpu -pme gpu -pin on -nsteps 50000 -npme 1
```
### <span id="result"></span> 3. Result 结果
You can find my tutorial running result example in [output_1.sh](https://github.com/Braveoneone/MPI_Env_Note/blob/5134c1eea185696dcec9ce2eb3a52947f8466f2c/output_1.sh) and [output_2.sh](https://github.com/Braveoneone/MPI_Env_Note/blob/5134c1eea185696dcec9ce2eb3a52947f8466f2c/output_2.sh) which is a result of running Gromacs on 1 node with 8 GPUs. 
