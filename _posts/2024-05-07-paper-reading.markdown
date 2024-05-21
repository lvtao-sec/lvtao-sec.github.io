---
layout: default
title: Paper Reading Summary
---

# Operating system

## File systems

- [Split-Level I/O Scheduling](https://dl.acm.org/doi/pdf/10.1145/2815400.2815421), SOSP'16

  > [Split-Level I/O Scheduling](https://dl.acm.org/doi/pdf/10.1145/2815400.2815421), SOSP'16

- XX



# Security



# Architecture



# TOREAD

- [A Study of Concurrency Bugs and Advanced Development Support for Actor-based Programs](https://arxiv.org/pdf/1706.07372)
- [https://songlh.github.io/paper/gfuzz.pdf](Who Goes First? Detecting Go Concurrency Bugs via Message Reordering)
- [Flipping Bits in Memory Without Accessing Them: An Experimental Study of DRAM Disturbance Errors](https://users.ece.cmu.edu/~yoonguk/papers/kim-isca14.pdf)
- [Stall-Time Fair Memory Access Scheduling for Chip Multiprocessors](https://people.inf.ethz.ch/omutlu/pub/stfm_micro07.pdf)
- [Reducing Memory Interference in Multicore Systems via Application-Aware Memory Channel Partitioning](https://people.inf.ethz.ch/omutlu/pub/memory-channel-partitioning-micro11.pdf)
- [Memory Performance Attacks:Denial of Memory Service in Multi-Core Systems](https://users.ece.cmu.edu/~omutlu/pub/mph_usenix_security07.pdf)
- [DepFast: Orchestrating Code of Quorum Systems](https://www.usenix.org/system/files/atc22-luo.pdf)

# ASPLOS24 TOREAD

- Last-Level Cache Side-Channel Attacks Are Feasible in the Modern Public Cloud

- Flexible Non-intrusive Dynamic Instrumentation for WebAssembly

- Lightweight Fault Isolation: Practical, Efficient, and Secure Software Sandboxing

- λFS: A Scalable and Elastic Distributed File System Metadata Service using Serverless Functions

- Predict; Don't React for Enabling Efficient Fine-Grain DVFS in GPUs

- Formal Mechanised Semantics of CHERI C: Capabilities, Undefined Behaviour, and Provenance

- Verifying Rust Implementation of Page Tables in a Software Enclave Hypervisor

- Merlin: Multi-tier Optimization of eBPF Code for Performance and Compactness
    > Follow up work to K2.
    >
    > Implement a LLVM pass to rewrite IR regarding two high-level optimization rules:
    >
    > - Instruction merging
    > - Replace expensive operations with cheap ones, such as replacing multiplication with shifting.
    
- Skip It: Take Control of Your Cache!

- Direct Memory Translation for Virtualized Clouds
    <details>
    > Instead of translating a virtual memory address to physical address with a multiple-level page walk,
    >
    > DMT directly maps a Virtual Memory Area to a continuous physical memory area with additional hardware registers.
    >
    > Shortcomings:
    >
    > - Applications aggressively allocating memory can lead to fragmented, unused, and waste physical memory.
    </details>

- GMT: GPU Orchestrated Memory Tiering for the Big Data Era

- BypassD: Enabling fast userspace access to shared SSDs

- AERO: Adaptive Erase Operation for Improving Lifetime and Performance of Modern NAND Flash-Based SSDs

- A Journey of a 1,000 Kernels Begins with a Single Step: A Retrospective of Deep Learning on GPUs

- Thesios: Synthesizing Accurate Counterfactual I/O Traces from I/O Samples

- Everywhere All at Once: Co-Location Attacks on Public Cloud FaaS
