using LinearAlgebra

function polar_force(force,angle)
    return force.*[sin(deg2rad(angle)), cos(deg2rad(angle))]
end

function moments(forces, locations)
    sum = zeros(3)
    for force_loc in zip(forces, locations)
        force, location = force_loc
        force = vcat(force,[0])
        location = vcat(location,[0])
        res = cross(force, location)
        print(res)
        sum+=res
    end
    sum
end

#forces = [polar_force(718.4, 180 - 30), polar_force(879.54, 45), polar_force(100, -90)]
forces = [[0, -2000], [0, -1200], [0, 15600], [0, -12400]]
location = [[0, 0], [6, 0], [10, 0], [12, 0]]
print(moments(forces, location))