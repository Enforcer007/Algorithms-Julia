#=
ArithematicAnalysis:
- Julia version: 1.4.2
- Author: akhil
- Date: 2020-05-28
=#
module ArithematicAnalysis
    include("Bisection.jl")
    include("GaussianElimination.jl")
    include("StaticEquilibrium.jl")
end