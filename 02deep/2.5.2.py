import numpy as np
import gate

def XOR(x1,x2):
    y1 = gate.NAND(x1,x2)
    y2 = gate.OR(x1, x2)
    z = gate.AND(y1,y2)
    return z

print(XOR(0,0))
print(XOR(0,1))
print(XOR(1,0))
print(XOR(1,1))
