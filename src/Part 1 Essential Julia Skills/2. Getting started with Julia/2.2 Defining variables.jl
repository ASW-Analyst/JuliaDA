# Defining variables
x = 1
y = [1, 2, 3]

""" 
Important note difference with R. In Julia the assignemnt operator only binds values to variables.
Similar to Python, doesn't copy like R. So x = [2, 4] and y = x, means that if x[1] = 20 both x and
y = [20, 4], rather than in R x = [20, 4] and y = [2, 4]
"""

"""
Julia dynamically typed so data types can change when variables reassigned
"""

x = 1
x
typeof(x)

x = 0.1
x
typeof(x)

"""
Whilst Julia can write to different dataypes for the same variable, writing
type-stable code is important for performance.
"""
