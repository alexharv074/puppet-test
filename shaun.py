

def rotate(T, r):
    n = ord(r) - ord('w')
    for i in range(0, n):
        T.append(T.pop(0))
    return T

T = [0, 0, 1, 2]

while True:
    r = raw_input()
    if not r in ['w', 'x', 'y', 'z']:
        print "Enter w-z please"
        continue
    print rotate(T, r)
