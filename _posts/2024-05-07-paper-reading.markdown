---
layout: default
title: Paper Reading Summary
---

# Operating System

# Concurrency

- [Laws of Order: Expensive Synchronization in Concurrent Algorithms Cannot be Eliminated](https://dl.acm.org/doi/pdf/10.1145/1925844.1926442)

- [Effective Concurrency Testing for Distributed Systems](https://www.cs.columbia.edu/~junfeng/papers/morpheus-asplos20.pdf)
> Model checking is notoriously for state explosion in concurrency testing even coupled with partial order reduction.
> So, random work is proposed to randomly  explore interleavings.
> However, it still exploring some useless orderings.
> This paper utilizes thread conflicts in historical testing executions to predict future's conflict and thus avoid useless exploration. It looks still a kind of order reduction.

# File systems

## Local File Systems

- [Split-Level I/O Scheduling](https://dl.acm.org/doi/pdf/10.1145/2815400.2815421), SOSP'16

    > [Split-Level I/O Scheduling](https://dl.acm.org/doi/pdf/10.1145/2815400.2815421), SOSP'16


## Distributed file systems

- [Octopus: an RDMA-enabled Distributed Persistent Memory File System](http://storage.cs.tsinghua.edu.cn/papers/atc17-octopus.pdf/)

    > The bottleneck of distributed file systems:
    > - SSD + ethernet: slow device latency (ms)
    > - PM + RDMA (InfiniBand): Many data duplications among layers.
    >
    > - Data plane:
    >   - Directly access servers' PMs from clients to reduce data duplication times. 
    >   - Concurrent access are protected by locking with GCC-provided primitives at servers
    >   and unlocking at clients through RDMA atomic instructions.
    >
    > - Metadata plane:
    >   - two-phase commit with: 1) Memory-base RPC for preparation and 2) direct write for commit.
    >
    > Q: Do read/write instructions in RDMA can know if the execution fails or succeed?

- [Facebook’s Tectonic Filesystem: Efficiency from Exascale](https://www.usenix.org/system/files/fast21-pan.pdf)

- [Crail: Unification of Temporary Storage in the NodeKernel Architecture](https://www.usenix.org/system/files/atc19-stuedi.pdf) [Crail webcite](https://craillabs.github.io/)

## Kernel extension

- [VINO: Dealing With Disaster: Surviving Misbehaved Kernel Extensions](https://www.usenix.org/conference/osdi-96/dealing-disaster-surviving-misbehaved-kernel-extensions)
- [Extensibility, Safety and Performance in the SPIN Operating System](https://cseweb.ucsd.edu/~savage/papers/Sosp95.pdf)
- [Singularity: Rethinking the Software Stack](https://courses.cs.washington.edu/courses/cse551/15sp/papers/singularity-osr07.pdf)
- [Syrup: User-Defined Scheduling Across the Stack](http://stanford.edu/~kkaffes/papers/syrup.pdf)

# Security

## Kernel security

- [EPF: Evil Packet Filter](https://vatlidak.github.io/resources/epf_usenixatc23.pdf)

## Hardware security

- [WESEE: Using Malicious #VC Interrupts to Break AMD SEV-SNP](https://n.ethz.ch/~sshivaji/publications/wesee_oakland24.pdf)
- DMAAUTH: A Lightweight Pointer Integrity-based Secure Architecture to Defeat DMA Attacks

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
    > 
    > Tools: Chipyard, Rocket and BOOM core, TileLink, Hardware langauge Chisel
    > What's Enzian for?
    > Synchronous and asynchronous writebacks (flush and clean) ?

- Direct Memory Translation for Virtualized Clouds
    > Instead of translating a virtual memory address to physical address with a multiple-level page walk,
    > DMT directly maps a Virtual Memory Area to a continuous physical memory area with additional hardware registers.
    > Shortcomings:    
    > - Applications aggressively allocating memory can lead to fragmented, unused, and waste physical memory.

- GMT: GPU Orchestrated Memory Tiering for the Big Data Era

- BypassD: Enabling fast userspace access to shared SSDs

- AERO: Adaptive Erase Operation for Improving Lifetime and Performance of Modern NAND Flash-Based SSDs

- A Journey of a 1,000 Kernels Begins with a Single Step: A Retrospective of Deep Learning on GPUs

- Thesios: Synthesizing Accurate Counterfactual I/O Traces from I/O Samples

- Everywhere All at Once: Co-Location Attacks on Public Cloud FaaS
