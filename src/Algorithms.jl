#=
Algorithms:
- Julia version: 1.4.2
- Author: akhil
- Date: 2020-05-28
=#
module Algorithms
include("Maths/Maths.jl") # Maths Directory
include("Algebra/Algebra.jl") # Algebra Directory
include("ArithematicAnalysis/ArithematicAnalysis.jl") #ArithematicAnalysis

export Maths
export Algebra
export ArithematicAnalysis
end
