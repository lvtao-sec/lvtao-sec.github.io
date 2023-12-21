# Concurrency and distributed systems

- [Logic clocks](https://lotabout.me/2022/Lamport-Clock-and-Vector-Clock/)
    - Logic clock: number counters
    - Lamport and vector clocks represents partial orders (not total order, have no idea about the orders among some events) of events in distributed systems.
    - **Lamport clock**: one counter at each node. If two events (e.g., A sending and B receiving) have a causality (i.e., happens-before relation), thus clock(A) < clock(B). However, given clock(A) < clock(B), we cannot say A happens before B, as the clock increases even if there is no synchronization among nodes.
    - **Vector clock** is design for that weakness of lamport clock. N counters at each node, and each of counters represent the last syncrhonized state of one node. It can conclude that A happens before B if clock(A) < clock(B), which means every counter of A is smaller than B's.

- Concurrency issues and synchronization primitives
    - [Memory barrier](https://www.alibabacloud.com/blog/memory-model-and-synchronization-primitive---part-1-memory-barrier_597460)
    - [Data race and race condition](https://blog.regehr.org/archives/490)
        - Data race: two concurrent memory access and one of them is a write.
        - Race condition: application-level atomicity

- [Fault -> error -> failure](https://tropars.github.io/downloads/lectures/Cloud/Cloud--Failures.pdf)
    - **Fault**: the root cause of the errors and failures.
    - **Error**: if the system doesn't correctly handle a fault, it would turn out as an error.
    - **Failure**: at the overall level, you get the unexpected result from a system.
    - For example, there is a network partition *fault* in a DFS. However, the system doesn't have enough machanism to process it (error), and finally leading to a split-brain problem. Thus the users would retrieve inconsistent (unexpected) data from the DFS (failure).

- [Failure model](https://moodlearchive.epfl.ch/2021-2022/pluginfile.php/3028600/mod_resource/content/1/Wk9%20-%20Dependability.pdf): When a system fails, how does that failure appear at the interface of a component?
    - **Fail-stop**: module crash failure.
    - **Fail-fast**: frequently detect system states and immediately deal with situations that might lead to failures once detecting them.
    - **Fail-safe**: the component is safe in the face of failure, but might get performance degradation, e.g., fail-slow failure, meta-stable failure, scalability failure.
    - **Fail-soft**: leads to functionality degradation.

# Formal methods

- [Lectures of model checking](https://web.stanford.edu/class/cs357/lecture12.pdf)
- [Dynamic Partial-Order Reduction for Model Checking Software](https://users.soe.ucsc.edu/~cormac/papers/popl05.pdf)
- [Partial-Order Methods for the Veri cation of Concurrent Systems](https://patricegodefroid.github.io/public_psfiles/thesis.pdf)
    > 
    > Model checking is an approach to exploring states
    in an model abstracted from implementations for checking
    the conformance to the specification/properties.
    Here the model can be in different froms, such as,
    finite state machine with S: states, T: transitions.
    >
    > Due to the need of exploring all states, it faces state explosion.
    Especially in the concurrent systems, the partial orders between
    concurrent transitions make the search space larger.
    To solve this problem,
    previous works proposed **statically** and **dynamically**
    partial order reduction,
    which skips exploring different order os transitions
    which are independent.
    >
    > Statically: persistent set, sleep set (**TODO**)
    >
    > Dynamically: 

# File systems / Storage

- [A Casefor RedundantArrays of InexpensiveDisks (RAID)](https://www.cs.cmu.edu/~garth/RAIDpaper/Patterson88.pdf)

http://www.ssdfans.com/?p=8210
https://blog.csdn.net/fengxiaocheng/article/details/103258791
https://www.cnblogs.com/zhangsanlisi411/articles/16751546.html

- Storage organization types
    - Block storage : Store data in fixed-length blocks without any other informations.
    - Object storage : Metadata and data of objects are organized in a flat view. It's more suitable for scenarios that there are no hierarchy relationship among data.
    - File storage : Files, as units, are organized in a hierarchy.

- NAS: network-attached storage

PCIe consists of:
- Memory space: the physical address of memory space can be directly mapped to virtuall address and accessed by load and store instructions.
- IO space:


# Linux kernel / OS kernel
- [rCore-Tutorial-Book: unix-like OS written in Rust](https://rcore-os.cn/rCore-Tutorial-Book-v3/index.html)
- [Eliminating Receive Livelock in an Interrupt-driven Kernel](https://cs.nyu.edu/~mwalfish/classes/ut/f09-cs395t/ref/mogul96usenix.pdf)

# Virtualization

- [Writing a hypervisor from sctratch](https://rayanfam.com/tutorials/)
- Book: Hardware and Software Support for Virtualization
- [Core slicing: closing the gap between leaky confidential VMs and bare-metal cloud](https://www.usenix.org/conference/osdi23/presentation/zhou-ziqiao)

# Kernel bypass

- Junction
- DPDK

# Unread from CCS2023

- Put Your Memory in Order: Efficient Domain-based Memory Isolation for WASM Applications
- Improving Security Tasks Using Compiler Provenance Information Recovered At the Binary-Level
- SyzDirect: Directed Greybox Fuzzing for Linux Kernel
- Formalizing, Verifying and Applying ISA Security Guarantees as Universal Contracts
- PANIC: PAN-assisted Intra-process Memory Isolation on ARM
- SpecVerilog: Adapting Information Flow Control for Secure Speculation
- Assume but Verify: Deductive Verification of Leaked Information in Concurrent Applications
- The Locality of Memory Checking
- PyRTFuzz: Detecting Bugs in Python Runtimes via Two-Level Collaborative Fuzzing
- SymGX: Detecting Cross-boundary Pointer Vulnerabilities of SGX Applications via Static Symbolic Execution
- HODOR: Shrinking Attack Surface on Node.js via System Call Limitation
- Secure and Timely GPU Execution in Cyber-physical Systems
- SysPart: Automated Temporal System Call Filtering for Binaries

# Architecture

- RISC/CISC, SoC, bus, north birdge, sourth bridge or I/O Controller Hub (ICH) or a Platform Controller Hub (PCH)

[1]. https://www.intel.com/content/dam/www/public/us/en/documents/white-papers/ia-introduction-basics-paper.pdf

# Performance

- Latency:
- Throughout:
- Bandwidth:

- Cache: https://brooker.co.za/blog/2023/12/15/sieve.html
