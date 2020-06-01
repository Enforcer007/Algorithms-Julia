using Test, Algorithms, Documenter
DocMeta.setdocmeta!(Algorithms, :DocTestSetup, :(using Algorithms); recursive=true)
doctest(Algorithms)
#@test Maths.abs_value(5)==10