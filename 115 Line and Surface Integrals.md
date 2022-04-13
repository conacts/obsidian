Integration over vectorfields

## 16.1 Vector Fields
##### Vector Field
A field to represent physical phenomena such as force fields, electric fields, magnetic fields and other large systems.
![[Pasted image 20220411112051.png |300]]
A vector field is typically represented in the form:
$$F(x,y,z) = \langle F_1(x,y,z), F_2(x,y,z), F_3(x,y,z) \rangle$$
To each point $P=(a,b,c)$ is associated the vector $F(a,b,c)$, which we also denote as $F(P)$ or $F=F_1 {\bf i} +F_2 {\bf j}  + F_3 {\bf k}$  


###### Example :: Finding vector at a point using a vector field:

> Which vector corresponds to the point $P = (2,4,2)$ for the vector field $F(x,y,z) = \langle y-z, x, z- \sqrt{y} \rangle$?
> 1. Plug point $P$ into $F(x,y,z)$ 
> $$F(P) = F(2,4,2) = \langle (4)-(2), (2), (2)- \sqrt{(4)} \rangle = \langle 2, 2, 0 \rangle$$
> ![[Pasted image 20220411113241.png |300]]

##### Constant Vector Field
A sketch used to represent a complicated vector field as a uniform set of similar vectors
![[Pasted image 20220411113403.png |300]]

##### Unit Vector Field
A vector field, but all vectors are [[110 Vectors#Unit Vector Normalizing a Vector |unit vector]] and represented through the equation $||F(P)||$ 

##### Radial Vector Field
If $F(P)$ is parallel to $\vec{OP}$ and $||F(P)||$ depends only on the distance $r$ from $P$ to the origin

| Dimensions | r   |
| ---------- | --- |
| $R^2$         | $r=\sqrt{x^2+y^2}$    |
| $R^3$         | $r=\sqrt{x^2+y^2 + z^2}$    |

**Unit Radial Vector Field:**
$$e_r = \Big \langle \frac{x}{r}, \frac{y}{r}, \frac{z}{r} \Big \rangle = \Bigg \langle \frac{x}{\sqrt{x^2 + y^2 + z^2}}, \frac{y}{\sqrt{x^2 + y^2 + z^2}} , \frac{z}{\sqrt{x^2 + y^2 + z^2}}  \Bigg \rangle$$
![[Pasted image 20220411115409.png]]

###### Solving for 2D Unit Vector Field
> Match each of the following planar vector fields with the corresponding plot. Note that the vectors are scaled to avoid overlap
> ![[Pasted image 20220411113749.png]]
> $$F(x,y)= \langle \frac{-4y}{\sqrt{x^2 + y^2}}, \frac{4x}{\sqrt{x^2 + y^2}}  \rangle$$
> ![[Pasted image 20220411113714.png]]
> $$F(x,y)= \langle \frac{4x}{\sqrt{x^2 + y^2}}, \frac{4y}{\sqrt{x^2 + y^2}}  \rangle$$
> ![[Pasted image 20220411113811.png]]
> $$F(x,y)= \langle \frac{-4y}{\sqrt{x^2 + y^2}}, \frac{4y}{\sqrt{x^2 + y^2}}  \rangle$$
> ![[Pasted image 20220411113822.png]]
> $$F(x,y)= \langle \frac{4x}{\sqrt{x^2 + y^2}}, \frac{4x}{\sqrt{x^2 + y^2}}  \rangle$$

#### Operations on Vector Fields
Three of the most important derivative operations in multivariable calculus are the [[113 Multivariable Functions#The Gradient|gradient]], divergence, and curl. 

##### Divergence
Operations on a vector field using dot product
$$\text{div}(F) = \nabla \cdot F = \Bigg \langle \frac{\partial}{\partial x}, \frac{\partial}{\partial y}, \frac{\partial}{\partial z} \Bigg \rangle \cdot \langle F_1, F_2, F_3 \rangle = \frac{\partial F_1}{\partial x} + \frac{\partial F_2}{\partial y} + \frac{\partial F_3}{\partial z}$$
**Divergence laws:**

| Rule         | Example                      |
| ------------ | ---------------------------- |
| Distributive | $\text{div}(F+G) = \text{div}(F) + \text{div}(G)$ |
| Scalar       | $\text{div}(cF) = c \cdot \text{div}(F)$                             |



##### Curl 
Operations on a vector field using cross product
$$\text{curl}(F) = \nabla \times F = \begin{bmatrix} {\bf i} & {\bf j} & {\bf k} \\ \frac{\partial}{\partial x} & \frac{\partial}{\partial y} & \frac{\partial}{\partial z} \\
F_1 & F_2 & F_3  \end{bmatrix} = 

\Bigg ( \frac{\partial F_3}{\partial y}-\frac{\partial F_2}{\partial z}\Bigg ){\bf i} - \Bigg (\frac{\partial F_3}{\partial x} -  \frac{\partial F_1}{\partial z}\Bigg ){\bf j} 
 + \Bigg ( \frac{\partial F_2}{\partial x} - \frac{\partial F_1}{\partial y} \Bigg )$$


###### Solving for Divergence and Curl
> Calculate $\text{div}(F)$ and $\text{curl}(F)$ 
> $F = \langle y, 2z, x \rangle$
> 1. Calculate the $\text{div}(F)$
> 	1. Solve for $\nabla$ 
> 	$$\nabla  = \langle 0, 0, 0 \rangle$$
> 	1. Plug into the [[115 Line and Surface Integrals#Divergence|divergence equation]]
> 	$$\text{div}(F) = \langle 0, 0, 0 \rangle \cdot \langle y, 2z, x \rangle = 0 + 0 + 0 = 0$$
> 1. Calculate the $\text{curl}(F)$
> 	1. plug in nabla solved for above into [[115 Line and Surface Integrals#Curl|curl equation]] 
> 	$$\text{curl}(F) = \Bigg ( \frac{\partial }{\partial y}(x)-\frac{\partial}{\partial z}(2z)\Bigg ){\bf i} - \Bigg (\frac{\partial}{\partial x}(y) -  \frac{\partial}{\partial z}(x)\Bigg ){\bf j}  + \Bigg ( \frac{\partial}{\partial x}(2z) - \frac{\partial}{\partial y}(y) \Bigg ) = \langle -2, -1, -1\rangle$$
> ----
> Let $F=\langle 5x-4zx^2, 4z-xy, 8z^2x^2 \rangle$. Calculate $div(F)$ and $curl(F)$ 
> 1. Solve $div(F)$
> 	1. Plug into the [[115 Line and Surface Integrals#Divergence|divergence equation]]
> 	$$\text{div}(F)  =\nabla F = \text{sum}\langle 5-4zx, -x, 16zx^2 \rangle = 5-4zx-x+16zx^2$$
> 1. Solve for $\text{curl}(F)$
> 	1. Plug in nabla solved for above into [[115 Line and Surface Integrals#Curl|curl equation]] 
> 	$$\text{curl}(F) = \nabla \times F = \begin{bmatrix} {\bf i} & {\bf j} & {\bf k} \\ \frac{\partial}{\partial x} & \frac{\partial}{\partial y} & \frac{\partial}{\partial z} \\ 5x-4zx^2 & 4z-xy & 8z^2x^2  \end{bmatrix}$$
> 	$$=\frac{\partial}{\partial y} (8z^2x^2) - \frac{\partial}{\partial z} (4z-xy) - \Bigg (\frac{\partial}{\partial x} (8z^2x^2) - \frac{\partial}{\partial z} (5x-4zx^2) \Bigg ) + \frac{\partial}{\partial x} (4z-xy) - \frac{\partial}{\partial y} (5x-4zx^2)$$
> 	$$=(0 - 4)i - (16z^2x - (- 4x^2))j + (-y - 0)k = -4{\bf i} - (16z^2 x + 4x^2 ){\bf j} -y{\bf k}$$
> ----
> Let $F= \langle 3x, 7x^2, 2 \rangle$ and $G=\langle 2, 7x, 3 \rangle$	
> 1. Calculate $\text{curl}(F)$
> 	1. Evaluate using [[115 Line and Surface Integrals#Curl|curl equation]] 
> 	$$\text{curl}(F) = \nabla \times F = \begin{bmatrix} {\bf i} & {\bf j} & {\bf k} \\ \frac{\partial}{\partial x} & \frac{\partial}{\partial y} & \frac{\partial}{\partial z} \\ 3x & 7x^2 & 2  \end{bmatrix} = \langle 0, 0, 14x\rangle$$
> 2. Calculate $\text{curl}(G)$
> 	1. Evaluate using [[115 Line and Surface Integrals#Curl|curl equation]] 
> 	$$\text{curl}(G) = \nabla \times G = \begin{bmatrix} {\bf i} & {\bf j} & {\bf k} \\ \frac{\partial}{\partial x} & \frac{\partial}{\partial y} & \frac{\partial}{\partial z} \\ 2 & 7x & 3  \end{bmatrix} = \langle 0, 0, 7  \rangle$$
> 3. Calculate $\text{curl}(F + G)$
> 	1. Using the curl rule $Curl(F + G) = Curl(F) + Curl(G)$ 
> 	$$\text{curl}(F + G) = \langle 0, 0, 14x\rangle + \langle 0, 0, 7\rangle = \langle 0, 0, 14x + 7 \rangle$$

#### Conservative Vector Fields
A vector field **F** is conservative if there is a differentiable function $f(x,y,z)$ such that
$$F = \nabla f = \Big \langle \frac{\partial f}{\partial x}, \frac{\partial f}{\partial y}, \frac{\partial f}{\partial z}\Big \rangle$$

###### Finding the potential vector field function
> Consider the vector field $F = \langle 8xyz, 6x^2z, x^2yz \rangle$. Identify the potential function for the vector field **F**.
> 1. To check whhether the vector field $F = \langle F_1, F_2, F_3 \rangle$ is conservative, examine the cross-partials equation
> $$\frac{\partial F_1}{\partial y} = \frac{\partial F_2}{\partial x} \quad \quad \frac{\partial F_2}{\partial z} = \frac{\partial F_3}{\partial y} \quad \quad \frac{\partial F_3}{\partial x} = \frac{\partial F_1}{\partial z}$$
> 2. Plug in values into cross-partials equation
> $$ 8xz \ne 12xz \quad \quad 6x^2 \ne x^2z \quad \quad 2xyz \ne 8xy$$
> If even just one didn't equal the others we wouldn't have a valid vectorfield


## 16.2 Line Integrals
Integrals can be separated into two categories, integrals over functions and integrals over vectorfields.

### Scalar Line Integrals
$$\int_C f(x,y,z)ds = \lim_{[\Delta s_i]\rightarrow 0} \sum^N_{i=1}f(P_i)\Delta s_i$$
- This formula is stating how the line integral can be represented as a riemann sum

![[Pasted image 20220403234417.png |300]] 

The line integral where $f(x,y,z)=1$ is equal to the length of the line shown below
$$\int_C 1ds = length(C)=\Delta s_i = \int^{t_i}_{t_{i-1}}||r'(t)||dt$$

##### Theorem 1: Computing a Scalar Line Integral
Let $r(t)$ be a paramatrization that directly traverses $C$ for $a \le t \le b$. If $f(x,y,z)$ and $r'(t)$ are continuous, then
$$\int_C f(x,y,z)ds = \int^b_a f(r(t))||r'(t)||dt$$
$$ds=||r'(t)||dt \quad ||r'(t)||=\sqrt{x'(t)^2 + y'(t)^2 + z'(t)^2}$$

###### Computing Scalar Line Integral
> Compute the integral of the scalar function $f(x,y,z)=3xy + 5z$ over $r(t)=\langle \cos(t), \sin(t), t \rangle$ for $0 \le t \le \pi$ 
> 1. Compute $ds$
> $$r'(t)=\langle -\sin(t), \cos(t), 1 \rangle$$
> $$ds = ||r'(t)||dt=\sqrt{(-\sin t)^2 + \cos^2t + 1}(dt)=\sqrt{2}dt$$
> 2. Write out the integrand and evaluate
> $$f(r(t)) = f(\cos t, \sin t, t) = 3\cos t \sin t + 5t$$
> $$f(x,y,z)ds = f(r(t)) ||r'(t)||dt = [3(\cos t)(\sin t) + (1)5 ]\sqrt{2}dt$$
> $$\sqrt{2}\int^{\pi}_0 (3\cos t\sin t + 5t)dt = \sqrt{2} (-\frac{3\cos^2(t)}{2} + \frac{5t^2}{2})\Big |^\pi_0 = \frac{5\pi ^2}{\sqrt{2}}$$
> ----
> Calculate the total mass of a metal tube in a helical shape $r(t)=\langle \cos t, \sin t, t^2 \rangle$ over $0 \le t \le 2\pi$ if the mass density is $\delta (x,y,z) = 8 \sqrt{z} \space g/cm$ 
> 1. Calculate $ds$
> $$ds=||r'(t)||dt =\sqrt{-(\sin t)^2 + (\cos t)^2 + (2t)^2} \space dt = \sqrt{4t^2 + 1}\space dt$$
> 2. Write out the integrand and evaluate
> $$\delta(x,y,z) = \delta(r(t))\sqrt{4t^2 + 1}\space dt = 8(\sqrt{t^2})\sqrt{4t^2 + 1}\space dt$$
> $$\int^{2\pi}_0 8t \sqrt{4t^2 + 1} \space dt = \:1334.854$$

### Vector Line Integrals
The difference between vector and scalar line integrals is that vector line integrals depend on the direction along the curve. This can be analgous to travelling up and down a mountain being very important to distinguish when regarding work.

##### Vector Line Integral Formula
The line integral of a vector field $F$ along an oriented curve $C$ is the integral of the tangential component of $F$.

$$\int_C (F \cdot T) \space ds = \int_C F \cdot dr\quad \quad dr = T \cdot ds$$
##### Orientation
The specified direction along curve $C$ is known as the orientation. Positive is movement in the chosen direction while negative is opposing said direction.
![[Pasted image 20220403234549.png |400]]


##### Theorem 2: Computing a Vector Line Integral
If $r(t)$ is a positively oriented regular paramtrization of an oriented curve $C$ for $a \le t \le b$, then 
$$\int_C F \cdot dr = \int_C F \cdot Tds = \int_a^b F(r(t)) \cdot r'(t) dt$$
$$dr = r'(t)dt = \langle x'(t), y'(t), z'(t) \rangle \space dt$$
###### Example :: Computing Vector Line Integral:
> Calculate the work done by the field $F(x,y,z) = \langle e^x, e^y, xyz \rangle$ when the object moves along the path $r=\langle t^2, t, \frac{t}{3} \rangle$ for $0 \le t \le 1$
> 1. Using [[115 Line and Surface Integrals#Theorem 2 Computing a Vector Line Integral|Theorem 2]], we will follow and use the formula
> $$W=\int_C F(r(t)) \cdot r'(t)dt$$
> 2. Find the value of $F(r(t))$
> $$F(r(t)) = \langle e^{t^2}, e^{t}, (t^2) (t)(\frac{t}{3}) \rangle = \langle e^{t^2}, e^{t},\frac{t^4}{3} \rangle$$
> 3. Find the value of $r'(t)$
> $$r'(t) = \langle 2t, 1, \frac{1}{3} \rangle$$
> 4. Plug into the equation
> $$F \cdot dr = F(r(t)) \cdot r'(t) dt = \langle e^{t^2}, e^{t},\frac{t^4}{3} \rangle \cdot \langle 2t, 1, \frac{1}{3} \rangle dt= (2te^{t^2} + e^{t} +\frac{t^4}{9})dt$$
> 5. Set up integral
> $$\int^1_0 (2te^{t^2} + e^{t} +\frac{t^4}{9})dt = 2e-\frac{89}{45}$$
> ----
> Evaluate the line integral:
> $$\int_C 17ydx + 16zdy + xdz, \quad r(t) = (2 + t^{-1}, t^3, t^2) \text{ for } 0 \le t \le 1$$
> 1. Using [[115 Line and Surface Integrals#Theorem 2 Computing a Vector Line Integral|Theorem 2]], we will follow and use the formula
> $$\int_a^b F(r(t)) \cdot r'(t) dt$$
> 2. Find $r'(t)$
> $$r'(t) = ( -\frac{1}{t^2}, 3t^2, 2t)$$
> 3. Plug in $r(t)$ to find $F(r(t))$ 
> $$F = 17ydx + 16zdy + xdz = \langle 17y, 16z, x \rangle$$
> $$F(r(t)) = \langle 17(t^3), 16(t^2), (2 + t^{-1}) \rangle$$
> 4. Plug both $F(r(t))$ and $r'(t)$ into [[115 Line and Surface Integrals#Theorem 2 Computing a Vector Line Integral|Theorem 2]]
> $$\int_a^b F(r(t)) \cdot r'(t) dt = \int_0^1 \langle 17t^3, 16t^2, 2 + t^{-1} \rangle \cdot  \langle  -\frac{1}{t^2}, 3t^2, 2t \rangle dt$$
> $$=\int_0^1  -17t + 48t^4 + 4t + 2  =\frac{51}{10}$$

##### Theorem 3: Properties of Vector Line Integrals
Let $C$ be a smooth oriented curve, and let $F$ and $G$ be vector fields
$$\text{i. Linearity: }\int_C (F+G) \space dr = \int_C F \space dr + \int_C G \space dr $$
$$\int_C kF \space dr = k \int_C F \space dr \quad \text{(k a constant)}$$
$$\text{ii. Reversing Orientation: } \int_{-C} F \space dr = -\int_C F \space dr$$
$\text{iii.}$ **Additivity**: If $C$ is a union of $n$ smooth curves $C_1, ..., C_N$, then
$$\int_C F \space dr = \int_{C_1} F \space dr + ... + \int_{C_N} F \space dr$$
###### Example :: Additivity Integration:
> Calculate the line integral of $F(x,y,z) = (e^z, e^{x-y}, e^y )$ over the closed path ABCA, where $A=(2,0,0), B=(0,4,0), C=(0,0,6)$. Solve for $\int_C F \cdot dr$ 
> ![[Pasted image 20220411231447.png | 150]]
> 1. To solve this problem we will use [[115 Line and Surface Integrals#Theorem 3 Properties of Vector Line Integrals|additivity theorem]] to find the area under a smooth curve
> $$\int_C F \space dr = \int_{{\overline{AB}}} F \space dr + \int_{{\overline{BC}}} F \space dr + \int_{{\overline{CA}}} F \space dr$$
> 2. First compute $r(t)$ for $\overline{AB}$ . 
> $$r(t) = B-A = (0, 4t, 0) - (-2 + 2t, 0,0) = \langle 2-2t, 4t, 0 \rangle$$
> 3. Set up integral of  $\overline{AB}$ .
> $$\int_{{\overline{AB}}} F(r(t)) \cdot r'(t) = (e^0, e^{2-2t-4t}, e^{4t} ) \cdot (-2, 4, 0) = \int_0^1 -2 + 4e^{2-6t}$$
> 4. Compute  $r(t)$ for $\overline{BC}$ . 
> $$r(t) = C - B = (0,0,6t) - (0, -4 + t, 0) = (0, 4 - 4t, 6t)$$
> 5. Set up integral of $\overline{BC}$
> $$\int_{{\overline{BC}}} F \space dr = (e^{6t}, e^{0-4+4t}, e^{4-4t} ) \cdot (0, - 4, 6) =  \int^1_0 -4e^{4t-4} + 6e^{4-4t} dt$$
> 6. Find $r(t)$ of $\overline{CA}$
> $$r(t) = A - C = (2t, 0, 0) - (0 ,0 ,-6 + 6t) = (2t, 0, 6-6t)$$
> 7. Set up integral for  $\overline{CA}$
> $$\int_{{\overline{CA}}} F \space dr = (e^{6-6t}, e^{2t-0}, e^0 ) \cdot (2, 0, -6) = \int^1_0 2e^{6-6t} -6 dt$$
> 8. Sum all the integrals together
> $$\int_C F \space dr = \int_0^1 -2 + 4e^{2-2t}dt + \int^1_0 -4e^{4t-4} + 6e^{4-4t}dt + \int^1_0 2e^{6-6t} -6 dt$$
> $$\int_0^1 ( 4e^{2-2t} -4e^{4t-4} + 6e^{4-4t}dt + 2e^{6-6t} -8 )dt$$
> $$ = -\frac{65}{6} + \frac{1}{3}e^{-4} + \frac{2}{3}e^2 + \frac{3}{2}e^4 + \frac{1}{3}e^6$$

##### Work Equation
Work refers to the energy expended when a force is applide to an object as it moves along a path.
$$W = \text{tangential component of F} \times \text{distance}=(||F||\cos\theta) \times ||\overrightarrow{PQ}||$$
![[Pasted image 20220404111847.png |300]]



###### Example :: Integration for total charge:
> Find the total charge on the curve $y=x^{4/3}$ for $8 \le x \le 27$ assuming a charge density of $\delta (x,y) = \frac{x}{y}$ 
> 1. We can equate 
> $$y = x^{4/3}, \quad r(t) =  \langle t, t^{4/3}, 0 \rangle \quad  8 \le t \le 27$$
> $$r'(t) = \langle 1, \frac{4}{3}t^{1/3}, 0 \rangle$$
> 2. Solve for ds
> $$ds = ||r'(t)||dt = \sqrt{1^2 + \left( \frac{4x^{(1/3)}}{3}\right)^2 + 0^2 } = \sqrt{1^2 + \frac{16}{9}t^{2/3}}dt$$
> $$u = \sqrt{1^2 + \frac{16}{9}t^{2/3}}, du = \frac{32}{27}t^{-1/3}dt$$
> $$u(8) = \frac{73}{9} \quad u(27) = 17$$
> 3. Set up integral
> $$\int^{27}_8 t^{-1/3} \sqrt{1 + \frac{16}{9}t^{2/3}}dt = \frac{27}{32 \int^{17}_{73/9}} \sqrt{u}du = 26.43$$


###### Example :: Integration for work done by a field:
> Calculate the work done by the field F when the object moves along the given path from the initial ponit to the final point.
> $$F(x,y,z) = \langle x,y,z \rangle, \quad r(t) = \langle \cos t, \sin t, t \rangle \quad \frac{\pi}{2} \le t \le \frac{7\pi}{2}$$
> 1. Using the [[115 Line and Surface Integrals#Theorem 2 Computing a Vector Line Integral|theorem 2 formula]], we can find the answer
> 2. We find $r'(t)$
> $$r'(t) = \langle -\sin t, \cos t, 1 \rangle$$
> 3. Find $F(r(t))$
> $$F(r(t)) = \langle \cos t, \sin t, t \rangle$$
> 4. Plug it into the formula
> $$\int_C = \langle \cos t, \sin t, t \rangle \cdot \langle -\sin t, \cos t, 1 \rangle = \int^{7\pi/2}_{\pi/2} (-\cos t \sin t + \sin t \cos t + t)dt = 6\pi ^2$$



## 16.4 Parametrized Surfaces and Surface Integrals

### Paramatrization of a Sphere
$$G(\theta, \phi ) = (R \cos \theta \sin \phi, R \sin \theta \sin \phi, R \cos \phi ), \quad 0 \le \theta \le 2\pi , \quad 0 \le \phi \le \pi $$
Location of north pole: $G(\theta, 0) = (0, 0, R)$
Location of south pole: $F(\theta, \pi) = (0,0,-R)$
![[Pasted image 20220404164249.png |300]]

### Parametrization of a Graph: 
$$G(x,y) = (x,y,f(x,y))$$

###### Paramatrization Examples:
> ![[Pasted image 20220404164624.png |100]] 
> $$\langle u, v^3, v \rangle$$
> ![[Pasted image 20220404164702.png |100]]
> $$\langle u, u(2 + \cos (v)), u(2 + \sin(v)) \rangle$$
> ![[Pasted image 20220404165140.png |100]]
> $$\langle u, u + v, v \rangle$$
> ![[Pasted image 20220404165319.png |100]]
> $$\langle \cos(u)\sin(v), 3\cos(u)\sin(v), \cos(v) \rangle$$
> ![[Pasted image 20220404165347.png |100]]
> $$\langle u, \cos(v), \sin(v) \rangle$$



### Surface Area
To simplify the process, we assume the shapes are squares 
![[Pasted image 20220404170742.png |400]]

##### Theorem 1: Surface Integrals and Surface Area
Let $G(u,v)$ be a parametrization of a surface $S$ with parameter domain $D$. Assume that $G$ is continuously differentiable, one-to-one and regular (except possibly at the boundary of $D$). Then
$$\iint_S f(x,y,z)dS = \iint_D f(G(u,v)) ||N(u,v)||dudv$$
For $f(x,y,z) = 1$, we obtain the surface area of $S$: 
$$area(S) = \iint_D ||N(u,v)|| dudv \quad \Big | \quad dS = ||N(u,v)||dudv$$


###### Example :: Evaluating the Surface Area: 
> Let $S = \Phi(D)$  where $D = \{(u,): u^2 + v^2 \le 1, u \ge 0, v \ge 0 \}$  and $\Phi (u,v) = (2u + 1, u-v, 3u+v)$ 
> (a) calculate the surface area of S and (b) evaluate $\iint_S (5x -5y)dS$ 
> 1. Find the area of S
> 	1. Compute the tangent and normal vectors
> 	$$T_u = \frac{\partial \Phi}{\partial u} = \langle 2 , 1, 3\rangle \quad \Big | \quad T_v = \frac{\partial \Phi}{\partial v} = \langle 0, -1, 1 \rangle$$
> 	2. Compute the normal vector $N$
> 	$$N = T_u \times T_v = \begin{bmatrix} i & j & k \\ 2 & 1 & 3 \\ 0 & -1 & 1\end{bmatrix} = 4i -2j -2k$$
> 	3. Find the length of the normal vector
> 	$$||N|| = \sqrt{(4)^2 + (-2)^2  + (-2)^2} = 2\sqrt{6}$$
> 	$$dS = 2\sqrt{6}\space dudv$$
> 	4. Calculate the surface area
> 	$$area(S) = \iint_D ||N|| dudv = 2\sqrt{6} \int_0^1 \int_0^{\sqrt{1-v^2}} dudv = \frac{\sqrt{3}\pi }{\sqrt{2}}$$
> 2. Find $\iint_S (5x -5y) dS$ (hint use polar coordinates)
> 	1. Convert to dudv
> 	$$f(x=2u + 1,y = u-v, z = 3u+v) = 5(2u+1)-5(u-v)$$
> 	$$f=10u + 5 - 5u + 5v = 5u + 5v + 5$$
> 	2. Set up the integral
> 	$$\iint_S (5u+5v+5)dS = 2 \sqrt{6} \int^{}_0 \int_0 5(u+v+1)dudv$$
> 	$$=2 \sqrt{6} \int^{\pi/2}_0 \int^1_0 5r(r\cos\theta+r\sin\theta+1)drd\theta = 10\sqrt{6}\left(\frac{\pi }{4}+\frac{2}{3}\right)$$
> ------
> Calculate $\iint_S f(x,y,z) dS$ for the given surface and function
> $$\Phi(u,v) = (u\cos(v), u\sin(v), u), \quad 0 \le u \le 1, \quad 0 \le v \le 1$$
> $$f(x,y,z) = 9z(x^2 + y^2) \quad \Big | \quad \iint_S f(x,y,z) dS=?$$
> 1. Find the area of S
> 	1. Find the partial derivatives of $\Phi$
> 	$$F_u = \frac{\partial \Phi}{\partial u} = \langle \cos(v) , \sin(v), 1\rangle \quad \Big | \quad F_v = \frac{\partial \Phi}{\partial v} = \langle -u\sin(v), u\cos(v), 0 \rangle$$
> 	2. Cross multiply to find the normal vector
> 	$$N = F_u \times F_v = \begin{bmatrix} i & j & k \\ \cos(v) & \sin(v) & 1 \\ u\sin(v) & u\cos(v) & 0\end{bmatrix} = \langle -u\cos (v), u \sin (v), u \rangle$$
> 	$$|| F_u \times F_v ||  = \sqrt{u^2\cos^2 (v) + u^2 \sin^2 (v) + u^2} = u\sqrt{1 + 1} = u\sqrt{2}$$
> 2. Translate $f(x,y,z)$ to $f(u,v)$ 
> 	$$\iint_Sf(\Phi(u,v)) \cdot ||F_u \times F_v || = \int^1_0 \int^1_0 9u^3 \cdot u \sqrt{2}dudv = \frac{9\sqrt{2}}{5}$$
> -----
> Calculate $\iint_S 11 dS$ for the surface $S: y = 4-z^2, \quad 0 \le x \le z \le 2$ 
> 1. Find the area of S
> 	1. Take partial derivatives of S
> 	$$F_x = 0, \quad F_y = 1, \quad F_z = -2z$$
> 	2. Find normalzied vector 
> 	
> 	$$||F || = \sqrt{0^2 + 1^2 + (-2z)^2} = \sqrt{1 + 4z^2}$$
> 2. Take the integral
> 	1. Set bounds for integral
> 	$$\int^2_{z=0} \int^z_{x=0} 11dS$$
> 	2. Multiply by normalzied vector
> 	$$\int^2_{z=0} \int^z_{x=0} 11\sqrt{1 + 4z^2}dxdz = \frac{11(17\sqrt{17}-1)}{12}$$
> ----
> Find the surface area of the part of the cone $x^2 + y^2 = z^2$ between the planes $z=3$ and $z=12$
> 1. Find the area 
> $$area(S) = \iint_D ||N(u,v)|| dudv \quad \Big | \quad dS = ||N(u,v)||dudv$$
> 3. Start by writing the parametrization of the surface $S$ in polar coordinates
> 	$$G(u,v) = (u \cos (v), u \sin (v), u)$$
> 	$$ D: 0 \le v \le 2\pi \quad \quad 3 \le u \le 12$$
> 1. Find the tangent vectors using partial derivatives
> $$T_u = \frac{\partial G}{\partial u} = \frac{\partial}{\partial u}(u \cos (v), u \sin (v), u) = (\cos (v), \sin (v), 1)$$
> $$T_v = \frac{\partial G}{\partial v} = \frac{\partial}{\partial v}(u \cos (v), u \sin (v), u) = (-u\sin (v), u\cos (v), 0)$$
> 	3. Find the normal vector of the tangent vectors
> $$N = T_u \times T_v = \begin{bmatrix} i & j & k \\ \cos(v) & \sin(v) & 1 \\ -u\sin(v) & u\cos(v) & 0\end{bmatrix} = \langle -u\cos (v), u \sin (v), u \rangle$$
> 4. Find the length of the vector $N$ through $||N||$
> $$||N|| = \sqrt{(-u\cos (v))^2 +  (u \sin (v))^2  + u^2 } = u\sqrt{2}$$
> 5. Using the formula $Area(S) = \iint_D ||N|| dudv$
> 	$$\int^{2\pi}_0 \int^{12}_3 u\sqrt{2}dudv = 135 \sqrt{2}\pi$$
> ----
> Calculate $\iint_S x^2 z dS$ where $S$ is the cylinder (including the top and bottom) $x^2 + y^2 = 4$ over $0 \le z \le 4$. 
> 1. The integral over surface is just the sum of the integrals over the faces. Calculate the surface integral for each of the three faces.
> 2. Bottom face integral
> 	1. Find the bounds of the surface
> 	$$S_1 : \phi (x,y) = (x,y,0)$$
> 	2. Take the integral
> 	$$\iint_{S_1} x^2 zdS = \iint_{D_1}x^2 \cdot 0 \cdot ||n_1 || dxdy = 0$$
> 3. Top integral
> 	1. Find the surface parametrization
> 	$$S_2: \phi (x,y) = (x,y,4)$$
> 	2. Take the partial integrals and integrate
> 	$$T_x = (1,0,0), T_y = (0,1,0) \rightarrow T_x \times T_y = (0,0,1)$$
> 	3. Integrate
> 	$$\iint_{S_2} x^2z dS = \iint_{D_2} x^2 \cdot z \cdot ||T_x \times T_y||dxdy$$
> 	$$\int^{2\pi}_0 \int^2_0 x^2 \cdot 4 \cdot 1dxdy=16\pi$$
> 4. Side integral
> 	1. Find side parametrization
> 	$$S_3: \phi(\theta, z) = (2\cos(\theta), 2\sin(\theta), z)$$
> 	$$T_\theta = (-2\sin(\theta), 2\cos(\theta), 0) \quad T_z = (0,0,1)$$
> 	2. Find $||T_\theta \times T_z||$
> 	$$||T_\theta \times T_z|| = 2$$
> 	3. Plug in 
> 	$$\iint_{S_3} x^2z dS = \int^{2\pi}_0 \int^4_0 (2\cos\theta)^2 \cdot z \cdot 2 dzd\theta = 64\pi $$
> 5. Add all the compontents of the cylinder together because of [[115 Line and Surface Integrals#Theorem 3 Properties of Vector Line Integrals|additivity principle]] 
> 	$$\iint_S x^2zdS = 0 + 16\pi + 64 \pi = 80\pi$$


##### Theorem 2: Gravitational Pontential of a Uniform Hollow Sphere
The gravitational potential $V$ due to a hollow sphere of radius $R$ with uniform mass distribution of total mass $m$ at a point $P$ located at a distance $r$ from the center of the sphere is...
$$V(P) = \Bigg \{ \begin{split} \frac{-Gm}{r} \quad if \space r > R\quad \text{(P outside the sphere)} \\ \frac{-Gm}{R} \quad if \space r < R\quad \text{(P inside  the sphere)} \end{split}$$

## 16.5 Surface Integrals of Vector Fields
Flux integrals, or rates of flow through a surface. The orientation of a flux can vary with specifying vectors $n(P)$ to point upward and $-n(P)$ to point inside the sphere.
![[Pasted image 20220412173725.png]]

##### Normal Component on a Vector Field
$$\text{normal compontent at } P=F(P) \cdot n(P) = ||F(P) || \cos \theta$$
where $\theta$ is the angle between **field** $F(P)$ and [[110 Vectors#Unit Vector Normalizing a Vector|normal vector]] $n(P)$. 
$$\text{vector surface integral} = \iint_S (F \cdot n) dS$$
![[Pasted image 20220412174121.png]]

**Reminder:** [[115 Line and Surface Integrals#Theorem 1 Surface Integrals and Surface Area|Scalar Surface Integral]]

##### Theorem 1: Vector Surface Integral
Let $G(u,v)$ be an oriented parametrization of a surface $S$ with parameter domain $D$. Assume that $G$ is one-to-one and regular, except possibly at points on the boundary of $D$. Then
$$\iint_S (F \cdot n) dS = \iint_D F(G(u,v)) \cdot N(u,v) dudv$$
If the orientation of $S$ is reversed, the surface integral changes sign. 


### Fluid Flux
Flow rate is the volume of water that flows through the net per unit time.

To compute the flow rate...
1. $v(P)$ is the velocity vector field at point $P$
2. Flow Rate through surface $S$ is equal to the surface integral of $v$ over $S$

$$\text{parallel  / straight flow rate} = \text{velocity} \cdot \text{area} = ||v_0|| A$$
Points can also be visualizes as blocks, as shown below
![[Pasted image 20220412180440.png | 500]]
$$\text{flow rate at an angle} = \text{velocity} \cdot \text{area} \cdot \cos\theta = A||v_0||\cos \theta$$



![[Pasted image 20220412180800.png |500]]
##### Flow Rate Through a Surface
For a fluid with velocity vector field v, 
$$\text{flow rate across the surface} = \iint_S v \cdot dS$$

### Electric and Magnetic Fields

##### Faraday's Law of Induction
$$\int_C E \cdot dr = -\frac{d}{dt} \iint_S B \cdot dS$$
1. $E$ is the electric field
2. $B$ is the magnetic field

![[Pasted image 20220412181216.png | 500]]


## Types of Integrals

1. Scalar line integral along a curve $C$ given by $r(t)$ for $a \le t \le b$ (can be used to compute arc length, mass, electric potential):
$$\int_C f(x,y,z) ds = \int^b_a f(r(t)) ||r'(t)|| dt$$
2. Vector line integral to calculate work along a curve $C$ given by $r(t)$ for $a \le t \le b$
$$\int_C F \cdot dr = \int^b_a F(r(t)) \cdot r'(t)dt = \int_C F_1 dx + F_2dy + F_3 dz$$
1. Vector line integral to calculate flux across a curve $C$ given by $r(t)$ for $a \le t \le b$
$$\int_C F \cdot n ds = \int^b_a F(r(t)) \cdot N(t) dt$$
1. Surface integral over a surface with parametrization $G(u,v)$ and parameter domain $D$ (can be used to calculate surface area, total charge, gravitational potential)
$$\iint_S f(x,y,z) dS = \iint_D f(G(u,v)) ||N(u,v)|| dudv$$
1. Vector surface integral to calculate flux of a vector field $F$ across a surface $S$ with parameterization $G(u,v)$ and parameter domain $D$:
$$\iint_S (F \cdot n) dS = \iint_S F \cdot dS = \iint_D F(G(u,v)) \cdot N(u,v)dudv$$