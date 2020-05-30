#=
Absolute:
- Julia version: 1.4.2
- Author: akhil
- Date: 2020-05-28
=#
"""
Evaluate Absolute Value of a number

# Examples
```jldoctest
julia> Maths.abs_value(5)
5
```
"""
function abs_value(x)
    return x>0 ? x : -x
end