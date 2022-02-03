Deck: Calculus

# Vector functions

## 13.1 Vector-Valued Functions
##### Vector-Valued Functions
**Definiton:** $r(t)$ is a vector that points from the origin to a particles path at a time t
> $$r(t)=\langle x(t), y(t), z(t) \rangle = x(t)i+y(t)j+z(t)k$$
-  In the equation above, variable t is a **parameter** as t is often representative of time
-  $x(t), y(t)$ and $z(t)$ are the **compontents** or **coordinate functions**
- $r(t)$ is referred to as the **vector paramtrization** of a path

**Example :: Path vs. Curve:**
> Describe the path $r(t)= \langle cos(t), sin(t), 1 \rangle, \quad - \infty < t<\infty$
> 1. Notice z is a constant and cos and sin in x and y respectively. This can be noted that it will form a circle at the height of $z=1$ 
> ![[Pasted image 20220131145851.png]]

##### Space Curve
**Definition:** A line (curve) in $\mathbb{R}^3$  visualized as...
Note: **Plane Curve** is a line in $\mathbb{R}^2$  
![[Pasted image 20220131150136.png]]

**Example :: Projecting from $\mathbb{R}^3$ onto $\mathbb{R}^2$ :** 
> Describe the curve traced by $r(t)= \langle cos(t), sin(t), t \rangle, \quad t \le 0$ for  in terms of its projections onto the coordinate planes
> 1. Onto xy-plane: set $z=0$; $r(t)= \langle cos(t), sin(t), 0 \rangle, \quad t \le 0$ = Circle
> 2. Onto xz-plane: set $y=0$; $r(t)= \langle cos(t), 0, t \rangle, \quad t \le 0$ = Swirl
> 3. Onto yz-plane: set $x=0$; $r(t)= \langle 0, sin(t), t \rangle, \quad t \le 0$ = Swirl
	> ![[Pasted image 20220131151223.png]]

**Examples:**
> 1. $r(4)$ will get us the proper x, therefore I will plug 4 into all values of t
> 2. $r(4)=(1+4, 2+4^2,4^4)=(5, 18, 256)$, therefore point P does lie on the line

> Select the correct sine and cosine parametrization $r(t)$ of the intersection of the surfaces $x^2 + y^2 =16$ and $z=3x^2$ 
> 1. Knowing we are building a circle based on equation $x^2 + y^2 =R^2$ we can assume the equation w/ the radius $x=4cos(t), y=4sin(t)$ meaning we can write the equation as $r(t)= \langle 4cos(t), 4sin(t), z \rangle$ 
> 2. We also know $z=3x^2$, therefore we replace z with this equation getting $r(t)= \langle 4cos(t), 4sin(t), 3x^2 \rangle=r(t)= \langle 4cos(t), 4sin(t), 48cos^2(t) \rangle$ 

> Let $C$ the curve be parametrized by $𝐫(𝑡)=⟨𝑡^2−1,𝑡−2𝑡^2,4−6𝑡⟩$. Evaluate $𝐫(𝑡)$ at $𝑡=0$, $𝑡=1$, and $𝑡=3$.
> 1. $v_1=r(0)=⟨−1,0,4⟩$
> 2. $v_2=r(1)=⟨0,-1,-2⟩$
> 3. $v_3=r(3)=⟨8,-15,-14⟩$
> 
> Find an equation for the plane containing $r$ at $𝑡=0$, $𝑡=1$, and $𝑡=3$.
> 1. Find a point $P_0$ where that I can multiply by the orthogonal vector using the equation $n \cdot P_0$ 
> 2. Find the vectors connecting the points of $v_1, v_2, v_3$ as shown above
> 3. $v_1=(0,-1,-2)-(-1,0,4)=\langle 1,-1,-6 \rangle$
> 4. $v_2=(8, -15, -14)-(-1,0,4)=\langle 9, -15, -18 \rangle$
> 6. Find the orthogonal vector through the cross product
> 
> $$n=v \times w =\begin{bmatrix}  
i & j & k\\  
1 & -1 & -6\\
9 & -15 & -18
\end{bmatrix} = i\begin{bmatrix}\
-1 & -6\\ -15 & -18
\end{bmatrix}
-j\begin{bmatrix}\
1 & -6\\ 9 & -18
\end{bmatrix}
+k\begin{bmatrix}\
1 & -1\\ 9 & -15
\end{bmatrix}$$
> $$=\langle -72,-36,-6 \rangle=\langle -12, 6,1 \rangle$$
> 3. Now find point $P_0$ by subtracting 2 vectors
> $$⟨8,-15,-14⟩-⟨0,-1,-2⟩=(8, -14, -12)$$
> 4. Plug in 
> $$12(-1)+6(0)+1(4)=-8$$
> $$12(𝑡^2−1)+6(𝑡−2𝑡^2)+4−6𝑡=−8$$


> Determine whether $r_1(𝑡)=⟨𝑡^2+2,𝑡+1,5𝑡−1⟩$ and $r_2(𝑡)=⟨3𝑡,2𝑡−2,𝑡^2−6⟩$ collide or intersect
> 1. They collide if $r_1(t)=r_2(t)$ where a value of t exists
> 2.  $t+1=2t-2$ equals $t=3$ but when plugged in doesn't equal out
> 3. If they don't collide, they can still intersect. We can find this out if we set $r_1(s)=r_2(t)$ which implies $t=1$ and $s=-1$, which satisfies the equations meaning the equations intersect, but don't collide at the same moment  

> The intersection of the plane $𝑦=2$ with the sphere $𝑥^2+𝑦^2+𝑧^2=104$
> 1. To find this we must plug the values into the equation, and since we know y has a radius of 2 we can create the equation $x^2+2^2+z^2=104$ where $x^2+z^2=100$
> 2. $x=\sqrt{100}cos(t) \quad z=\sqrt{100}sin(t)$ therefore $r(t)= \langle 10cos(t), 2, sin(t) \rangle$

## 13.2 Calculus of Vector-valued Functions
##### Limit of a Vector-valued Function
A vector-valued function $r(t)$ approaches the limit u (a vector) as t approaches $t_0$ if $\lim_{t\rightarrow t_0} ||r(t)-u|| = 0$ In this case, we write...
$$\lim_{t\rightarrow t_0} r(t)=u$$

##### Theorem 1: Vector-valued Limits are Computed Componentwise
A vector-valued function $r(t)= \langle x(t), y(t), z(t) \rangle$ approaches a limit as $t \rightarrow t_0$ if and only if each compontent approaches a limit
$$\lim_{t \rightarrow t_0} r(t)= \langle \lim_{t \rightarrow t_0}x(t), \lim_{t \rightarrow t_0}y(t), \lim_{t \rightarrow t_0}z(t) \rangle$$

Example :: Taking the limit of a vector-value function
> Calculate $\lim _{t \rightarrow 3} r(t)$, where $r(t)= \langle t^2, 1-t, t^{-1} \rangle$ 
> 1. Take the limit of each item individually as shown in... $\lim_{t \rightarrow t_0} r(t)= \langle \lim_{t \rightarrow t_0}x(t), \lim_{t \rightarrow t_0}y(t), \lim_{t \rightarrow t_0}z(t) \rangle$ 
> $$\lim_{t \rightarrow t_0} r(t)= \langle \lim_{t \rightarrow 3}t^2, \lim_{t \rightarrow 3}(1-t), \lim_{t \rightarrow 3}(\frac{1}{t}) \rangle= \langle 9, -2, 1/3 \rangle$$ 

##### Continuous Vector-value Function
A vector-value function is **continuous** if...
$$\lim_{t \rightarrow t_0}r(t)=t(t_0)$$
**Derivative of Theorem 1:**
$r(t)$ is continuous at $t_0$ if and only if the compontents $x(t),y(t),z(t)$ are continuous at $t_0$ 
$$r'(t)=\frac{d}{dt}r(t)=\lim_{h \rightarrow 0}\frac{r(t+h)-r(t)}{h}$$
$$\lim_{h \rightarrow 0}\frac{r(t+h)-r(t)}{h}=\lim_{h \rightarrow 0} \langle \frac{x(t+h)-x(t)}{h},\frac{y(t+h)-y(t)}{h},\frac{z(t+h)-z(t)}{h} \rangle$$

- If the limit exists as shown above, $r(t)$ is differentiable

##### Theorem 2: Vector-valued Derivatives are computed compontentwise
A vector-valued function $r(t)= \langle x(t), y(t), z(t) \rangle$
$$r'(t)= \frac{d}{dt}r(t)=\langle x'(t), y'(t), z'(t) \rangle$$

**Derivative of vector-value function:**
> Compute the derivative of $r(t)= \langle t,t^4,t^3 \rangle$
> 1. Take the derivatives of each part separately...
> $$\frac{d}{dt}r(t)=\langle 1,4t^3,3t^2 \rangle$$
> Calculate $r''(3)$, where $r(t)= \langle ln(t), t, t^2 \rangle$
> 1. Solve for $r''(t)$ :: $r''(t)= \frac{d}{dt} \langle -t^{-2}, 0, 2 \rangle$
> 2. Plug in $r''(3)= \langle -1/9, 0, 2 \rangle$

##### Differentiation Rules
 - **Sum Rule:**
  $$(r_1(t)+r_2(t))'=r_1'(t)+r_2'(t)$$
 - **Constant Multiple Rule:** For any constant 
$$c_1 (cr(t))'=cr'(t)$$
 - **Scalar Product Rule:** For any differentiable scalar-valued function $f_1$ 
$$\frac{d}{dt}(f(t)r(t))=f'(t)r(t)+f(t)r'(t)$$
 - **Chain Rule:** For any function of $g$, 
 $$\frac{d}{dt}r(g(t))=r'(g(t))g'(t)$$
**Example :: Using differentiation rules to solve vector-valued problems**
> Let $r(t)= \langle t^2, yt, 1 \rangle$ and $f(t)=e^{3t}$ Calculate:
> 1.  $\frac{d}{dt}f(t)r(t)$ :: Using scalar product rule $f'(t)r(t)+f(t)r'(t)$
> $$=3e^{3t} \langle t^2, 5t, 1 \rangle + e^{3t} \langle 2t, 5, 0 \rangle=\langle 3e^{3t}(3t^2+2t), 3e^{3t}(15t + 5), 3e^{3t} \rangle$$
> $$\frac{d}{dt}r(f(t))=r'(f(t)f'(t)=r'(e^{3t})3e^{3t}= \langle 2e^{3t}, 5, 0 \rangle 3e^{3t}= \langle 6e^{6t}, 15e^{3t}, 0 \rangle$$ 

##### Theorem 3: Product rules for Dot and Cross Products
**Dot Product Rule:** $$\frac{d}{dt}(r_1(t) \cdot r_2(t))=r'_1(t) \cdot r_2(t)+r_1(t) \cdot r'_2(t)$$
**Cross Product Rule:** $$\frac{d}{dt}(r_1(t) \times r_2(t))=r'_1(t) \times r_2(t)+r_1(t) \times r'_2(t)$$
##### The Derivative of a Tangent Vector
This vector will point in a path tangent to the chosen instant in multiple dimensions, shown as the path traced by $r(t)$ at $t=t_0$ 
$$\frac{\Delta r}{\Delta t}= \frac{r(t_0+h)-r(t_0)}{h}$$
- where $h > 0$ 

##### Tangent Line
Find the tangent line at $r(t_0)$: $\quad L(t)=r(t_0)+tr'(t_0)$ 
![[Pasted image 20220201012055.png]]
**Example :: parametrization of the tangent line**
> Find a parametrization of the tangent line at the point indicated
> $r(t)=⟨6t,4t^2,2t^3⟩,\quad t=2$
> 1. Take the derivative of the equation 
> $$\int r'(t)=⟨6t,4t^2,2t^3⟩'=⟨6,8t,6t^2⟩$$
> 2. Solve using the formula: $\quad L(t)=r(t_0)+tr'(t_0)$
> $$L(t)=r(t)+tr'(t)=(6(2),4(2)^2,2(2)^3)+t⟨6,8(2),6(2)^2⟩$$


##### The Integral of a Tangent Vector
Integrals are taken componentwise as shown below.
$$\int^b_a r(t)dt= \langle \int^b_a x(t)dt,\int^b_a y(t)dt,\int^b_a z(t)dt \rangle$$
##### Theorem 4:
If $R_1(t)$ and $R_2(t)$ are differentiable and $R'_1(t)=R'_2(t)$, then
$$R_1(t)=R_2(t)+c$$ for some constant c

**Example :: Taking the integral of a derivative**
> We must find the integral of $\frac{dr}{dt}=\langle 1-6\sin(3t), \frac{1}{5}t \rangle$ @ $t=4$ and $r(0)=\langle 4,1 \rangle$ 
> 1. Find the general solution: 
> $$r(t)= \int \langle 1-6\sin(3t), \frac{1}{5}t \rangle=r(t)= \langle t-2\sin(3t), \frac{1}{10}t^2 \rangle +c$$
> 2. Add these to the equation: $r(0)= \langle 2,0 \rangle +c$ and $r(0)= \langle 4,1 \rangle$
> $$r(t)= \langle t+2cos(3t), \frac{1}{10}t^2 \rangle + \langle 2,1 \rangle=r(t)= \langle t+2cos(3t)+2, \frac{1}{10}t^2+1 \rangle$$ 
> Then we find $r(4)$

> Find $r(t)$ using $r''(𝑡)=⟨e^t,\sin(𝑡),\cos(𝑡)⟩,r(0)=⟨1,0,1⟩,r'(0)=⟨0,4,4⟩$
> 1. Solve $\int r''(t)$ 
> $$r'(t)=\int⟨e^t,\sin(𝑡),\cos(𝑡)+1⟩= \langle e^t +c_1, -\cos(t)+c_2, \sin(t)+c_3 \rangle$$
> 2. Plug in for $r'(0)=⟨0,4,4⟩$
> $$r'(0) = \langle e^t-1, -\cos(t)+5, \sin(t)+4\rangle$$
> 3. Solve $\int r'(t)$ 
> $$\int r'(t)=\int⟨e^t-1,-\cos(t)+5,\sin(t)+4⟩= \langle e^t-t+c_1, -\cos(t)+5t+c_2, -\sin(t)+4t+c_3 \rangle$$
> 4. Plug in for $r(0)=⟨1,0,1⟩$
> $$\langle e^0-0+c_1, -\sin(0)+5(0)+c_2, -\cos(0)+4(0)+c_3 \rangle=...$$
> $$=\langle e^t-t, -\sin(t)+5t, -\cos(t)+4(t)+2 \rangle$$

> Find the location at $𝑡=3$ with $r(0)= \langle 12,13 \rangle$ of a particle whose path satisfies
> 1. Integrate: $\frac{dr}{dt}= \langle 18t-\frac{11}{(t+1)^2},2t-4 \rangle$
> $$\int \frac{dr}{dt}= r(t) = \langle 9t^2+\frac{11}{(t+1)} +c_1,t^2-4t +c_2 \rangle$$
> 2. Plug in for values of $c$ and t:
>  $$r(3)+r(0)= \langle 9(3)^2+\frac{11}{((3)+1)} + 1,(3)^2-4(3) + 13 \rangle= \langle \frac{339}{4},10 \rangle$$

> Evaluate the integral: $\int^{5\pi/4}_{\pi/4} \langle -sin(t), 6t, 2t+cos(2t) \rangle dt$ 
> 1. Solve the integral:
> $$\int^{5\pi/4}_{\pi/4} \langle -sin(t), 6t, 2t+cos(2t) \rangle dt=\langle \cos(t), 3t^2, t^2+\frac{\sin(2t)}{2} \rangle|^{5\pi/4}_{\pi/4}$$
> 2. Plug in values:
> $$=\langle \cos(5\pi/4), 3(5\pi/4)^2, (5\pi/4)^2+\frac{\sin(2(5\pi/4))}{2} \rangle-\langle \cos(\pi/4), 3(\pi/4)^2, (\pi/4)^2+\frac{\sin(2(\pi/4))}{2} \rangle$$
> $$= \langle \frac{\sqrt{3}}{2}-\frac{\sqrt{2}}{2},\frac{75\pi^2}{16}-\frac{3\pi^2}{16}, \frac{3\pi^2+4}{16}-\frac{\pi^2 + 8}{16}\rangle$$
> $$= \langle \frac{\sqrt{3}}{2}-\frac{\sqrt{2}}{2},\frac{75\pi^2}{16}-\frac{3\pi^2}{16}, \frac{3\pi^2+4}{16}-\frac{\pi^2 + 8}{16}\rangle$$

##### Fundamental Theorem of Calculus for Vector-valued functions
**Part 1:** If $r(t)$ is continuous on $[a,b]$, and $R(t)$ is an antiderivative of $r(t)$, then...
$$\int^b_a r(t)dt=R(b)-R(a)$$
**Part 2:** Assume that $r(t)$ is continuous on an open interval $I$ and let $a$ be in $I$, then...
$$\frac{d}{dt}\int^t_a r(s)ds=r(t)$$

## 13.5 Motion in 3-Space
**Velocity vector** is the derivative:
$$v(t)=r'(t)=\lim_{h \rightarrow 0} \frac{r(t+h)-r(t)}{h}$$
**Acceleration vector** is the 2nd derivative:
$$a(t)=r''(t)$$
##### Theorem 1: Tangential and Normal Compontents of Acceleration
In the decomposition $a=a_T T + a_N N$, we have 
$$a_T=a \cdot T = \frac{a \cdot v}{||v||}, \quad a_N=a \cdot N = \sqrt{||a||^2-|a_T|^2}$$
and...
$$a_T T=(\frac{a \cdot v}{v \cdot v})v, \quad a_N N=a-a_T T= a - (\frac{a \cdot v}{v \cdot v})v$$
![[Pasted image 20220201015137.png]]

**Example :: The decomposition of a(t):**
> Find the decomposition of $a(t)$ where $a_TT+a_NN$ into tangential and normal components for $r(𝑡)=⟨5𝑡,3𝑡^2,3𝑡^3⟩$ at $t=2$
> 1. Solve for a using double derivative to get to $a(t)$ 
> $$v(t)=⟨5,6t,9t^2⟩; \quad a(t)=⟨0,6,18t⟩$$
> 2. Solve for T at $t=2$
> $$v(2)=⟨5,12,36⟩,\quad a(2)=⟨0,6,36⟩$$
> $$T=\frac{v}{||v||}=\frac{\langle 5,12,36 \rangle}{\sqrt{5^2+12^2+36^2}}= \frac{\langle 5,12,36 \rangle}{\sqrt{1465}}$$
> 3. Solve for $a_T$ 
> $$a_T=a \cdot T=⟨0,6,36⟩ \cdot \langle \frac{5}{\sqrt{1465}}, \frac{12} {\sqrt{1465}}, \frac{36}{\sqrt{1465}}\rangle=\frac{\langle 72,36^2 \rangle}{\sqrt{1465}}=\frac{93,312 }{\sqrt{1465}}$$
> 4. Solve for $a_TT$ 
> $$a_TT=a_T \cdot T= \frac{93,312 }{\sqrt{1465}} \cdot \frac{\langle 5,12,36 \rangle}{\sqrt{1465}} =\langle 63.694, 764.33,2, 292.991 \rangle$$
> 5. Solve for $a_NN$:
> $$a_NN=a-a_TT=\langle 0,6,36 \rangle-\langle 63.694, 764.33,2, 292.991 \rangle = \langle 63.694, 758.33,2, 256.991 \rangle$$
> 6. Solve for $a_NN$ 
> $$||\langle 63.694, 758.33,2, 256.991 \rangle||=2,381.833$$
> 