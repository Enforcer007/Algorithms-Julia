"""jldoctest
julia> ArithmematicAnalysis.triangular_resolution([1 2;0 3],[1;2])
[-0.33333333333333326; 0.6666666666666666]
"""
function triangular_resolution(coefficients::Array{T,2},vector::Array{T,1}) where {T<:Number}
    rows, cols = size(coefficients)
    vars = Array{Float64,2}(undef,cols,1)

    calcs = zeros(Float64,rows,cols)

    for row in reverse(1:rows)
        sum = 0.0
        for i in row+1:cols
            sum+=coefficients[row,i]*vars[i]
        end
        vars[row,1] = (vector[row] - sum)/coefficients[row,row]
    end
    vars
end

"""jldoctest
julia> ArithmematicAnalysis.guassian_elimination([1 1 1; 2 3 7; 1 3 -2], [3; 0; 17])
[1.0; 4.0; -2.0]
"""
function guassian_elimination(coefficients::Array{T,2},vector::Array{T,1}) where {T<:Number}
    coeff_f::Array{Float64} = coefficients
    vector_f::Array{Float64} = vector
    rows, cols = size(coefficients)
    vars = Array{Float64,2}(undef,cols,1)
    calcs = zeros((rows,cols))

    values_cat = hcat(coeff_f,vector_f)

    for col in 1:cols
        for row in col:rows
            if col==row
                values_cat[row,:] = values_cat[row,:]./values_cat[row,col]
            else
                values_cat[row,:] = values_cat[row,:]./values_cat[row,col]-values_cat[col,:]
            end
        end
    end
    return triangular_resolution(values_cat[:,1:cols],values_cat[:,cols+1])
end
