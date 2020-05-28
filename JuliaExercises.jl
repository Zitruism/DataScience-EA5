#=
JuliaExercises:
- Julia version: 
- Author: Philipp
- Date: 2020-05-28
=#

#=
Exercise 3 (JULIA)
Create a 2x4 two dimensional matrix with random floats in it and in the next step determine the biggest element.
=#

matrix = rand(2,4)
maximum(matrix)


#=
Exercise 4 (JULIA)
1. Create two matrices of the same layout and test if addition and subtraction of the matrix works as expected: C = A + B
2. Now compare matrix multiplication either this way A * B and this way A .* B. Whats the difference?!
3. What about matrix division with "/" or "\"?!
4. Create a 3x3 integer matrix A with useful numbers. Now try A+1, A-1, A*2, A/2.
5. Now multiply a 3x4 matrix with a suitable (4)vector.
=#

#=
1. Create two matrices of the same layout and test if addition and subtraction of the matrix works as expected: C = A + B
=#
println("1. Create two matrices of the same layout and test if addition and subtraction of the matrix works as expected: C = A + B")
A = [r + c*c for r in 1:2, c in 1:2]
B = [r + c*c*c for r in 1:2, c in 1:2]
println("Matrix A: ", A)
println("Matrix B: ", B)
C = A + B
println("Adding A + B = C = ", C)
D = A - B
println("Subtracting A - B = D = ", D)
println("Subtracting C - A = B = ", C - A)
println("Addition and Subtraction of two matrices of the same layout seem to work as expected.")

#=
2. Now compare matrix multiplication either this way A * B and this way A .* B. Whats the difference?!
=#
println("")
println("2. Now compare matrix multiplication either this way A * B and this way A .* B. Whats the difference?!")
println("Matrix A: ", A)
println("Matrix B: ", B)
println("A * B = ", A * B)
println("A .* B = ", A .* B)
println("A * B is a normal matrix multiplication whereas A .* B is computing the result elementwise (vectorized). It multiplicates each cell of the matrix separately.")

#=
3. What about matrix division with "/" or "\"?!
=#
println("")
println("3. What about matrix division with \"/\" or \"\\\"?!")
println("Matrix A: ", A)
println("Matrix B: ", B)
println("A / B = ", A / B)
println("A \\ B = ", A \ B)
println("inv(A) * B = ", inv(A) * B)
println("A / B is a normal division, whereas A \\ B performs a multiplication with the inverse value of A e.g. A \\ B = inv(A) * B")
println("I just realized one of the cell values resulting from the \\ operation differs from the inv(A) * B value at the same position. I don't know why this is happening... as far as I know the two expressions should be identical.")

#=
4. Create a 3x3 integer matrix A with useful numbers. Now try A+1, A-1, A*2, A/2.
=#
println("")
println("4. Create a 3x3 integer matrix A with useful numbers. Now try A+1, A-1, A*2, A/2.")
A = rand(1:10, 3, 3)
println("Matrix A: ", A)
#=println("A+1 = ", A + 1)=#
println("A+1 throws an error => ERROR: LoadError: MethodError: no method matching +(::Array{Int64,2}, ::Int64)")
#=println("A-1 = ", A - 1)=#
println("A-1 throws an error => ERROR: LoadError: MethodError: no method matching -(::Array{Int64,2}, ::Int64)")
println("A*2 = ", A * 2)
println("A/2 = ", A / 2)
println("The operators * and / seem to work fine for integer values where on the other hand the operators + and - can't be applied directly and throw an error.")

#=
5. Now multiply a 3x4 matrix with a suitable (4)vector.
=#
println("")
println("5. Now multiply a 3x4 matrix with a suitable (4)vector.")
A = rand(1:10, 3, 4)
vB = rand(1:10, 4, 1)
println("3x4 Matrix A = ", A)
println("(4) vector vB = ", vB)
println("A * vB = ", A * vB)

