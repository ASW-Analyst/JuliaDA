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

## Ternary Operator

x > 0 ? sqrt(x) : sqrt(-x)

## Conditional Expressions Return a Value

x = -4.0
y = if x > 0
        sqrt(x)
    else
        sqrt(-x)
    end
y

"Apply to ternary operators"
x = 9.0
y = x > 0 ? sqrt(x) : sqrt(-x)
y

## Loops

"""
2 kinds of loops, for-end and while-end
"""

## Listing 2.4 Defining a for loop
for i in [1, 2, 3]
    println(i, " is ", isodd(i) ? "odd" : "even")
end

## Listing 2.5 Defining a while loop
i = 1
while i < 4
    println(i, " is ", isodd(i) ? "odd" : "even")
    global i += 1
end

"""
In both for and while loops, you can use two special keywords:
    continue - immediately stops an interation and moves on to the next one
    break - immediately terminates the loop
"""

i = 0
while true
    global i += 1
    i > 6 && break
    iseven(i) && continue
    println(i, " is odd")
end

## Listing 2.6 Defining compound expressions using begin-end blocks or a semicolon (;)
x = -7
x < 0 && begin
    println(x)
    x += 1
    println(x)
    2 * x
end