module SteadyState

function update_matrix(A)
    R = copy(A)
    steady = true
    for i = 2:9
        for j = 2:9
            if i != 3 || j != 6
                R[i, j] = (A[i-1, j] + A[i+1, j] + A[i, j-1] + A[i, j+1]) / 4
                if abs(R[i, j] - A[i, j]) > 0.001
                    steady = false
                end
            end
        end
    end
    R[3, 6] = 100
    (R, steady)
end

A = zeros((10, 10))
A[:, 1] .= 15
A[:, 10] .= 15
A[1, :] .= 15
A[10, :] .= 15
A[3, 6] = 100

steady = false
while (!steady)
    global A, steady
    (A, steady) = update_matrix(A)
end

show(stdout, "text/plain", A)

end # module
