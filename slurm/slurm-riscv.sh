#!/bin/bash
#SBATCH -Jrg-slurm-build-demo-riscv              # Job name
#SBATCH -N1 --cpus-per-task=4                    # Number of nodes and CPUs per node required
#SBATCH --mem-per-cpu=4G                         # Memory per core
#SBATCH -t 00:30:00                              # Duration of the job (Ex: 30 mins)
#SBATCH -p rg-nextgen-hpc                        # Partition Name
#SBATCH -o ./slurm-riscv.out
#SBATCH -C riscv,rhel                            # Request an RISC-V node running Red Hat Linux
#SBATCH -W                                       # Do not exit until the submitted job terminates.

## Print the job environment
cd $GITHUB_WORKSPACE
echo "#####################################################################"
echo "Running on $(hostname) in the CRNCH Rogues Gallery"
echo "#####################################################################"

## Build the Testing Harness, Catch2
git clone -b v$CATCH2_VERSION https://github.com/catchorg/Catch2.git
cd Catch2
cmake -B build -S . -DCMAKE_INSTALL_PREFIX=$GITHUB_WORKSPACE
cmake --build build/ --target install

## Build the project
cd $GITHUB_WORKSPACE
cmake -B build -S . -DCMAKE_BUILD_TYPE=Debug -DBUILD_DOCS=OFF -DCMAKE_INSTALL_PREFIX=$GITHUB_WORKSPACE
cmake --build build/ --target install

## Run the tests
ctest --test-dir build
