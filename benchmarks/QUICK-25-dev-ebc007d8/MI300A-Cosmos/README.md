# Comments
Benchmarks run by Andreas Goetz 5/30/2025


# Hardware stack
SDSC Cosmos MI300A nodes
- 4x MI300A APUs
- 24 x86 cores each


# Software stack
- QUICK 25 development version commit e63c81dc23592383ac1d3
- GCC 10.2.0
- CUDA 11.7.1


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

