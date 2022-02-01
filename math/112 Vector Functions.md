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

Examples:
> Does the point $P=(5,18,256)$ lie on the path $r= \langle 1+t,2+t^2,𝑡^4 \rangle$?
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
> $$-4(x-8)-2(y+14)+1(x+12)=0$$
> $$-4x-2y+z=-16$$
> $$8x-2y+z=-27$$


> Determine whether $r_1(𝑡)=⟨𝑡^2+2,𝑡+1,5𝑡−1⟩$ and $r_2(𝑡)=⟨3𝑡,2𝑡−2,𝑡^2−6⟩$ collide or intersect
> 1. They collide if $r_1(t)=r_2(t)$ where a value of t exists
> 2.  $t+1=2t-2$ equals $t=3$ but when plugged in doesn't equal out
> 3. If they don't collide, they can still intersect. We can find this out if we set $r_1(s)=r_2(t)$ which implies $t=1$ and $s=-1$, which satisfies the equations meaning the equations intersect, but don't collide at the same moment  

> The intersection of the plane $𝑦=2$ with the sphere $𝑥^2+𝑦^2+𝑧^2=104$
> 1. To find this we must plug the values into the equation, and since we know y has a radius of 2 we can create the equation $x^2+2^2+z^2=104$ where $x^2+z^2=100$
> 2. $x=\sqrt{100}cos(t) \quad z=\sqrt{100}sin(t)$ therefore $r(t)= \langle 10cos(t), 2, sin(t) \rangle$

