# SteadyState.jl

A plate represented by 10x10 matrix, all edges are 15.0 degree, point (3, 6) is 100.0 degree. For each point, the new degree decide by the following fomula.

$$
A_{i,j} \\ = \\ \frac{1}{4} (A_{i-1,j} \\ + \\ A_{i+1,j} \\ + \\ A_{i,j-1} \\ + \\ A_{i,j+1})
$$

When all points' new value difference with the old value is smaller than 0.001, it calls steady state of the system, and the program stop and print out the current status of the plate.
