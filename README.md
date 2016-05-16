Computational physics (Qiang Yihua)
-----

### Homework
- [Demo(Print words)](https://github.com/Carl0339887/computationalphysics_N2013301220058/blob/master/homework/Print%20any%20words.md)
- [Ch1 Ex1.6 Report](https://github.com/Carl0339887/computationalphysics_N2013301220058/blob/master/homework/EX1.6.pdf)
- [Ch1 Ex1.6 Code](https://github.com/Carl0339887/computationalphysics_N2013301220058/blob/master/homework/Code_ex_1.6.md)
- [Ch2 report1](https://github.com/Carl0339887/computationalphysics_N2013301220058/blob/master/homework/Ch2_report.pdf)
- [Ch2 Cannon Code](https://github.com/Carl0339887/computationalphysics_N2013301220058/blob/master/homework/CH2code1.md)
- [Ch3 Report1](https://github.com/Carl0339887/computationalphysics_N2013301220058/blob/master/homework/Chap3_report.pdf)
- [Ch3 Code1](https://github.com/Carl0339887/computationalphysics_N2013301220058/blob/master/homework/chap3_code.md)
- [Ch3 Report2](https://github.com/Carl0339887/computationalphysics_N2013301220058/blob/master/homework/Chap3Ex12.pdf)
- [Ch3 Code2](https://github.com/Carl0339887/computationalphysics_N2013301220058/blob/master/homework/Chap3Ex12.md)
- [Ch3 Code3](https://github.com/Carl0339887/computationalphysics_N2013301220058/blob/master/homework/Code_Ex3.26.md)
- [Ch3 Report3](https://github.com/Carl0339887/computationalphysics_N2013301220058/blob/master/homework/Chap_3c.pdf)
- [Ch4 Report1](https://github.com/Carl0339887/computationalphysics_N2013301220058/blob/master/homework/Chap4_ex4.7.pdf)
- [Ch4 Code1](https://github.com/Carl0339887/computationalphysics_N2013301220058/blob/master/homework/Chap4Code1.md)
- [Ch4 Code2](https://github.com/Carl0339887/computationalphysics_N2013301220058/blob/master/homework/Ch_4code2.md)
 

<!--![](http://matplotlib.org/_images/lorenz_attractor.png)-->
![te](https://upload.wikimedia.org/wikipedia/commons/e/ef/Hyperion_false_color.jpg)



<!-- 
![Test](https://github.com/Carl0339887/computationalphysics_N2013301220058/blob/master/homework/2.gif)
ahahhhhhhh
-->

### Code demo
```python
fib = [1,1]
def fibonacci(n):
  for i in range(n):
    fib.append(fib[-1]+fib[-2])

fibonacci(8)
print 'DO NOT click "Raw" of README.md'
```

<!--

I wrote a program to count how many digits and what they are in number $2^{100000}$
```python
a = 2 ** 100000
digit = {}
i = 0
for i in range(0, 10):
    digit[i] = 0


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

>```python
>{0: 2991, 1: 2969, 2: 3068, 3: 3075, 4: 3040, 5: 3015, 6: 2952, 7: 3052, 8: 2932, 9: 3009}
>27094
>```
What a **large** number! There are 2991 zeros, 2969 ones and so on, with a total of 27094 digits! Hopefully, my Mac can cope with it in several seconds, ahahhhhh~~

I wrote the following program to explore the nuance between **pass-by-reference** and **pass-by-value**
```python
def apd(alist):
    alist.append('suffix')
    return


def plus(alist):
    alist = alist + ['suffix']
    return


list = [1,2,3]
plus(list)
print 'result of "+":', list
apd(list)
print 'result of "list.append()":', list

```
>```python
> result of "+": [1, 2, 3]
> result of "list.append()": [1, 2, 3, 'suffix']
>```


### Two minor **mistakes** the teacher made:

 - The  name of the famous package for first-principle calculations is *Vienna Ab-initio Simulation Package* (VASP), but the teacher took it as *WASP*. (I corrected it in the short break between classes by wiping out the front "V" of the stroke of "W" on the black board.)
 
 - The teacher mistook the name of *Phys.Rev.Lett* as "Physics Review Letter", but actually it should be **Physical Review Letters**. If it was not his slip of the tongue, I don't think the teacher have read [*LIGO*'s paper on *Gravitational Waves*](http://journals.aps.org/prl/abstract/10.1103/PhysRevLett.116.061102).
 - The standard pronunciation of LaTeX is ['leitek] but not ['leiteks] or ['la:tek] or [la'tek]. *TeX* should be read the same as *Tech*, moreover, the pronunciation of 'ch' is similar to the part of 'Ach' in German and 'Loch' in Scotch or $\chi$ in Greek. If your terminal is as smart as mine, you can put command '*say LaTeX*' then <*enter*> and you'll get it.(By the way, it can even tell you *Mac OS X* shoud be read as "mac os **ten**")

### My **complaint** about the assessment rule

Though keep training may improve one's skill in programming, I still want to give this uncanny assessment rule, which high lights the **length** in stead of the **quality** of your homework, an inequality: $ln(x-1)>0.$ If you do not understand the inequlity, that means I am right. If you do, then we share the same point of view~
-->
