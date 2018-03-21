A = [["a", "b", "c"], ["d", "e", "f"]]
B = [["g", "h" , "i", "j"], ["k", "l", "m", "n", "o", "p", "q", "r", "s", "t"]]
C = [["u", "v"], ["w"]]

vowels = ["a", "e", "i", "o", "u"]

def flatten(l):
    return [item for sublist in l for item in sublist]

def longest(li):
    return max(len(li), *map(longest, li)) if isinstance(li, list) and li else 0

def shaun_sort(data):
    prime = []

    vs = []; cs = []
    doing_vowels = True

    flat = flatten(data)
    for l in flat:
        if doing_vowels and l in vowels:
            vs.append(l)
        elif doing_vowels and l not in vowels:
            cs.append(l)
            prime.append(vs)
            vs = []
            doing_vowels = False
        elif not doing_vowels and l not in vowels:
            cs.append(l)
        else:
            vs.append(l)
            prime.append(cs)
            cs = []
            doing_vowels = True

    if doing_vowels:
        prime.append(vs)
    else:
        prime.append(cs)

    return prime

A_prime = shaun_sort(A)
B_prime = shaun_sort(B)
C_prime = shaun_sort(C)

data = [A_prime, B_prime, C_prime]

D = []
for i in range(0, longest(data)):

    el = []
    for j in range(0, len(data)):
        try:
            el = el + data[j][i]
        except IndexError:
            pass

    D.append(sorted(el))

print D


