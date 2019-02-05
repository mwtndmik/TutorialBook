import numpy as np

def perceptron(x1,x2,w1,w2,b):
    X = np.array([x1,x2])
    W = np.array([w1,w2])
    Y = np.sum(X*W) + b
    if Y <= 0:
        return 0
    elif Y > 0:
        return 1

def AND(x1,x2):
    return perceptron(x1, x2, 0.5, 0.5, -0.7)

def NAND(x1,x2):
    return perceptron(x1,x2, -0.5,-0.5,0.7)

def OR(x1, x2):
    return perceptron(x1,x2, 0.5, 0.5, -0.2)

"""
print(AND(0,0))
print(AND(0,1))
print(AND(1,0))
print(AND(1,1))

print(OR(0,0))
print(OR(0,1))
print(OR(1,0))
print(OR(1,1))

print(NAND(0,0))
print(NAND(0,1))
print(NAND(1,0))
print(NAND(1,1))
"""
