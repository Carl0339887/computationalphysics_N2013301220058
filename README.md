Computational physics
-----

###Two minor **mistakes** the teacher made:

 - The  name of the famous package for first-principle calculations is *Vienna Ab-initio Simulation Package* (VASP), but the teacher took it as **WASP**. I noticed it and secretly  corrected it in the short break between lessons by wiping out the front "V" of the strike of "W" he put on the blackboard.  Of course,  he didn't find it.
 
 - The teacher mistook the name of *Phys.Rev.Lett* as "Physics Review Letter", but actually it should be **Physical Review Letters**. If it was not his slip of the tongue, I don't think the teacher have read [*LIGO*'s paper on Gravitational Waves](http://journals.aps.org/prl/abstract/10.1103/PhysRevLett.116.061102).
 - The standard pronunciation of LaTeX is ['leitek] but not ['leiteks]

### My **complaint** about the assessment rule

Though keep training may improve one's skill in programming, I still want to give this uncanny assessment rule, which high lights the **length** in stead of the **quality** of your homework, an inequality: $ln( x-1)>0.$ I think most of the rule-taker share the same opinion of mine.

### Code demo


```python
a = 2 ** 100000
digit = {0: 0, 1: 0, 2: 0, 3: 0, 4: 0, 5: 0, 6: 0, 7: 0, 8: 0, 9: 0}


def count_digit(num):
    while num > 0:
        d = num % 10
        num //= 10
        digit[d] += 1
    return digit

count_digit(a)
summation = 0
for i in range(0, 9):
    summation += digit[i]

print digit
print summation
```

