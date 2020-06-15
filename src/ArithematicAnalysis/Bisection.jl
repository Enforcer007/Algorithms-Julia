"""
```jldoctest
julia> floor(ArithematicAnalysis.bisection(x->x^4-4x^3+x+4,0,3);digits=2)
1.23
```
"""
function bisection(custom_func,starting::Real,ending::Real)
    if custom_func(starting)==0
        return starting
    elseif custom_func(ending)==0
        return ending
    elseif  !_root_finder(starting,ending,custom_func)
        print("Cannot find roots between a and b")
        return Nothing
    else
        mid_point = _get_mid_point(starting,ending)
        while !_root_evaluate(mid_point,custom_func)
            if _root_finder(starting,mid_point,custom_func)
                ending = mid_point
            elseif _root_finder(mid_point,ending,custom_func)
                starting = mid_point
            end
            mid_point = _get_mid_point(starting,ending)
        end
        return mid_point
    end
end

function _get_mid_point(x::Real, y::Real)
    return x+(y-x)/2
end

function _root_evaluate(x::Real,func)
    value = func(x)
    abs_value = abs(value)
    return abs_value<10^-7
end

function _root_finder(x::Real, y::Real,func)
    x,y = func(x), func(y)
    return x * y < 0
end

# Should be Monotonic Function
function custom_func(x::Real)
    return x^4-4x^3+x+4
end
