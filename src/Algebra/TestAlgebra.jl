#=
TestAlgebra:
- Julia version: 1.4.2
- Author: akhil
- Date: 2020-05-28
=#
import ..Maths
"""
    *(x, y, z...)

Multiplication operator. `x * y * z *...` calls this function with multiple
arguments, i.e. `*(x, y, z...)`.
"""
function add_value(x)
    return Maths.abs_value(x)+5
end
