#=
TestAlgebra:
- Julia version: 1.4.2
- Author: akhil
- Date: 2020-05-28
=#
import .Maths
function add_value(x)
    return Maths.abs_value(x)+5
end


|--Algorithms
    |-- src
       |--Algebra
             |-- algebra.jl
             |-- sum.jl
       |-- maths
             |-- maths.jl
             |-- Absolute.jl
    |-- Algorithms.jl
