## 15.1 Integration in Two Variables

##### Double Integral 
Intgreation of two variables 
$$\iint_D f(x,y) dA$$
- Volume of region between graph when $f(x,y) \ge 0$ on domain $D$

**Similarities Between Double and Single Integrals:**
- Double Intgerals are defined as limits of Riemann sums.
- Double integrals are evaluated using the [[Definitions#Fundamental Theorem of Calculus | Fundamental Theorem of Calculus]], but applied twice

**Integrals are broken into 3 parts**
1. Subdivision
Subdivide $[a,b]$ and $[c,d]$ by choosing partitions:
$$a=x_0 < x_1 < ... <x_N=b, \quad c = y_0<y_1<...<y_M=d$$
3. Summation
Create an $N \times M$ grid of subrectangles $R_{ij}$
5. Pasage to the limit
Choose a sample point $P_{ij}$ in each $R_{ij}$

![[Pasted image 20220228131235.png]]

##### Limit of Riemann Sums
The Riemann sum $S_{N,M}$ approaches a limit $L$ as $||P|| \rightarrow 0$ if, for all $\epsilon$ there exists $\delta > 0$  such that
$$|L-S_{N,M}| < \epsilon$$
for all partitions satisfying $||P||<\delta$ and all choices of sample points. We write 
$$\lim_{||P|| \rightarrow 0} S_{N,M}= \lim_{||P|| \rightarrow 0}\sum^N_{i=1}\sum^M_{j=1}f(P_{ij})\Delta A_{ij}=L$$
where 
$$\Delta x = \frac{b-a}{N}, \quad \Delta y = \frac{d-c}{M}$$

##### Double Integral over a Rectangle
The double integral of $f(x,y)$ over a rectangle $R$ is defined as the limit. This technique is used to find the volume of an area over a rectangle
$$\iint_R f(x,y)dA=\lim_{||P|| \rightarrow 0} \sum^N_{i=1} \sum^M_{j=1} f(P_{ij})\Delta A_{ij}$$

**Example :: Estimating Double Integral:**
> Compute the Riemann sum $S_{4,3}$ to estimate the double integral of $f(x,y)=6xy$ over $R=[1,5]×[1,4]$. Use the regular partition and upper‑right vertices of the sub‑rectangles as sample points.
> 
> 1. Calculate length of sides of subrectangle
> $$\Delta x = \frac{5-1}{4}=1, \quad \Delta y = \frac{4-1}{3}=1, \quad  \Delta A= \Delta x \Delta y = 1$$
> 2. Plug into the corresponding Riemann sum
> $$S_{4,3} = \sum^N_{i=1} \sum^M_{j=1} f(P_{ij})\Delta A_{ij}= \sum^4_{i=1}\sum^3_{j=1} (6ij)\cdot (1)$$
> 3. Sum for **Regular Partition**
> ![[Pasted image 20220228142108.png | 300]]
> $f(2,2) + f(2,3) + f(2, 4) + f(3,2) + f(3,3) + f(3, 4) +f(4,2) + f(4,3) + f(4, 4) + f(5,2) + f(5,3) + f(5, 4)  = ...$
> $6(4 + 6 + 8 + 6 + 9 + 12 + 8 + 12 + 16 + 10 + 15 + 20)=756$

##### Theorem 1: Continuous Functions Are Integrable
If a function $f$ of two variables is continuous on a rectangle $R$, then $f(x,y)$ is integrable over $R$

##### Theorem 2: Linearity of the Double Integral
Assume that $f(x,y)$ and $g(x,y)$ are integrable over a rectangle $R$. Then 
$$\text{i. } \iint_R (f(x,y) + g(x,y))dA = \iint_R f(x,y)dA + \iint_R g(x,y) dA$$
$$\text{ii. For any constant C...} \iint_R C \cdot f(x,y)dA= C \iint_R f(x,y)dA$$
**Example :: Calculating a iterated integral:**
> Evaluate the iterated integral...
> $$\int^5_1 \int^{\pi / 3} _0 x^2 \sin(y)dy dx$$
> 1. Take the inner integral (x)
> $$\int^{\pi / 3}_{x=0} x^2 \cdot \sin(y)dy =\quad x^2 \cdot [-\cos(y)]|^{\pi / 3}_0=x^2(-\cos(\frac{\pi}{3})-\cos(0))=x^2 \cdot \frac{1}{2}$$
> 2. Take the outer integral
> $$\frac{1}{2}\int^5_1 x^2dx = \frac{1}{2}[\frac{x^3}{3}]|^5_1=\frac{1}{2}(\frac{125}{3}-\frac{1}{3})=\frac{62}{3}$$

**Example :: Double Integral:**
> Evaluate the integral
> $$\iint _R \frac{23x}{y}dA, \quad R=[-2,4] \times [1,3]$$
> 1. Replace with more readable terms
> $$\iint _R \frac{23x}{y}dA = \int_{x=(-2)}^4 \int^3_1 \frac{23x}{y}dydx$$
> 2. Compute the inner integral
> $$\int^3_1 \frac{23x}{y}dy=23x\ln|y||^3_1=23x(\ln|3| - \ln |1|)$$
> 3. Compute the outer integral 
> $$(\ln|3| - \ln |1|)\int_{x=(-2)}^4 23x=(\ln|3| - \ln |1|)\cdot (\frac{23x^2}{2})|^4_{-2}=...$$
> $$(\ln|3| - \ln |1|) \cdot (\frac{23(4)^2}{2}-\frac{23(-2)^2}{2})$$
> -------
> Evaluate the integral 
> $$\iint_R y^2 \tan (x) dA,R=[0,\frac{\pi}{3}] \times [0,5]$$
> 1. Rewrite integral above
> $$\iint_R y^2 \tan (x) dA=\int^{\pi/3}_0 \int^5_0 y^2\tan(x)dydx$$
> 2. Evaluate the inner integral
> $$\tan(x)\int^5_0 y^2dy=\tan(x)(\frac{y^3}{3})|^5_0=\tan(x)(\frac{5^3}{3}-0)=\frac{125}{3}\tan(x)$$
> 3. Evaluate the outer integral
> $$\frac{125}{3} \int^{\pi/3}_0 \tan(x)=-(\frac{125}{3})(\ln|\cos(x)|)|^{\pi/3}_0=-(\frac{125}{3})(\ln|\cos(\pi/3)|-\ln|\cos(0)|)$$
> 4. Compute 
> $$-(\frac{125}{3})(\ln|\cos(\pi/3)|-\ln|\cos(0)|)=\frac{125}{3}\ln \left(2\right)$$

y^3/3.   1/3 * x^2/2.   9/2 - 4/2.   5/2 + 1/3 = 15/6 + 2/6 = 17/6