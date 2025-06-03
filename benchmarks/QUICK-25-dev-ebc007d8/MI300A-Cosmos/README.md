# Comments
Benchmarks run by Andreas Goetz 5/30/2025, 6/3/2025


# Hardware stack
SDSC Cosmos MI300A nodes
- 4x MI300A APUs
- 24 x86 cores each
- VAST file system (both for QUICK install and benchmarks)OB


# Software stack
- QUICK 25 development
-- commmit ID ebc007d83cbef889d
-- (based on e63c81dc23592383ac1d3)
- GNU Fortran (SUSE Linux) 13.2.1 20230912 [revision b96e66fd4ef3e36983969fb8cdd1956f551a074b]
- AMD clang version 18.0.0git (https://github.com/RadeonOpenCompute/llvm-project roc-6.3.0 24455 f24aa3b4a91f6ee2fcd15629ba0b49fa545d8d6b)
- ROCm 6.3.0


# Modules
Modules loaded
- PrgEnv-gnu-amd/8.5.0
- craype-accel-amd-gfx942

Modules unloaded
- cray-mpich/8.1.30
- cray-libsci/24.07.0

Currently Loaded Modulefiles:
  1) craype-x86-rome                                 7) cray-dsmml/0.3.0
  2) perftools-base/24.07.0                          8) libfabric/1.20.1
  3) xpmem/2.9.6-1.1_20240510205610__g087dc11fc19d   9) craype-network-ofi
  4) gcc-native/13.2                                10) PrgEnv-gnu-amd/8.5.0
  5) amd/6.3.0                                      11) craype-accel-amd-gfx942
  6) craype/2.7.32


# Compilation

cmake .. -DCMAKE_BUILD_TYPE=RELEASE -DOPTIMIZE=TRUE -DCOMPILER=MANUAL -DCMAKE_C_COMPILER=amdclang -DCMAKE_CXX_COMPILER=amdclang++ -DCMAKE_Fortran_COMPILER=gfortran-13 -DCMAKE_C_FLAGS="-O2" -DCMAKE_CXX_FLAGS="-O2" -DCMAKE_Fortran_FLAGS="-O2 -ftree-vectorize -funroll-loops -ffast-math" -DMPI=FALSE -DHIP=TRUE -DENABLEF=FALSE -DQUICK_USER_ARCH=gfx942 -DCMAKE_INSTALL_PREFIX=../install-cray-amd
