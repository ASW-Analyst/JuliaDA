# Listing 2.3 Defining a conditional expression
x = -7

if x > 0
    println("positive")
elseif x < 0
    println("negative")
elseif x == 0
    println("zero")
else
    println("unexpected condition")
end

"""
Code indenting as above is helpful for presentation of code in Julia but not required as in Python
"""

"""
Julia uses IEEE 754 standard for floating point numbers so leads to inexact representation.
See example below
"""

0.1 + 0.2 == 0.3

0.1 + 0.2

isapprox(0.1 + 0.2, 0.3)

0.1 + 0.2 ≈ 0.3

## Combining conditions using and and or

"""
In Julia conditions can be combined using:
and (&&)
or (||)
"""

x = -7
x > 0 && x < 10
x < 0 || log(x) > 10
