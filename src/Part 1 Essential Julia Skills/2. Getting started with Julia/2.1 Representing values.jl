# Listing 2.1 Creating values by evaluating literals
1

true

"Hello World"

0.1

[1, 2, 3]

# Checking types of values
## Using the typeof command

typeof(1)

typeof(true)

typeof("Hello World!")

typeof(0.1)

typeof([1, 2, 3])

# Can check the memory layout of numbers by using the bitstring function
bitstring(1)

# Can use isa as logical test to check data type
[1, 2, 3] isa Vector{Int}

true isa String
