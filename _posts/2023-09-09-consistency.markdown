# The Essence of Consistency

The concept of consistency has been applied to various domains,
e.g., the shared-memory multiprocessor and
distributed storage/memory systems.
Its **essence** is the defintion of predictable read/write behaviors
in both sequential or concurrent executions.
In other words, it is about the ordering among reads/writes.

We can categorize the consistency concept
according to the read/write object into two kinds:

- *Read/Write on one object*:
The data written by which write will be returned to a read.

- *Read/Write on different object*: 



# Instances of Consistency

## A Shared-memory Multiprocessor

- *Read/Write on one object*: Cache -> cache coherence -> MESI

- *Read/Write on different object*: Memory model

‵‵

## Distributed Memory or Storage

- Replicas -> Replica consistency -> PAXOS, RAFT

- Reorder when persisting

## Crash Inconsistency


# References


[1] https://www.cs.utexas.edu/~bornholt/post/memory-models.html

[2] https://cs.brown.edu/~mph/HerlihyW90/p463-herlihy.pdf

[3] http://www.cs.toronto.edu/~pekhimenko/courses/csc2231-f17/Papers/SequentialConsistency.pdf 
