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
- [Ch4 Report2](https://github.com/Carl0339887/computationalphysics_N2013301220058/blob/master/homework/Chap4b.pdf)
- [Ch4 Code2](https://github.com/Carl0339887/computationalphysics_N2013301220058/blob/master/homework/Ch_4code2.md)
- [Ch5 Report1](https://github.com/Carl0339887/computationalphysics_N2013301220058/blob/master/homework/Ex5.3.pdf)
- [Ch5 Code1](https://github.com/Carl0339887/computationalphysics_N2013301220058/blob/master/homework/Chap5_code.md)
- [Ch6 Report1](https://github.com/Carl0339887/computationalphysics_N2013301220058/blob/master/homework/Chap6_report.pdf)
- [Ch6 Code1](https://github.com/Carl0339887/computationalphysics_N2013301220058/blob/master/homework/Chap6code.md)
- [Final Report](https://github.com/Carl0339887/computationalphysics_N2013301220058/blob/master/homework/Ising%20model.pdf)
- [Final Code1](https://github.com/Carl0339887/computationalphysics_N2013301220058/blob/master/homework/ising_model.f90)
- [Final Code2](https://github.com/Carl0339887/computationalphysics_N2013301220058/blob/master/homework/integral.f90)
 

<!--![](http://matplotlib.org/_images/lorenz_attractor.png)-->
![te](https://wikimedia.org/api/rest_v1/media/math/render/svg/e980ea997317a8166cdf80b3e27bce8eca5a57d7)

![eclips](http://mmbiz.qpic.cn/mmbiz_jpg/LHibUTtMHPRN3Y5zaobKI9mBVlJqWwlGcrujxEM9OibLaBg9cNS9mWVAtpEG7PKgDFqcQgd6j0wfyhojT0Q8vf1A/?wxfrom=5&wx_lazy=1)


<!-- 
![Test](https://github.com/Carl0339887/computationalphysics_N2013301220058/blob/master/homework/2.gif)
ahahhhhhhh


### Code demo
```python
fib = [1,1]
def fibonacci(n):
  for i in range(n):
    fib.append(fib[-1]+fib[-2])

fibonacci(8)
print 'DO NOT click "Raw" of README.md'
```
-->

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
== Del formula ==

{| class="wikitable" style="background: white"
|+ Table with the [[del]] operator in cartesian, cylindrical and spherical coordinates
<!-- Header -->
|-
! style="background: white" | Operation
! style="background: white" | [[Cartesian coordinates]] {{math|(''x'', ''y'', ''z'')}}
! style="background: white" | [[Cylindrical coordinates]] {{math|(''ρ'', ''φ'', ''z'')}}
! style="background: white" | [[Spherical coordinates]] {{math|(''r'', ''θ'', ''φ'')}}, where ''θ'' is the polar and {{math|''φ''}} is the azimuthal angle{{ref|Alpha|α}} 

<!-- Definition of A -->
|- align="center"
! style="background: white" | A [[vector field]] <span style="font-weight: normal">{{math|'''A'''}}</span>
| <math>A_x      \hat{\mathbf x}         + A_y      \hat{\mathbf y}         + A_z    \hat{\mathbf z}</math>
| <math>A_\rho   \hat{\boldsymbol \rho}   + A_\varphi   \hat{\boldsymbol \varphi}   + A_z    \hat{\mathbf z}</math>
| <math>A_r      \hat{\mathbf r}     + A_\theta \hat{\boldsymbol \theta} + A_\varphi \hat{\boldsymbol \varphi}</math>

<!-- grad f -->
|- align="center"
! style="background: white" | [[Gradient]] <span style="font-weight: normal">{{math|∇''f''}}</span>
| <math>{\partial f \over \partial x}\hat{\mathbf x} + {\partial f \over \partial y}\hat{\mathbf y}
+ {\partial f \over \partial z}\hat{\mathbf z}</math>
| <math>{\partial f \over \partial \rho}\hat{\boldsymbol \rho}
+ {1 \over \rho}{\partial f \over \partial \varphi}\hat{\boldsymbol \varphi}
+ {\partial f \over \partial z}\hat{\mathbf z}</math>
| <math>{\partial f \over \partial r}\hat{\mathbf r}
+ {1 \over r}{\partial f \over \partial \theta}\hat{\boldsymbol \theta}
+ {1 \over r\sin\theta}{\partial f \over \partial \varphi}\hat{\boldsymbol \varphi}</math>

<!-- div A -->
|- align="center"
! style="background: white" | [[Divergence]] <span style="font-weight: normal">{{math|∇ ⋅ '''A'''}}</span>
| <math>{\partial A_x \over \partial x} + {\partial A_y \over \partial y} + {\partial A_z \over \partial z}</math>
| <math>{1 \over \rho}{\partial \left( \rho A_\rho  \right) \over \partial \rho}
+ {1 \over \rho}{\partial A_\varphi \over \partial \varphi}
+ {\partial A_z \over \partial z}</math>
| <math>{1 \over r^2}{\partial \left( r^2 A_r \right) \over \partial r}
+ {1 \over r\sin\theta}{\partial \over \partial \theta} \left(  A_\theta\sin\theta \right)
+ {1 \over r\sin\theta}{\partial A_\varphi \over \partial \varphi}</math>

<!-- curl A -->
|- align="center"
! style="background: white" | [[Curl (mathematics)|Curl]] <span style="font-weight: normal">{{math|∇ × '''A'''}}</span>
| <math>\begin{align}
  \left(\frac{\partial A_z}{\partial y} - \frac{\partial A_y}{\partial z}\right) &\hat{\mathbf x} \\
+ \left(\frac{\partial A_x}{\partial z} - \frac{\partial A_z}{\partial x}\right) &\hat{\mathbf y} \\
+ \left(\frac{\partial A_y}{\partial x} - \frac{\partial A_x}{\partial y}\right) &\hat{\mathbf z}
\end{align}</math>
| <math>\begin{align}
  \left(
    \frac{1}{\rho} \frac{\partial A_z}{\partial \varphi}
  - \frac{\partial A_\varphi}{\partial z}
  \right) &\hat{\boldsymbol \rho} \\
+ \left(
    \frac{\partial A_\rho}{\partial z}
  - \frac{\partial A_z}{\partial \rho}
  \right) &\hat{\boldsymbol \varphi} \\
{}+ \frac{1}{\rho} \left(
    \frac{\partial \left(\rho A_\varphi\right)}{\partial \rho}
  - \frac{\partial A_\rho}{\partial \varphi}
  \right) &\hat{\mathbf z}
\end{align}</math>
| <math>\begin{align}
  \frac{1}{r\sin\theta} \left(
    \frac{\partial}{\partial \theta} \left(A_\varphi\sin\theta \right)
  - \frac{\partial A_\theta}{\partial \varphi}
  \right) &\hat{\mathbf r} \\
{}+ \frac{1}{r} \left(
    \frac{1}{\sin\theta} \frac{\partial A_r}{\partial \varphi}
  - \frac{\partial}{\partial r} \left( r A_\varphi \right)
  \right) &\hat{\boldsymbol \theta}  \\
{}+ \frac{1}{r} \left(
    \frac{\partial}{\partial r} \left( r A_{\theta} \right)
  - \frac{\partial A_r}{\partial \theta}
  \right) &\hat{\boldsymbol \varphi}
\end{align}</math>

<!-- Laplacian f -->
|- align="center"
! style="background: white" | [[Laplace operator]] <span style="font-weight: normal">{{math|∇<sup>2</sup>''f'' ≡ ∆''f''}}</span>
| <math>{\partial^2 f \over \partial x^2} + {\partial^2 f \over \partial y^2} + {\partial^2 f \over \partial z^2}</math>
| <math>{1 \over \rho}{\partial \over \partial \rho}\left(\rho {\partial f \over \partial \rho}\right)
+ {1 \over \rho^2}{\partial^2 f \over \partial \varphi^2}
+ {\partial^2 f \over \partial z^2}</math>
| <math>{1 \over r^2}{\partial \over \partial r}\!\left(r^2 {\partial f \over \partial r}\right)
\!+\!{1 \over r^2\!\sin\theta}{\partial \over \partial \theta}\!\left(\sin\theta {\partial f \over \partial \theta}\right)
\!+\!{1 \over r^2\!\sin^2\theta}{\partial^2 f \over \partial \varphi^2}
</math>

<!-- vector Laplacian A -->
|- align="center"
! style="background: white" | [[Vector Laplacian]] <span style="font-weight: normal">{{math|∇<sup>2</sup>'''A''' ≡ ∆'''A'''}}</span>
| <math>\nabla^2 A_x \hat{\mathbf x} + \nabla^2 A_y \hat{\mathbf y} + \nabla^2 A_z \hat{\mathbf z} </math>
| {{Collapsible section |content =
<math>\begin{align}
  \mathopen{}\left(\nabla^2 A_\rho - \frac{A_\rho}{\rho^2} - \frac{2}{\rho^2} \frac{\partial A_\varphi}{\partial \varphi}\right)\mathclose{} &\hat{\boldsymbol \rho} \\
+ \mathopen{}\left(\nabla^2 A_\varphi - \frac{A_\varphi}{\rho^2} + \frac{2}{\rho^2} \frac{\partial A_\rho}{\partial \varphi}\right)\mathclose{} &\hat{\boldsymbol \varphi} \\
{}+ \nabla^2 A_z &\hat{\mathbf z}
\end{align}</math>
}}
| align="center" | {{Collapsible section |content =
<math>\begin{align}
  \left(\nabla^2 A_r - \frac{2 A_r}{r^2}
  - \frac{2}{r^2\sin\theta} \frac{\partial \left(A_\theta \sin\theta\right)}{\partial\theta}
  - \frac{2}{r^2\sin\theta}{\frac{\partial A_\varphi}{\partial \varphi}}\right) &\hat{\mathbf r} \\
+ \left(\nabla^2 A_\theta - \frac{A_\theta}{r^2\sin^2\theta}
  + \frac{2}{r^2} \frac{\partial A_r}{\partial \theta}
  - \frac{2 \cos\theta}{r^2\sin^2\theta} \frac{\partial A_\varphi}{\partial \varphi}\right) &\hat{\boldsymbol \theta} \\
+ \left(\nabla^2 A_\varphi - \frac{A_\varphi}{r^2\sin^2\theta}
  + \frac{2}{r^2\sin\theta} \frac{\partial A_r}{\partial \varphi}
  + \frac{2 \cos\theta}{r^2\sin^2\theta} \frac{\partial A_\theta}{\partial \varphi}\right) &\hat{\boldsymbol \varphi}
\end{align}</math>
}}

<!-- Material derivative (A dot del)B -->
|- align="center"
! style="background: white" | [[Material derivative]]{{ref|Alpha|α}}<ref name="Mathworld">{{cite web |url=http://mathworld.wolfram.com/ConvectiveOperator.html|title=Convective Operator |author=Weisstein, Eric W. |date= |work=Mathworld |publisher= |accessdate=23 March 2011}}</ref> <span style="font-weight: normal">{{math|('''A''' ⋅ ∇)'''B'''}}</span>
<!--         Cartesian -->
| <math>\mathbf{A} \cdot \nabla B_x \hat{\mathbf x} + \mathbf{A} \cdot \nabla B_y \hat{\mathbf y} + \mathbf{A} \cdot \nabla B_z \hat{\mathbf{z}}</math>
<!--         Cylindrical \frac{\partial B_}{\partial } -->
|<math>\begin{align}
  \left(A_\rho \frac{\partial B_\rho}{\partial \rho}+\frac{A_\varphi}{\rho}\frac{\partial B_\rho}{\partial \varphi}+A_z\frac{\partial B_\rho}{\partial z}-\frac{A_\varphi B_\varphi}{\rho}\right)
  &\hat{\boldsymbol \rho} \\
+ \left(A_\rho \frac{\partial B_\varphi}{\partial \rho} + \frac{A_\varphi}{\rho}\frac{\partial B_\varphi}{\partial \varphi} + A_z\frac{\partial B_\varphi}{\partial z} + \frac{A_\varphi B_\rho}{\rho}\right)
  &\hat{\boldsymbol \varphi}\\
+ \left(A_\rho \frac{\partial B_z}{\partial \rho}+\frac{A_\varphi}{\rho}\frac{\partial B_z}{\partial \varphi}+A_z\frac{\partial B_z}{\partial z}\right)
  &\hat{\mathbf z}
\end{align}</math>
<!--         Sp -->
| align="center" | {{Collapsible section |content =
<math>\begin{align}
  \left(
    A_r \frac{\partial B_r}{\partial r}
  + \frac{A_\theta}{r} \frac{\partial B_r}{\partial \theta}
  + \frac{A_\varphi}{r\sin\theta} \frac{\partial B_r}{\partial \varphi}
  - \frac{A_\theta B_\theta + A_\varphi B_\varphi}{r}
  \right) &\hat{\mathbf r} \\
+ \left(
    A_r \frac{\partial B_\theta}{\partial r}
  + \frac{A_\theta}{r} \frac{\partial B_\theta}{\partial \theta}
  + \frac{A_\varphi}{r\sin\theta} \frac{\partial B_\theta}{\partial \varphi}
  + \frac{A_\theta B_r}{r} - \frac{A_\varphi B_\varphi\cot\theta}{r}
  \right) &\hat{\boldsymbol \theta} \\
+ \left(
    A_r \frac{\partial B_\varphi}{\partial r}
  + \frac{A_\theta}{r} \frac{\partial B_\varphi}{\partial \theta}
  + \frac{A_\varphi}{r\sin\theta} \frac{\partial B_\varphi}{\partial \varphi}
  + \frac{A_\varphi B_r}{r}
  + \frac{A_\varphi B_\theta \cot\theta}{r}
  \right) &\hat{\boldsymbol \varphi}
\end{align}</math>
}}

<!-- Tensor divergence del dot T -->
|- align="center"
! style="background: white" | Tensor divergence <span style="font-weight: normal">{{math|∇ ⋅ '''T'''}}</span>
<!-- Cartesian -->
| {{Collapsible section|content =
<math>\begin{align}
\left(\frac{\partial T_{xx}}{\partial x}+\frac{\partial T_{yx}}{\partial y}+\frac{\partial T_{zx}}{\partial z}\right)&\hat{\mathbf x} \\
+\left(\frac{\partial T_{xy}}{\partial x}+\frac{\partial T_{yy}}{\partial y}+\frac{\partial T_{zy}}{\partial z}\right)&\hat{\mathbf y} \\
+\left(\frac{\partial T_{xz}}{\partial x}+\frac{\partial T_{yz}}{\partial y}+\frac{\partial T_{zz}}{\partial z}\right)&\hat{\mathbf z}
\end{align}</math>
}}
<!-- cylindrical -->
| {{Collapsible section|content = 
<math>\begin{align}
\left[\frac{\partial T_{\rho\rho}}{\partial\rho}+\frac1\rho\frac{\partial T_{\varphi\rho}}{\partial\varphi}+\frac{\partial T_{z\rho}}{\partial z}+\frac1\rho(T_{\rho\rho}-T_{\varphi\varphi})\right]&\hat{\boldsymbol\rho} \\
+\left[\frac{\partial T_{\rho\varphi}}{\partial\rho}+\frac1\rho\frac{\partial T_{\varphi\varphi}}{\partial\varphi}+\frac{\partial T_{z\varphi}}{\partial z}+\frac1\rho(T_{\rho\varphi}+T_{\varphi\rho})\right]&\hat{\boldsymbol\varphi} \\
+\left[\frac{\partial T_{\rho z}}{\partial\rho}+\frac1\rho\frac{\partial T_{\varphi z}}{\partial\varphi}+\frac{\partial T_{zz}}{\partial z}+\frac{T_{\rho z}}\rho\right]&\hat{\mathbf z}
\end{align}</math>
}}
<!-- spherical -->
| {{Collapsible section|content = 
<math>\begin{align}
\left[\frac{\partial T_{rr}}{\partial r}+2\frac{T_{rr}}r+\frac1r\frac{\partial T_{\theta r}}{\partial\theta}+\frac{\cot\theta}rT_{\theta r}+\frac1{r\sin\theta}\frac{\partial T_{\varphi r}}{\partial\varphi}-\frac1r(T_{\theta\theta}+T_{\varphi\varphi})\right]&\hat{\mathbf r} \\
+\left[\frac{\partial T_{r\theta}}{\partial r}+2\frac{T_{r\theta}}r+\frac1r\frac{\partial T_{\theta\theta}}{\partial\theta}+\frac{\cot\theta}rT_{\theta\theta}+\frac1{r\sin\theta}\frac{\partial T_{\varphi\theta}}{\partial\varphi}+\frac{T_{\theta r}}r-\frac{\cot\theta}rT_{\varphi\varphi}\right]&\hat{\boldsymbol\theta} \\
+\left[\frac{\partial T_{r\varphi}}{\partial r}+2\frac{T_{r\varphi}}r+\frac1r\frac{\partial T_{\theta\varphi}}{\partial\theta}+\frac1{r\sin\theta}\frac{\partial T_{\varphi\varphi}}{\partial\varphi}+\frac {T_{\varphi r}}{r}+\frac{\cot\theta}{r} (T_{\theta\varphi}+T_{\varphi\theta})\right]&\hat{\boldsymbol\varphi}
\end{align}</math>
}}

<!-- Differentials displacement -->
|- align="center"
! style="background: white" | Differential displacement <span style="font-weight: normal">{{math|''d'''ℓ'''''}}</span>
| <math>dx \, \hat{\mathbf x} + dy \, \hat{\mathbf y} + dz \, \hat{\mathbf z}</math>
| <math>d\rho \, \hat{\boldsymbol \rho} + \rho \, d\varphi \, \hat{\boldsymbol \varphi} + dz \, \hat{\mathbf z}</math>
| <math>dr \, \hat{\mathbf r} + r \, d\theta \, \hat{\boldsymbol \theta} + r \, \sin\theta \, d\varphi \, \hat{\boldsymbol \varphi}</math>

<!-- Differentials normal area -->
|- align="center"
! style="background: white" | Differential normal area <span style="font-weight: normal">{{math|''d'''''S'''}}</span>
| <math>\begin{align}
  dy \, dz &\, \hat{\mathbf x} \\
{} + dx \, dz &\, \hat{\mathbf y} \\
{} + dx \, dy &\, \hat{\mathbf z}
\end{align}</math>
| <math>\begin{align}
  \rho \, d\varphi \, dz &\, \hat{\boldsymbol \rho} \\
{} + d\rho \, dz &\, \hat{\boldsymbol \varphi} \\
{} + \rho \, d\rho \, d\varphi &\, \hat{\mathbf z}
\end{align}</math>
| <math>\begin{align}
  r^2 \sin\theta \, d\theta \, d\varphi &\, \hat{\mathbf r} \\
{} + r \sin\theta \, dr \, d\varphi &\, \hat{\boldsymbol \theta} \\
{} + r \, dr \, d\theta &\, \hat{\boldsymbol \varphi}
\end{align}</math>

<!-- Differentials volume -->
|- align="center"
! style="background: white" | Differential volume <span style="font-weight: normal">{{math|''dV''}}</span>
| <math>dx \, dy \, dz</math>
| <math>\rho \, d\rho \, d\varphi \, dz</math>
| <math>r^2 \sin\theta \, dr \, d\theta \, d\varphi</math>

|}

:{{note|Alpha|α}} This page uses <math>\theta</math> for the polar angle and <math>\varphi</math> for the azimuthal angle, which is common notation in physics. The source that is used for these formulae uses <math>\theta</math> for the azimuthal angle and <math>\varphi</math> for the polar angle, which is common mathematical notation. In order to get the mathematics formulae, switch <math>\theta</math> and <math>\varphi</math> in the formulae shown in the table above.

=== Non-trivial calculation rules ===

#  <math>\operatorname{div}  \, \operatorname{grad} f          \equiv \nabla \cdot  \nabla f \equiv \nabla^2 f</math>
#  <math>\operatorname{curl} \, \operatorname{grad} f          \equiv \nabla \times \nabla f = \mathbf 0</math>
#  <math>\operatorname{div}  \, \operatorname{curl} \mathbf{A} \equiv \nabla \cdot  (\nabla \times \mathbf{A}) = 0</math>
#  <math>\operatorname{curl} \, \operatorname{curl} \mathbf{A} \equiv \nabla \times (\nabla \times \mathbf{A}) = \nabla (\nabla \cdot \mathbf{A}) - \nabla^2 \mathbf{A}</math> ([[Triple product#Vector triple product|Lagrange's formula]] for del)
#  <math>\nabla^2 (f g) = f \nabla^2 g + 2 \nabla f \cdot \nabla g + g \nabla^2 f</math>
