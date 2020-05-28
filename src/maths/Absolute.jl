#=
Absolute:
- Julia version: 1.4.2
- Author: akhil
- Date: 2020-05-28
=#
"""
abs_value(x)

Computes Absolute Value of X
"""
function abs_value(x)
    return x>0 ? x : -x
end