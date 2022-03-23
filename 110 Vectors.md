TARGET DECK: Calculus

## 12.1: Vectors in a Plane
##### Vectors:
**Definition:** A vector determined by two points, the tail (start) P and head (end) Q. These two points form the vectors compontents, based on which planes it traverses giving it dimensions
$$v=\overrightarrow{PQ}$$

##### Compontents of a Vector:
- The components of a vector can be broken down based on the dimensions in which it travels. 

**Finding the compontents with two points**

> Vectors are only equivalent if they have the same compontents
> $$v= \overrightarrow{PQ}$$
> $$P=(a_1, b_1); Q=(a_2, b_2)$$
> $$\text{x-compontent}=a_1-a_2$$
> $$\text{y-compontent}=b_1-b_2$$

**Finding the vector's head with the compontents and the tail**

> $$\text{x-head}=a_1+a$$
> $$\text{y-head}=b_1+b$$


---
### Vector Algebra:
##### Translation of a Vector:
- **Definition:** Changing only the vectors location, not its magnitude or direction. This is equivalent to moving the tail and head of a vector equal distance.

##### Finding the Length of a Vector
- AKA: Length, Magnitude, Norm
- The length of a vector can be found through squaring each of the vectors compontents, summing them and taking the square root as shown below.

$$||v||=||\overrightarrow{PQ}||=\sqrt{a^2+b^2}$$
##### Normalizing a Vector:
**Definition:** Finding a parallel vector with a magnitude of 1.
$$v_n=\frac{v}{||v||}=\frac{v}{\sqrt{v^2}}$$
##### Finding the Angles of a Vector:
$$v_1=\{||v||\cos\theta\} \quad v_2=\{||v||\sin\theta\} \quad e_v=\{\cos\theta, \sin\theta\} $$

##### Vector Addition:
- You multiply each compontent of the vector with each corresponding compontent
$$v = \{3, 5\}\quad u=\{7, 3\}$$
$$\overrightarrow{u}+\overrightarrow{v}=\{10, 8\}$$

##### Scalar Multiplication on a Vector:
 - When mulitplying a vector by a scalar, you multiply each component within the vector by said scalar to achieve a vector scaled by that number
![[Pasted image 20220114115957.png | 300]]

---

### Types of Vectors:
##### Basis Vectors:
**Definition:** are a set of linearly independent vectors that span the whole vector space

$$i=\{1, 0\} \quad j=\{0, 1\}$$

##### Zero Vector:
**Definition:** A vector with no x or y compontent, equivalent to (0, 0).
$$\overrightarrow{0}=\{0, 0, ...\}$$

##### Parallel Vectors:
**Definition:** Vectors can be be parallel in either the same or opposite direction. They can also be parallel if they are scaled unevenly.
$$w=\lambda v$$
![[Pasted image 20220113200945.png | 200]]
##### Orthogonal Vectors:
**AKA:** perpendicular
**Definition:** Vectors that meet to form a right angle

##### Equivalent Vectors:
**Definition:** Vectors that share the same compontents. Vectors are equivalent based on their magnitude and direction, not their location.

##### -V Vector:
**Definiton:** Flipping a vectors orientation through mulitplying by scalar -1.
$$V=(12, 4)$$
$$-V=(-12, -4)$$

##### Theorem 1: Properties of Vector Algebra
Communitive Law: $v+w=w+v$
Associative Law: $u+(v+w)=(u+v)+w$
Distributive Law for Scalars: $\lambda (v+w)=\lambda v + \lambda w$

##### Theorem 2: Triangle Inequality
For any two vectors v and w, 
$$||v+w||\le||v||+||w||$$
unless: $v=0$ or $w=0$ or $w=\lambda v$

##### 12.1 flashcards:

What are the components of a vector? #flashcard 
The individual magnitudes in the proper direction of their plane
<!--ID: 1642969856602-->



3 Properties of vector algebra #flashcard 
Communitive Law: $v+w=w+v$
Associative Law: $u+(v+w)=(u+v)+w$
Distributive Law for Scalars: $\lambda (v+w)=\lambda v + \lambda w$
<!--ID: 1642969856611-->



The triangle inequality theorem: #flashcard 
$||v+w||\le||v||+||w||$ unless: $v=0$ or $w=0$ or $w=\lambda v$
<!--ID: 1642969856616-->



What are basis vectors? #flashcard 
Linearly independent vectors that span the whole vector space 
$i=\{1, 0\} \quad j=\{0, 1\}$
<!--ID: 1642969856620-->



Equation to find the length of a vector #flashcard 
$||v||=||\overrightarrow{PQ}||=\sqrt{a^2+b^2}$
<!--ID: 1642969856622-->



What is normalizing a vector and what is the formula to do so? #flashcard 
When you find a parallel vector of length 1 using $v_n=\frac{v}{||v||}=\frac{v}{\sqrt{v^2}}$
<!--ID: 1642969856624-->


---

## 12.2: 3D Spaces: Surfaces, Vectors and Curves
#### Finding the radius of geometry
##### Note:
All previous rules apply similar to 2D vectors, just include an extra dimension $k=\{0, 0, 1\}$ as the basis vector
##### Sphere Equation:
$$(x-a)^2+(y-b)^2+(z-c)^2=R^2$$
**Finding the equation of a sphere:**
> Problem: Give an equation for the sphere with diameter $\overrightarrow{PQ}$ where $P=(1,1,−7)$ and $Q=(1,5,1)$.
> 
> 1. Find the center of the sphere
>  $$C=\frac{(P_1 + Q_1)}{2},\frac{(P_2 + Q_2)}{2},\frac{(P_3 + Q_3)}{2}$$
>  $$C=\frac{(1 + 1)}{2},\frac{(1 + 5)}{2},\frac{(-7 + 1)}{2}=(1, 3, -3)$$
> 3. Find the radius of the sphere
> $$r=\frac{1}{2}\sqrt{(Q_1-P_1)^2+(Q_2-P_2)^2+(Q_3-P_3)^2}$$
> $$r=\frac{1}{2}\sqrt{(1-1)^2+(5-1)^2+(1-(-7))^2}=\sqrt{80}/2=\sqrt{20}$$
> 4. Plug values into the equation
> $$(x-a)^2+(y-b)^2+(z-c)^2=R^2$$
> $$(x-1)^2+(y-3)^2+(z+3)^2=20$$

##### Cylinder Equation:

$$(x-a)^2 + (y-b)^2=R^2$$
#### Vectors in 3D Space:
##### Theorem 3: Distance Formula in $R^3$
 - The distance between $|P-Q|$ between the points $P=(a_1, b_1, c_1) \quad Q=(a_2, b_2, c_3)$

##### Parametrization of a vector:
**Definition:** Representing a vector in multiple dimensions in 2 dimensions

**Parametric Equation:**
$$r(t)=r_0 +tv=\{x_0, y_0, z_0\}+t\{a, b, c\}$$

$$x(t)=x_0 + at, \quad y(t)=y_0 + bt, \quad z(t)=z_0 + ct$$
**Example :: Find the parametric equation:**

> Find vector parametrization for the line passing through $P_0=(3, -1, 4)$ with the direction vector $v=(2, 1, 7)$?
> 1. Multiply vector v by t and add each compontent to the point $P_0$
> $r(t)=(3, -1, 4) + t(2, 1, 7)=(3+2t, -1+t, 4+7t)$
> $r(t)=(3+2t, -1+t, 4+7t)$

**Example :: Vector Parametrization:**
>  Find the vector parametrization $r(t)$ of the line $\ell$ that passes through the points (5,5,1) and (9,7,5).
>  Recall, $P_0=(x_0, y_0, z_0)$ and $v=(a, b, c)$
>  $$r(t)=r_0+tv=(x_0, y_0, z_0)+t(a, b, c)$$
>  1. Find the vector $v$ using the 2 points
>  $$v=(p_1-q_1, p_2-q_2, p_3-q_3)$$
>  $$v=(9-5, 7-5, 1-5)=(4, 2, -4)$$
>  2. Use the first point as $P_0$ and then create a parametric equation
>  $$r(t)=(5, 5, 1) + t(4, 2, -4)=(5+4t, 5+2t, 1-4t)$$

**Example :: Determine if parametric equations intersect:**
> $$r_1 (t) = (1, 0, 1) + t_1(3, 3, 5) \quad r_2 (t) = (3, 6, 1) + t_2(4, -2, 7)$$
> $$x=1+3t_1=3+4t_2, \quad y=3t_1=6-2t_2, \quad z=1+5t_1=1+7t_2$$
> 1. Solve for $t_2$ subtract equation 2 from equation 1 to get $1=\frac{2}{3}t_2-3;t_2=\frac{2}{3}$
> 2. Plug in $t_2$ to solve for $t_1$, $t_1=2-\frac{2}{3}t_2=\frac{14}{9}$
> 3. Plug values into equation Z to check if it intersects at Z. $1+5(\frac{14}{9}) \ne 1+7(\frac{2}{3})$ therefore the equations do not intersect on the Z-plane, therefore they do not intersect

##### 12.2 Flashcards:

What is the equation of a sphere? #flashcard 
$(x-a)^2+(y-b)^2+(z-c)^2=R^2$
<!--ID: 1642969856625-->

What makes parametric equations different than y-intercept equations #flashcard 
Parametric equations can work in multiple dimensions making them very effective
<!--ID: 1642970415128-->



Formula of parametric equation? #flashcard 
$r(t)=r_0 +tv=\{x_0, y_0, z_0\}+t\{a, b, c\}$ 
<!--ID: 1642970415137-->





---
## 12.3: Dot Product and the Angle Between Two Vectors
#### Dot Product:
**Definition:** Multiply the corresponding compontents, and then add those products. Noted as $v \cdot w$ , can also be referred to as scalar product.
> $$v=(v_1, v_2, v_3), \quad w=(w_1, w_2, w_3)$$
> $$v \cdot w = v_1 w_1 + v_2 w_2 + v_3 w_3$$
##### Properties of Dot Product:
1. Identity: $0 \cdot v = v \cdot 0 = 0$
2. Communitive: $v \cdot w = w \cdot v$
3. Pulling out scalars: $(\lambda v) \cdot w = v \cdot (\lambda w) = \lambda (v \cdot w)$
4. Distributive Property: $u \cdot (v + w) = u \cdot v + u \cdot w$
5. Relation with length: $\sqrt{v \cdot v} = ||v||$

**Example :: Compute the dot product**
>  $$(2, 9, 2) \cdot (7, 1, 6) = 2 \cdot 7 + 9 \cdot 1 + 2 \cdot 6=35$$

**Example :: Dot product using i, j, k:** 
> Compute the dot product of $(9j+2k)\cdot (i-4j)$
> 1. Match all equivalent compontents to each other and multiply. If no compontent pair is present, then multiply by 0.
> $$(9j+2k)\cdot (i-4j)=9j \cdot -4j + 2k \cdot 0k + i \cdot 0i=-36$$

##### Theorem 4: Dot Product and the Angle:
Let $\theta$ be the angle between two nonzero vectors $v$ and $w$. Then 
$$v \cdot w = ||v|| \cdot ||w|| \cos\theta$$
or also written as...
$$\cos\theta=\frac{v \cdot w}{||v|| \cdot ||w||}$$

**Example :: Find the cos of the angle between vectors:**
> Find the cosine of the angle between the vectors $v=(1,1,1)$ and $w=(9,−10,4)$.
> $$\cos\theta=\frac{v \cdot w}{||v|| \cdot ||w||}=\cos\theta=\frac{9-10+4}{\sqrt{1+1+1} \cdot \sqrt{9^2 + (-10)^2 + 4^2}}=\frac{3}{\sqrt{197 \cdot 3}}$$
1. **Orthogonal:** if $v \cdot w = 0$, then it is orthogonal
2. **Obtuse:** if $v \cdot w < 0$ and $\frac{\pi}{2} < \theta \le \pi$ then it is obtuse
3. **Acute:** if $v \cdot w > 0$ and $0 < \theta < \frac{\pi}{2}$, then it is acute

**Example :: Determine if a 2 vectors are orthogonal**
> Determine whether vector $v=(2, 6, 1)$ is orthogonal, acute or obtuse to $w=(-4, 1, 2)$, $u=(1, 1, 1)$ and $z=(4, -3, 1)$
> $$v \cdot w=2 \cdot -4 + 6 \cdot 1 + 1 \cdot 2 = 0 = \text{orthogonal}$$
> $$v \cdot u=2 \cdot 1 + 6 \cdot 1 + 1 \cdot 1 = 9 > 0 =\text{acute}$$
> $$v \cdot z=2 \cdot 4 + 6 \cdot -3 + 1 \cdot 1 = -9 < 0 =\text{obtuse}$$

**Example :: Find the angles of a triangle using 3 points:**
> A triangle is defined by the three points $A=(1,8)$, $B=(4,9)$, and $C=(5,1)$. Determine all angles 𝜃𝐴, 𝜃𝐵, and 𝜃𝐶 in the triangle. Give your answer in radians.
> 1. Find the compontents of the vectors
>  $$\overrightarrow{AB}=(4-1, 9-8)=(3, 1),\quad \overrightarrow{AC}=(5-1, 1-8)=(4, -7)$$
>  2. Then calculate each angle using $\theta = \arccos(\frac{v \cdot w}{||v|| \cdot ||w||})$
>  $$\theta_A=\arccos\frac{(3, 1) \cdot (4, -7)}{\sqrt{3^2+1^2} \cdot \sqrt{4^2 + (-7)^2 }}=\arccos(0.196)=1.373 rad$$
>  3. Repeat for $\theta_B$ and $\theta_C$ 

##### Projections:
**Definition:** Mapping points and lines from one plane onto another, resembling something of a shadow
![[Pasted image 20220117000038.png | 200]]
**Equation :: Projection of u along v:**
Assume $v \ne 0$ and the projection of u along v is the vector $u_{||v}$
$$u_{||v}=(\frac{u \cdot v}{v \cdot v})v=(\frac{u \cdot v}{||v||^2})v=(\frac{u \cdot v}{||v||})e_v$$
Sometimes $\frac{u \cdot v}{||v||}$ is referred to as the **component** of u along v.

**Equation :: Finding the orthogonal vector from the projection vector $u_{||v}$ :**
$$u_{\bot v}=u - u_{||v}$$
also...
$$u=u_{||v} + u_{\bot v}$$

##### 12.3 flashcards:

Dot product of $(2, 9, 2) \cdot (7, 1, 6)$ #flashcard 
$(2, 9, 2) \cdot (7, 1, 6) = 2 \cdot 7 + 9 \cdot 1 + 2 \cdot 6=35$
<!--ID: 1642802560157-->


5 properties of dot product #flashcard 
D-CRIP
1. Identity: $0 \cdot v = v \cdot 0 = 0$
2. Communitive: $v \cdot w = w \cdot v$
3. Pulling out scalars: $(\lambda v) \cdot w = v \cdot (\lambda w) = \lambda (v \cdot w)$
4. Distributive Property: $u \cdot (v + w) = u \cdot v + u \cdot w$
5. Relation with length: $\sqrt{v \cdot v} = ||v||$
<!--ID: 1642802560163-->


Compute the dot product of $(9j+2k)\cdot (i-4j)$ #flashcard 
$(9j+2k)\cdot (i-4j)=9j \cdot -4j + 2k \cdot 0k + i \cdot 0i=-36$
<!--ID: 1642802560166-->


Dot product angle formula #flashcard 
$\cos\theta=\frac{v \cdot w}{||v|| \cdot ||w||}$
<!--ID: 1642802560169-->


How can you tell whether an angle is acute, right or obtuse between two vectors using a dot product? #flashcard 
1. **Orthogonal:** if $v \cdot w = 0$, then it is orthogonal
2. **Obtuse:** if $v \cdot w < 0$ and $\frac{\pi}{2} < \theta \le \pi$ then it is obtuse
3. **Acute:** if $v \cdot w > 0$ and $0 < \theta < \frac{\pi}{2}$, then it is acute
<!--ID: 1642802560172-->


How can you determine if two angles are orthogonal using the dot product? #flashcard 
$||v|| \cdot ||w|| =0$ means they are orthogonal (perpendicular / right angle), otherwise they aren't orthogonal
<!--ID: 1642802560176-->


Definition of projection. #flashcard 
Mapping points from one plane onto another, can be imagined in terms of a shadow
<!--ID: 1642802560179-->


Projection formula #flashcard 
$u_{||v}=(\frac{u \cdot v}{v \cdot v})v=(\frac{u \cdot v}{||v||^2})v=(\frac{u \cdot v}{||v||})e_v$
<!--ID: 1642802560182-->


What is this symbol mean? $u_{||v}$ #flashcard 
Projection 
<!--ID: 1642802560185-->


What does this mean?  $u_{\bot v}$ #flashcard 
orthogonal
<!--ID: 1642802560189-->


What is the relationship between $v$ , $v_{||w}$ , and $v_{\bot w}$ #flashcard 
$v=v_{||w} + v_{\bot w}$
<!--ID: 1642802577980-->


## 12.4: The Cross Product
Cross Product is a vector operation used typically to compute torque. Operating on an n x n matrix, using the determinant you can find the cross product. The cross product is often used in conjunction with the term determinant.
![[Pasted image 20220121064303.png]]
##### Cross Product of a 2 x 2 matrix:
$$\begin{bmatrix}  
a & b\\  
c & d   
\end{bmatrix} = ad - bc$$

**Example :: finding the determinant of a 2x2 matrix**
> Find the determinant of a 2x2 matrix.
> $$\begin{bmatrix}  
3 & 2\\  
1/2 & 4   
\end{bmatrix} = 3 \cdot 4 - 2 \cdot 1/2 = 11$$
> Find the determinant of a 2x2 matrix
> $$\begin{bmatrix}   8 & 17\\  9 & 12   \end{bmatrix} = 8 \cdot 12 - 9 \cdot 17 = -57$$

##### Cross product of a 3 x 3 matrix:
$$\begin{bmatrix}  
a_1 & b_1 & c_1\\  
a_2 & b_2 & c_2\\
a_3 & b_3 & c_3
\end{bmatrix} = a_1\begin{bmatrix}\
b_2 & c_2\\ b_3 & c_3
\end{bmatrix}
-a_2\begin{bmatrix}\
a_2 & c_2\\ a_3 & c_3
\end{bmatrix}
+a_3\begin{bmatrix}\
a_2 & b_2\\ a_3 & b_3
\end{bmatrix}$$
**Minors:** A sub answer of the determinant acquired from breaking the matrix into smaller compontents.
![](https://jigsaw.macmillanlearning.com/books/9781319224929/epub/OEBPS/images/ROG_05074_1204_PG701a1.png)

**Example :: finding the determinant of a 3x3 matrix**
> $$\begin{bmatrix}  
4 & 0 & 7\\  
-3 & 0 & 4\\
8 & 7 & -5
\end{bmatrix} = 4\begin{bmatrix}\
0 & 4\\ 7 & -5
\end{bmatrix}
-0\begin{bmatrix}\
-3 & 4\\ 8 & -5
\end{bmatrix}
+7\begin{bmatrix}\
-3 & 0\\ 8 & 7
\end{bmatrix}$$
>$$4\begin{bmatrix}\
0 & 4\\ 7 & -5
\end{bmatrix}
-0\begin{bmatrix}\
-3 & 4\\ 8 & -5
\end{bmatrix}
+7\begin{bmatrix}\
-3 & 0\\ 8 & 7
\end{bmatrix}=4(0 - 4 \cdot 7) - (0) + 7(-21-0)=-259$$

##### Cross Product of 2 vectors: 
The cross product of vector $v=(v_1, v_2, v_3)$ and $w=(w_1, w_2, w_3)$ is the determinant of $v \times w$
$$v \times w =\begin{bmatrix}  
i & j & k\\  
v_1 & v_2 & v_3\\
w_1 & w_2 & w_3
\end{bmatrix} = i\begin{bmatrix}\
v_2 & v_3\\ w_2 & c_3
\end{bmatrix}
-j\begin{bmatrix}\
v_1 & v_3\\ w_1 & w_3
\end{bmatrix}
+k\begin{bmatrix}\
v_1 & v_2\\ w_1 & w_3
\end{bmatrix}$$
**Example :: v x w**
> Calculate $v \times w = (u_1, u_2, u_3)$; $v=(3, 7, 4)$ and $w=(-2, 2, -5)$
> $$v \times w =\begin{bmatrix}  
i & j & k\\  
3 & 7 & 4\\
-2 & 2 & -5
\end{bmatrix} = i\begin{bmatrix}\
7 & 4\\ 2 & -5
\end{bmatrix}
-j\begin{bmatrix}\
3 & 4\\ -2 & -5
\end{bmatrix}
+k\begin{bmatrix}\
3 & 7\\ -2 & 2
\end{bmatrix}$$
> $$=(-35i-8i, -(-15j+8j), 6k-(-14k))=(-43i, 7j, 20k) $$



The cross product is also unique with 3 properties:
1. $v \times w$ is orthogonal to $v$ and $w$ 
2. $v \times w$ has a length $||v|| \cdot ||w||\sin\theta$ (w/ $\theta$ being the angle between $v$ and $w$)
3. $\{v, w, v \times w\}$ is a right-handed system

##### Properties of the cross product:

1. Anti-communative: $$w \times v = -v \times w$$
2. Identity:
$$v \times v = 0$$
3. Parallel Identity:
$$v \times w = 0 \text{ if and only if } w = \lambda v \text{ for some scalar or } v=0$$

4. Scalar multiplication: 
$$(\lambda v) \times w = v \times (\lambda w) = \lambda (v \times w)$$
5. Distributive Property:
$$(u + v) \times w = u \times w + v \times w$$
##### Cross product of basis vectors:
$$i \times j = k, \quad j \times k = i, \quad k \times i = j$$
$$j \times i = -k, \quad k \times j = -i, \quad i \times k = -j$$
Example :: finding the cross product of two vectors
> Find the cross product of vectors $v=(2i + k)$ and $w=(3j+5k)$
> $$(2i+k) \times (3j + 5k) = (2i) \times (3j) + (2i) \times (5k) + k \times (3j) + k \times (5k)$$
> $$= 6(i \times j) + 10(i \times k) + 3 (k \times j) + 5(k \times k)$$
> $$=6k-10j-3i+5(0)=-3i-10j+6k$$
> Calculate the cross product of $(8𝐢−4𝐣+7𝐤)×(𝐢+𝐣−5𝐤)=a𝐢+k𝐣+c𝐤$
> Note: do not do cross multiplication for this problem
> $$v \times w =\begin{bmatrix}  
i & j & k\\  
8 & -4 & 7\\
1 & 1 & -5
\end{bmatrix} = i\begin{bmatrix}\
-4 & 7\\ 1 & -5
\end{bmatrix}
-j\begin{bmatrix}\
8 & 7\\ 1 & -5
\end{bmatrix}
+k\begin{bmatrix}\
8 & -4\\ 1 & 1
\end{bmatrix}$$
> $$=i(20-7)-j(-40-7)+k(8-(-4))=(13i, 47j, 12k)$$

**Right-handed system:**
A method of approximating cross product directions
![[Pasted image 20220121171042.png | 400]]


Best way to remember i, j and k formulas
![[Pasted image 20220121171425.png]]


##### Area of parallelogram:
$area(P)=||v \times w||$

**Example :: Area of parallelogram:**
> Find the area of the parallelogram determined by 𝐯=⟨5,0,0⟩ and 𝐰=⟨0,−5,9⟩.
> $$area(P)=||v \times w||$$
> $$v \times w =\begin{bmatrix}  
i & j & k\\  
5 & 0 & 0\\
0 & -5 & 9
\end{bmatrix} = i\begin{bmatrix}\
0 & 0 \\ -5 & 9
\end{bmatrix}
-j\begin{bmatrix}\
5 & 0\\ 0 & 9
\end{bmatrix}
+k\begin{bmatrix}\
5 & 0\\ 0 & -5
\end{bmatrix}=...$$
> $$||v \times w||=||(0, -45,-25)|| =\sqrt{(-25)^2+(-45)^2}=\sqrt{2650} \approx 51$$

##### Area of triangle:
$area(T)=\frac{||v \times w||}{2}$

Note: If you think, a parallelogram is essentially two triangles together, relating to why they are the same equation with the triangle just being half that of the parallelogram.

##### Volume of parallelpiped:
$Volume(D)=|u \cdot (v \times w)|=det\begin{pmatrix}u \\v \\ w &\end{pmatrix}$
![[Pasted image 20220122154310.png]]


**Example :: Volume of Parallelpiped**
> Calculate the volume of the parallelepiped spanned by 𝐮=⟨2,0,3⟩, 𝐯=⟨2,4,2⟩, and 𝐰=⟨−4,3,7⟩
> $$|u \cdot (v \times w)|=...$$
> $$v \times w =\begin{bmatrix}  
i & j & k\\  
2 & 4 & 2\\
-4 & 3 & 7
\end{bmatrix} = i\begin{bmatrix}\
4 & 2\\ 3 & 7
\end{bmatrix}
-j\begin{bmatrix}\
2 & 2\\ -4 & 7
\end{bmatrix}
+k\begin{bmatrix}\
2 & 4\\ -4 & 3
\end{bmatrix}=...$$
> $$=i(28-6)-j(14+8)+k(6+16)=(22i, -22j, 22k)$$
> $$|u \cdot (v \times w)|=(2i, 0j, 3k) \cdot (22i, -22j, 22k)=(44 + 0+ 66)=110$$




##### 12.4 flashcards:

What is essentially the output of a cross product of a matrix? #flashcard 
A determinant value
<!--ID: 1642802560192-->



How do you find the cross product / determinant of a 2 x 2 matrix? #flashcard 
$$\begin{bmatrix}  
a & b\\  
c & d   
\end{bmatrix} = ad - bc$$
<!--ID: 1642802560195-->


How do you find the cross product / determinant of a 3 x 3 matrix? #flashcard 
$$\begin{bmatrix}  
a_1 & b_1 & c_1\\  
a_2 & b_2 & c_2\\
a_3 & b_3 & c_3
\end{bmatrix} = a_1\begin{bmatrix}\
b_2 & c_2\\ b_3 & c_3
\end{bmatrix}
-a_2\begin{bmatrix}\
a_2 & c_2\\ a_3 & c_3
\end{bmatrix}
+a_3\begin{bmatrix}\
a_2 & b_2\\ a_3 & b_3
\end{bmatrix}$$
<!--ID: 1642802560198-->


What are the 3 properties of a cross product? #flashcard 
1. $v \times w$ is orthogonal to $v$ and $w$ 
2. $v \times w$ has a length $||v|| \cdot ||w||\sin\theta$ (w/ $\theta$ being the angle between $v$ and $w$)
3. $\{v, w, v \times w\}$ is a right-handed system
<!--ID: 1642802560202-->



(1/5) Anti-communitive property of cross product: $v \times w = ...$ #flashcard 
$-w \times v$
<!--ID: 1642802560205-->


(2/5) Identity Property of cross product #flashcard 
$v \times v = 0$
<!--ID: 1642802560208-->


(3/5) Parallel identity of cross product #flashcard 
$v \times w = 0$ if v and w are parallel
<!--ID: 1642802560211-->


(4/5) Scalar property of cross product #flashcard 
$\lambda (v \times w) = (\lambda v) \times w = v \times (\lambda w)$
<!--ID: 1642802560214-->


(5/5) Distributive property of cross product #flashcard 
$(u + v) \times w = u \times w + v \times w$
<!--ID: 1642802560217-->


## 12.5: Planes in 3D Space

##### Normal Vector:
**Definition:** A vector that is [[110 Vectors#Orthogonal Vectors |orthogonal]] to a plane. Typically used to determine how a plane is oriented in space.
![[Pasted image 20220122172954.png | 200]]


##### Geometric Description of a Plane:
$P_0=(x_0, y_0, z_0)$, is the origin of the plane
![[Pasted image 20220122173708.png |200]]
##### Equations of a Plane:
**Vector form:** $n \cdot (x, y, z) = d$
**Scalarform 1:** $a(x-x_0)+b(y-y_0)+c(z-z_0)=0$
**Scalarform 2:** $ax+by+cz=d$
- where $d=ax_0+by_0+cz_0$

**Example :: Find the plane's equation using a normal vector and $P_0$** 
> Find the equation of the plane with normal vector 𝐧 passing through point $P_0$ in the scalar form  $ax+by+cz=d$, where $n=\langle −10,9,5 \rangle,P_0=(9,11,2)$ 
> Using scalarform 1: $a(x-x_0)+b(y-y_0)+c(z-z_0)=0$ 
> $$-10(x-9)+9(y-11)+5(z-2)=0$$
> Then we solve for the actual equation...
> $$-10x+90+9y-99+5z-10=0$$
> $$-10x+9y+5z=19$$

**Example :: Find the equation of a plane parallel to another**
> Let $P$ have equation $7x-4y+2z=-10$.  Find an equation of the plane parallel to $P$ passing through point $P_0=(2, -1, 3)$:
> $$7(x+2)-4(y-1)+2(z+3)=0$$
> $$7x-4y+2z=24$$

##### Collinear:
**Definition:** Points that lie on a similar line. If 3 points aren't collinear, then there is only a plane that can pass through all, which looks like...
![[Pasted image 20220122202324.png | 200]]

**Example :: Find a plane's equation using 3 points:**
> Find an equation of the plane passing through the three points given $P=(4,5,7), 𝑄=(5,10,15), 𝑅=(11,11,8)$
> 1. Find a normal vector using $\overrightarrow{PQ}$ and $\overrightarrow{PR}$
> $$\overrightarrow{PQ}=Q-P=(5-4, 10-5, 15-7)=\langle 1, 5, 8 \rangle$$
> $$\overrightarrow{PR}=Q-R=(11-4, 11-5, 8-7)=\langle 7, 6, 1 \rangle$$
> $$n = \overrightarrow{PQ} \times \overrightarrow{PR} =\begin{bmatrix}  
i & j & k\\  
1 & 5 & 8\\
7 & 6 & 1
\end{bmatrix} = i\begin{bmatrix}\
5 & 8\\ 6 & 1
\end{bmatrix}
-j\begin{bmatrix}\
1 & 8\\ 7 & 1
\end{bmatrix}
+k\begin{bmatrix}\
1 & 5\\ 7 & 6
\end{bmatrix}=...$$
> $$=i(5-48)-j(1-56)+k(6-35)= \langle -43i, 55j, -29k \rangle$$
> 2. Choose a point on the plane and compute d (using P)
> $$d=n\cdot \overrightarrow{OP}= \langle -43, 55, -29 \rangle \cdot (4, 5, 7)=-100$$



##### 12.5 flashcards:

What is a normal vector? #flashcard 
A vector perpendicular to a plane
<!--ID: 1642970415143-->


What are the 3 forms of the equation to describe a plane? #flashcard 
1. **Vector form:** $n \cdot (x, y, z) = d$
2. **Scalarform 1:** $a(x-x_0)+b(y-y_0)+c(z-z_0)=0$
3. **Scalarform 2:** $ax+by+cz=d$
<!--ID: 1642970415148-->


What is the definition of collinear? #flashcard 
3 points that are on a similar line. If points are not collinear, then together they can form a plane
<!--ID: 1642970415153-->


## 12.6 Quadratic Surfaces
**Quadratic Surface:** A multi-dimensional surface.
Aka: Quadric Surface

**Quadric Surface Equation:**
> $$Ax^2+By^2 +Cz^2 +Dxy +Eyz + Fzx + ax + by + cz + d = 0$$

**Quadric Surface Standard Position Equation:**
> $$Ax^2+By^2 +Cz^2 + ax + by + cz + d = 0$$
> Note: If D, E, and F are all equal to 0

**Traces:** The geographic representation of a shape by holding one variable constant for proper representation. 
Ex. The xz-trace of $x^2 + y^2 + z^2 = 1$ would be $x^2 + z^2 =1$ by setting $y=0$
![[Pasted image 20220126132120.png ]]
![[Pasted image 20220126133238.png]]
![[Pasted image 20220126133251.png]]

##### Ellipsoids:
$$(\frac{x}{a})^2+(\frac{y}{b})^2+(\frac{z}{c})^2=1$$
![[Pasted image 20220126132512.png]]

##### Hyperboloids:
**One Sheet Hyperboloids:**
$$(\frac{x}{a})^2+(\frac{y}{b})^2=(\frac{z}{c})^2+1$$
![[Pasted image 20220126132428.png]]
**Two Sheet Hyperboloids:**
$$(\frac{x}{a})^2+(\frac{y}{b})^2=(\frac{z}{c})^2-1$$
![[Pasted image 20220126132353.png]]


**Elliptic Cone:**
$$(\frac{x}{a})^2+(\frac{y}{b})^2=(\frac{z}{c})^2$$
![[Pasted image 20220126132746.png]]

##### Paraboloids:
**Elliptic Paraboloid:**
$$z=(\frac{x}{a})^2+(\frac{y}{b})^2$$
![[Pasted image 20220126133023.png |300]]
**Hyperbolic Paraboloid (saddle point):**
$$z=(\frac{x}{a})^2-(\frac{y}{b})^2$$
![[Pasted image 20220126133102.png]]


##### Cylinders:
![[Pasted image 20220126133341.png]]
**Elliptic Cylinder:**
$$(\frac{x}{a})^2+(\frac{y}{b})^2=1$$
![[Pasted image 20220126133559.png |300]]


**Hyperbolic Cylinder:**
$$(\frac{y}{b})^2-(\frac{x}{a})^2=1$$
![[Pasted image 20220126133539.png]]
**Parabolic Cylinder:**
$$y=ax^2$$
![[Pasted image 20220126133518.png]]

##### 12.6 Flashcards:

What is this quadric equation? 
$y=ax^2$ #flashcard 
Parabolic Cylinder
![[Pasted image 20220126133518.png]]
<!--ID: 1643224452738-->


What is this quadric equation?
$(\frac{y}{b})^2-(\frac{x}{a})^2=1$ #flashcard 
Hyperbolic Cylinder
![[Pasted image 20220126133539.png]]
<!--ID: 1643224452742-->


What is this quadric equation?
$(\frac{x}{a})^2+(\frac{y}{b})^2=1$ #flashcard 
Elliptic Cylinder
![[Pasted image 20220126133559.png |300]]
<!--ID: 1643224452743-->


What is this quadric equation?
$z=(\frac{x}{a})^2-(\frac{y}{b})^2$ #flashcard 
Hyperbolic Paraboloid (saddle point)
![[Pasted image 20220126133102.png]]
<!--ID: 1643224452744-->


What is this quadric equation?
$z=(\frac{x}{a})^2+(\frac{y}{b})^2$ #flashcard 
Elliptic Paraboloid
![[Pasted image 20220126133023.png |300]]
<!--ID: 1643224452745-->


What is this quadric equation?
$(\frac{x}{a})^2+(\frac{y}{b})^2=(\frac{z}{c})^2$ #flashcard 
Elliptic Cone
![[Pasted image 20220126132746.png]]
<!--ID: 1643224452746-->


What is this quadric equation?
$(\frac{x}{a})^2+(\frac{y}{b})^2=(\frac{z}{c})^2-1$ #flashcard 
Two Sheet Hyperboloids
![[Pasted image 20220126132353.png]]
<!--ID: 1643224452747-->


What is this quadric equation?
$(\frac{x}{a})^2+(\frac{y}{b})^2=(\frac{z}{c})^2+1$ #flashcard 
One Sheet Hyperboloids
![[Pasted image 20220126132428.png]]
<!--ID: 1643224452749-->


What is this quadric equation?
$(\frac{x}{a})^2+(\frac{y}{b})^2+(\frac{z}{c})^2=1$ #flashcard 
Ellipsoids
![[Pasted image 20220126132512.png]]
<!--ID: 1643224452750-->


Find the equation of an ellipsoid passing through the points (±4,0,0), (0,±6,0) and (0,0,±14). #flashcard 
ellipsoid = $(\frac{x}{a})^2+(\frac{y}{b})^2+(\frac{z}{c})^2=1$ 
ANS: $(\frac{x}{4})^2+(\frac{y}{6})^2+(\frac{z}{14})^2=1$
<!--ID: 1643227721592-->
