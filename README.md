# SteadyState.jl

A plate represented by 10x10 matrix, all edges are fixed at 15.0 degree, point (3, 6) is fixed at 100.0 degree. For each point, the new degree decide by the following fomula.

$$
A_{i,j} \\ = \\ \frac{1}{4} (A_{i-1,j} \\ + \\ A_{i+1,j} \\ + \\ A_{i,j-1} \\ + \\ A_{i,j+1})
$$

When all points' new value difference with the old value is smaller than 0.001, it calls steady state of the system, and the program stop and print out the current status of the plate.

```julia
10×10 Matrix{Float64}:
 15.0  15.0     15.0     15.0     15.0      15.0     15.0     15.0     15.0     15.0
 15.0  17.7103  21.2531  26.7531  35.5716   46.4374  35.1783  25.8763  19.6761  15.0
 15.0  19.5882  25.5495  35.1881  54.0963  100.0     53.3998  33.6508  22.8286  15.0
 15.0  20.0937  26.1691  34.3551  45.6258   57.6283  44.7705  32.4994  22.9875  15.0
 15.0  19.6178  24.6801  30.4381  36.4258   40.1175  35.5564  28.5892  21.6231  15.0
 15.0  18.6989  22.496   26.2945  29.5228   30.8628  28.7491  24.6801  19.9161  15.0
 15.0  17.682   20.3132  22.722   24.5117   25.0628  23.9004  21.4667  18.3623  15.0
 15.0  16.717   18.3536  19.7717  20.7404   20.9797  20.3239  18.9264  17.0667  15.0
 15.0  15.8327  16.6144  17.2714  17.701    17.7926  17.4912  16.8489  15.9788  15.0
 15.0  15.0     15.0     15.0     15.0      15.0     15.0     15.0     15.0     15.0
```
