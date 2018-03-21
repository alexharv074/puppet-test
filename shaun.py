A = [["a", "b", "c"], ["d", "e", "f"]]
B = [["g", "h" , "i", "j"], ["k", "l", "m", "n", "o", "p", "q", "r", "s", "t"]]
C = [["u", "v"], ["w"]]
data = [A, B, C]

vowels = ["a", "e", "i", "o", "u"]

def flatten(l):
    return [item for sublist in l for item in sublist]

D = []

for l in data:
    flat = flatten(l)
    vs = []; cs = []
    for letter in flat:
        if letter in vowels:
            vs.append(letter)
        else:
            cs.append(letter)
    D.append([sorted(vs), sorted(cs)])

print D
