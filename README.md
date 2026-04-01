# UTTUNGA: Multi-Material Thermal Analysis Benchmark

This project demonstrates the numerical advantages of **Posit arithmetic** on the **UTTUNGA RISC-V board** compared to standard x86 IEEE 754 floating-point standards.

## The Problem
We simulate steady-state heat conduction in an automotive component made of **Aluminum** and **Carbon Fiber**. The 100:1 jump in thermal conductivity creates a "stiff" numerical interface that causes standard solvers to diverge at high precision.

## Key Features
- **Harmonic Mean Jump Coefficients:** Correctly models heat flux across material boundaries.
- **Volumetric Heat Generation:** Simulates Joule heating and chemical energy release.
- **Extreme Convergence:** Achieves $10^{-15}$ tolerance on the Uttunga board where x86 hardware fails.

## Results
| Hardware | Tolerance | Status | Iterations |
| :--- | :--- | :--- | :--- |
| x86_64 | 1e-14 | **Diverged** | N/A |
| **UTTUNGA** | **1e-15** | **Converged** | **14** |

## How to Build
1. Set the `HYPRE_DIR` in the `Makefile`.
2. Run `make`.
3. Execute: `mpirun -np 1 ./ex5_uttunga -n 100 -vis`
