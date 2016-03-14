#Print words

###1. Introduction

- Only capital letters and whitespace will be printed. Lower-case letters will be converted to capital ones. **Asterisk** — **'*'** will be printed as a heart '♥'. Any other character will be printed as whitespace.
- The using of dictionary as well as a quite **concise** loop is a feature of this program.
- Showing patterns in positive or inverted or **even random** ones are supported. Choose 'all' to try all these three types.

> A demo:
> - Input: I * Physics
> - Choose 'all'.
> Then we get ![Demo](https://raw.githubusercontent.com/Carl0339887/computationalphysics_N2013301220058/master/homework/result.png)

###2.Code

```python
# -*- coding=utf-8
"""
This program aims to print the letter you want on the screen.
"""
import random
############### Alphabet #################

######## A ~ G #############
a = 'A'
A = {(0,4):a}
for stroke in range(5):
    if stroke < 3:
        A[stroke+1,3-stroke] = A[stroke+1,5+stroke] = a
    A[stroke+4,1] = A[stroke+4,7] = A[4,stroke+2] = a


b = 'B'
B = {(0,2):b, (0,3):b, (0,4):b, (0,5):b, (1,2):b, (1,6):b, (2,2):b, (2,6):b, (3,2):b, (3,6):b, (4,2):b, (4,3):b, (4,4):b, (4,5):b, (4,6):b, (5,2):b, (5,7):b, (6,2):b, (6,7):b, (7,2):b, (7,7):b, (8,2):b, (8,3):b, (8,4):b, (8,5):b, (8,6):b, (8,7):b}

c = 'C'
C = {(0,3):c, (0,4):c, (0,5):c, (1,2):c, (1,6):c, (2,1):c, (2,7):c, (3,1):c, (4,1):c, (5,1):c, (6,1):c, (6,7):c, (7,2):c, (7,6):c, (8,3):c, (8,4):c, (8,5):c}

d = 'D'
D = {(0,1):d, (0,2):d, (0,3):d, (0,4):d, (0,5):d, (8,1):d, (8,2):d, (8,3):d, (8,4):d, (8,5):d, (1,1):d, (2,1):d, (3,1):d, (4,1):d, (5,1):d, (6,1):d, (7,1):d, (7,6):d, (1,6):d, (2,7):d, (3,7):d, (4,7):d, (5,7):d, (6,7):d}

e = 'E'
E = {}
for stroke in range(6):
    E[0,stroke+2] = E[8,stroke+2] = e
for stroke in range(5):
    E[4,stroke+2] = e
for stroke in range(4):
    E[stroke,2] = E[8-stroke,2] = e

f = 'F'
F = {}
for stroke in range(6):
    F[0,stroke+2] = f
for stroke in range(4):
    F[4,stroke+3] = f
for stroke in range(10):
    F[stroke,2] = f


g = 'G'
G = {(0,3):g, (0,4):g, (0,5):g, (1,2):g, (1,6):g, (2,1):g, (2,7):g, (3,1):g, (4,1):g, (5,1):g, (6,1):g, (6,7):g, (7,2):g, (7,6):g, (8,3):g, (8,4):g, (8,5):g}
for stroke in range(4):
    G[5,stroke+4] = G[stroke+6,7] = g

############## H ~ N ###############
h = 'H'
H = {}
for stroke in range(9):
    H[stroke,1] = H[stroke,7] = h
for stroke in range(5):
    H[4,stroke+2] = h

i = 'I'
I = {}
for stroke in range(7):
    I[0,stroke+1] = I[8,stroke+1] = i
for stroke in range(7):
    I[stroke+1,4] = i

j = 'J'
J = {}
for stroke in range(6):
    J[0,stroke+2] = j
    J[stroke+1,5] = j
J[6,2] = J[7,3] = J[8,4] = J[7,5] = j


k = 'K'
K = {}
for stroke in range(9):
    K[stroke,2] = k
for stroke in range(5):
    K[-stroke+4,stroke+3] =  K[stroke+4,stroke+3] = k

l = 'L'
L = {}
for stroke in range(9):
    L[stroke,1] = l
for stroke in range(6):
    L[8,stroke+2] = l

m = 'M'
M = {(4, 4): m}
for stroke in range(9):
    M[stroke,0] = M[stroke,8] = m
    if stroke < 3:
        M[stroke+1,stroke+1] =  M[stroke+1,-stroke+7] = m

n = 'N'
N = {}
for stroke in range(10):
    N[stroke,0] = N[stroke,8] = n
    if stroke<7:
        N[stroke+1,stroke+1] = n

############### O ~ U ###################
o = 'O'
O = {(0,3):o, (0,4):o, (0,5):o, (1,2):o, (1,6):o, (2,1):o, (2,7):o, (3,1):o, (4,1):o, (5,1):o, (6,1):o, (6,7):o, (7,2):o, (7,6):o, (8,3):o, (8,4):o, (8,5):o, (3,7):o, (4,7):o, (5,7):o}

p = 'P'
P = {}
for stroke in range(9):
    P[stroke,2] = p
    if stroke < 4:
        P[0,stroke+3] = P[4,stroke+3] = p
    if stroke < 3:
        P[stroke+1,7] = p

q = 'Q'
Q = {(0,3):q, (0,4):q, (0,5):q, (1,2):q, (1,6):q, (2,1):q, (2,7):q, (3,1):q, (4,1):q, (5,1):q, (6,1):q, (6,7):q, (7,2):q, (7,6):q, (8,3):q, (8,4):q, (8,5):q, (3,7):q, (4,7):q, (5,7):q, (6,5):q, (8,7):q, (8,8):q}

r = 'R'
R = {}
for stroke in range(9):
    R[stroke,2] = r
    if stroke < 4:
        R[0,stroke+3] = R[4,stroke+3] = r
        R[stroke+5,stroke+4] = r
    if stroke < 3:
        R[stroke+1,7] = r

s = 'S'
S = {(0,3):s, (0,4):s, (0,5):s, (1,2):s, (1,6):s, (7,2):s, (7,6):s, (8,3):s, (8,4):s, (8,5):s}
for stroke in range(5):
    S[stroke+2,stroke+2] = s

t = 'T'
T = {}
for stroke in range(8):
    T[stroke+1,4] = t
    if stroke < 7:
        T[0,stroke+1] = t

u = 'U'
U = {(7,2):u, (7,6):u}
for stroke in range(7):
    U[stroke,1] = U[stroke,7] = u
    if stroke < 3:
        U[8,stroke+3] = u

############ V ~ Z ######################
v = 'V'
V = {(8,4):v, (3,1):v, (4,1):v, (3,7):v, (4,7):v, (5,1):v, (6,2):v, (5,7):v, (6,6):v, (7,3):v, (7,5):v}
for stroke in range(3):
    V[stroke,0] = V[stroke,8] = v

w = 'W'
W = {}
W = {(4,4): w}
for stroke in range(9):
    W[stroke,0] = W[stroke,8] = w
    if stroke < 3:
        W[7-stroke,stroke+1] =  W[7-stroke,-stroke+7] = w

x = 'X'
X = {(4,4):x}
for stroke in range(4):
    X[stroke,stroke] = X[stroke,8-stroke] = X[8-stroke,stroke] = X[8-stroke,8-stroke] = x

y = 'Y'
Y = {(4,4):y,(8,4):y}
for stroke in range(4):
    Y[stroke,stroke] = Y[stroke,8-stroke] = Y[stroke+4,4] = y

z = 'Z'
Z = {}
for stroke in range(9):
    Z[0,stroke] = Z[8,stroke] = z
    if stroke < 8:
        Z[stroke+1,7-stroke] = z

heart = '♥'
HEART = {(7,4): heart}
for stroke in range(3):
    HEART[1, stroke+1] = HEART[1,7-stroke] = heart
for stroke in range(9):
    HEART[2,stroke] = HEART[3,stroke] = heart
for stroke in range(7):
    HEART[4,stroke+1] = heart
for stroke in range(5):
    HEART[5,stroke+2] = heart
for stroke in range(3):
    HEART[6,stroke+3] = heart

#########################################
alphabet = [A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z, HEART]
#########################################


words = raw_input('Input the words you want to display:\n')
def show():

    for row in range(0,9):
        for idx in range(0,len(words)):### This loop order is critical.
            for col in range(0,9):
                if 65<=ord(words[idx])<=90:
                    print alphabet[ord(words[idx])-65].get((row,col),' '),
                elif 97<=ord(words[idx])<=122:
                    print alphabet[ord(words[idx])-97].get((row,col),' '),
                elif ord(words[idx]) == 42:
                    print alphabet[ord(words[idx])-16].get((row,col),' '),
                else:
                    print ' '*8,
                    break

        print '\n',


def invert_show():

    for row in range(0,9):
        for idx in range(-1,-len(words)-1,-1):## It works!
            for col in range(0,9):
                if 65<=ord(words[idx])<=90:
                    print alphabet[ord(words[idx])-65].get((row,col),' '),
                elif 97<=ord(words[idx])<=122:
                    print alphabet[ord(words[idx])-97].get((row,col),' '),
                elif ord(words[idx]) == 42:
                    print alphabet[ord(words[idx])-16].get((row,col),' '),
                else:
                    print ' '*8,
                    break

        print '\n',



wordlist = []
for idx in range(0,len(words)):
    wordlist += words[idx]
random.shuffle(wordlist)


def random_show():

    for row in range(0,9):
        for idx in range(0,len(words)):### This loop order is critical.
            for col in range(0,9):
                if 65<=ord(wordlist[idx])<=90:
                    print alphabet[ord(wordlist[idx])-65].get((row,col),' '),
                elif 97<=ord(wordlist[idx])<=122:
                    print alphabet[ord(wordlist[idx])-97].get((row,col),' '),
                elif ord(wordlist[idx]) == 42:
                    print alphabet[ord(wordlist[idx])-16].get((row,col),' '),
                else:
                    print ' '*8,
                    break

        print '\n',


def main():
    cmd = raw_input('Choose print pattern:\n"default" -- positive sequence\n"i" -- inverted sequence\n"r" -- random sequence\n"all" to try all printing pattern\n"q" to quit.\n')
    if cmd == 'default':
        show()
    elif cmd == 'i':
        invert_show()
    elif cmd == 'r':
        random_show()
    elif cmd == 'all':
        print 'Positive pattern:\n'
        show()
        print 'Inverted:\n'
        invert_show()
        print 'Random:\n'
        random_show()
    elif cmd == 'q':
        return
    else: main()


main()
```

If you want to print letter 'A' using '#', just let a = '#', etc.

Though this program lasts 277 lines, only the last 85 lines are of a little bit more value.

###Reference

- Allen Downey et al.,2002, *How to Think Like a Computer Scientist — Learning with Python*, Green Tea Press, ISBN 0-9716775-0-6
