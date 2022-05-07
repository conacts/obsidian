## 17.1 Green's Theorem
Used to find the circulation of a non-conservative vector field. The curve $C$ (the boundary) must be a closed curve that doesn't intersect. 
![[Pasted image 20220426140116.png |300]]

##### Recap
Recall the following two notations for line integral of $F = \langle F_1, F_2 \rangle$ 
$$\int_C F \cdot dr \quad \text{and} \quad \int_C F_1 dx + F_2 dy$$
If $C$ is parametrized by $r(t) = \langle x(t), y(t) \rangle$ for $a \le t \le b$, then 
$$dx = x'(t)dt \quad \quad dy = y'(t)dt$$
$$\int_C F_1dx + F_2 dy = \int^b_a \Big ( F_1 (x(t), y(t)) x'(t) + F_2(x(t), y(t)) y'(t)\Big )$$


##### Green's Theorem
Let $D$ be a domain whose boundary $\partial D$ is a simple closed curve, oriented counterclockwise if $F_1$ and $F_2$ have continuous partial derivatives in an open region containing $D$, then 
$$\oint_{\partial D} F \cdot dr = \oint_{\partial D} F_1dx + F_2 dy = \iint_D \Big (\frac{\partial F_2}{\partial x} - \frac{\partial F_1}{\partial y} \Big ) dA$$
If field $F$ is a conservative vector field, then the cross-partial condition is satisfied
$$\frac{\partial F_2}{\partial x} - \frac{\partial F_1}{\partial y} = 0$$
![[Pasted image 20220426141344.png |300]]
![[Pasted image 20220426142158.png |300]]

###### Example :: Verify Green's Theorem
> Verify Green's Theorem for the line integral along the unitt circle $C$ oriented counter-clockwise over formula $\oint_C xy^2 dx + xdy$
> ![[Pasted image 20220426142848.png|200]]
> 1. We must compare the Integration from Green's Theorem to the integration from the direct integral
> 2. Direct Integration
> 	1. Find values for unit circle
> 		1. $x = \cos \theta, \quad y = \sin \theta$
> 		2. $dx = - \sin \theta d\theta, \quad dy = \cos \theta d \theta$
> 	2. Plug in for dx and dy and solve
> 		1. $\oint_C xy^2 dx + xdy = \int^{2\pi}_0 (-\cos\theta\sin^3\theta + \cos^2 \theta) d \theta$
> 	3. Intgerate
> 		1. $\int^{2\pi}_0 (-\cos\theta\sin^3\theta + \cos^2 \theta) d \theta = -\frac{\sin^4 \theta}{4} \Big |_0^{2\pi} + \frac{1}{2} ( \theta + \frac{\sin 2\theta}{2}) \Big |^{2\pi}_0 = \pi$ 
> 3. Green's Theorem Integral
> 	1. $F_1 = xy^2$ and $F_2 = x$
> 	2. We can check if the item is conservative and solve for Green's Theorem
> 		1. $$\frac{\partial F_2}{\partial x} - \frac{\partial F_1}{\partial y} = \frac{\partial}{\partial x} x  - \frac{\partial }{\partial y} xy^2 = 1 - 2xy$$
> 	3. Now we integrate
> 		1. Since $dA = dxdy$ we can translate our shape to tackle this problem. Since the unit circle is $x^2 + y^2 \le 1$. We can solve for $y = \pm \sqrt{1 - x^2}$ 
> 		2. $$\iint_D (1 - 2xy) dA = -2 \int^1_{x=-1} \int^{\sqrt{1 - x^2}}_{y=-\sqrt{1 - x^2}} = - \int^1_{x=-1}xy^2 \Big |^{\sqrt{1 - x^2}}_{y = - \sqrt{1 - x^2}}dx = 0$$
> 		3. $$\iint_D 1 dA = area(D) = \pi$$


###### Evaluate the Green's Theorem
> Evaluate $I = \oint F \cdot dr$, where $F(x,y) = \langle y + \sin(x^2), x^2 + e^{y^2} \rangle$ and $C$ is a circle of radius 4 centered at the origin oriented counterclockwise, using the easiest method
> 1. $F_1 = y + \sin x^2$ and $F_2 = x^2 + e^{y^2}$
> 2. Set up the paramtrization of the circle
> 	1. $\langle 4\cos \theta, 4 \sin \theta  \rangle$
> 3. Find $dx$ and $dy$
> 	1. $dx = -4\sin \theta$ and $dy = 4\cos \theta$
> 2. Plug $dx$ and $dy$ into the equation
> 	1. $F(x,y) = (y + \sin x^2)dx + (x^2 + e^{y^2})dy =$  
> 	2. $F(x,y) = (4\sin\theta + \sin(16\cos^2\theta))(-4\sin\theta)d\theta + (16\cos^2\theta + e^{16\sin^2 \theta}) \cdot 4 \cos \theta d\theta$ 
> 	3. $F(x,y) = (-16\sin^2\theta - 4 \sin \theta \sin (16\cos^2\theta) + 64 \cos^3 \theta + 4 \cos \theta \cdot e^{16\sin^2 \theta})d\theta$ 
> 3. Solve for Green's Theorem
> 	1. $$\frac{\partial F_2}{\partial x} - \frac{\partial F_1}{\partial y} = \frac{\partial}{\partial x} (x^2 + e^{y^2})  - \frac{\partial }{\partial y}(y + \sin(x^2)) = 2x - 1$$
> 4. Integrate
> 	1. $$\iint_D (2x)dxdy \iint_D  (-1) dx dy = 0 - area(D) = -16\pi$$
> 5. Find bounds for integral
> 	1. A circle with a radius of 4 is $x^2 + y^2 = 4$. this means we can get $y = \pm \sqrt{4 - x^2}$ 
> 6. Integrate
> 	1. $$\int^2_{-2} \int^{\sqrt{4 - x^2}}_{-\sqrt{4 - x^2}} 2x \cos x^2 - 2ye^{y^2} dydx$$
> 	2. Calculate inner integral
> 		1. $$\int^{\sqrt{4 - x^2}}_{-\sqrt{4 - x^2}} 2x \cos x^2 - 2ye^{y^2} dy = 4x\cos \left(x^2\right)\sqrt{-x^2+4}$$
> 	3. Calculate outer integral
> 		1. $$\int^2_{x=-2} 4x\cos \left(x^2\right)\sqrt{-x^2+4}$$
> ---
> Use Green's Theorem to evaluate the line integral $\oint_C F \cdot dr$ where $F(x,y) = \langle x^2, x^2 \rangle$ and $C$ consists of the arcs $y = x^2$ and $y = 5x$ for $0 \le x \le 5$. Orient the curve counterclockwise
> 1. $F_1 = x^2$ and $F_2 = x^2$
> 2. Solve the first part of Green's Algorithm
> 	1. $$\frac{\partial F_2}{\partial x} - \frac{\partial F_1}{\partial y} = \frac{\partial}{\partial x} (x^2)  - \frac{\partial }{\partial y} (x^2) = 2x$$
> 3. Set up the integral
> 	1. $$\int^5_0 \int^{5x}_{x^2} 2x dydx = \frac{625}{6}$$
> ---
> Let $C_R$ be a circle of radius $R$ centered at the origin. Use Green's Theorem to find the value of $R$ that maximizes $\oint y^3 dx + 3x dy$ or $\langle y^3, 3x \rangle$ 
> 1.  Calculate the 1st part of Green's Theorem
> 	2. $$\frac{\partial F_2}{\partial r} - \frac{\partial F_1}{\partial \theta} = \frac{\partial}{\partial x} (3x)  - \frac{\partial }{\partial y} (y^3) = 3 - 3y^2$$
> 2. Convert to y and x to circular coordinates
> 	1. $x = r\cos\theta$ and $y = r\sin\theta$ 
> 	2. $$\iint_D 3 - 3y^2 = \iint_D 3 - 3r^2\sin^2\theta = \int^R_0 \int^{2\pi}_0 3 - 3r^2\sin^2\theta d\theta dr$$
> 3. Integrate
> 	1. Calculate inner integral
> 		1. $$\int^{2\pi}_0 3 - 3r^2\sin^2\theta d\theta = 6\pi -3\pi r^2$$
> 	2. Calculate outer integral
> 		1. $$\int^R_0 6\pi - 3\pi r^2 = 6\pi R - 3 \pi R^3 $$
> 	3. Find max of R
> 		1. $$3 R \pi (2 - R^2) \quad R = \sqrt{2}$$
> ----
> Use Green's Theorem to evaluate the line integral $\oint 8ydx + 2xdy$, where $C$ is a triangle with verticies $(-1, 0), (1, 0), (0, 1)$. Orient the curve counterclockwise.
> 1. Apply Green's Theorem
> 	1. $$\frac{\partial F_2}{\partial x} - \frac{\partial F_1}{\partial y} = \frac{\partial}{\partial x} (2x)  - \frac{\partial }{\partial y} (8y) = 2 - 8 = -6$$
> 	2. Integrate
> 		1. $$-6 \iint_D 1dA$$
> 		2. This is essentially $-6$ times the area of the triangle which gives us $6 \cdot 1 = -6$
> ---
> Use Green's Theorem to evaluate the line integral $\int_C xydx + (x^2 + x)dy$ where $C$ is the path shown in the figure. Suppose that $a=8$.
> ![[Pasted image 20220426181734.png |300]]
> 1. Set up integral bounds
> 	1. $-8 \le x \le 8$ and $0 \le  y \le 8$
> 2. Use Green's Theorem
> 	1. $$\frac{\partial F_2}{\partial x} - \frac{\partial F_1}{\partial y} = \frac{\partial}{\partial x} (x^2 + x)  - \frac{\partial }{\partial y} (xy) = 2x + 1 - x = x + 1$$
> 2. Integrate
> 	1. $$\int_C dx + (x^2 + x) dy = 0 + \iint_D dA = Area(D) = \frac{16 \cdot 8}{2} = 64$$

##### Formulas for the area of the region $D$ enclosed by $C$
$$area(D) = \oint_C xdy = \int-ydx = \frac{1}{2} \oint_C xdy - ydx$$
##### Circulation Form of Green's Theorem
$$\oint_{\partial D} F \cdot dr = \iint_D curl_z (F)dA$$
where $curl_z (F)= \frac{\partial F_2}{\partial x} - \frac{\partial F_1}{\partial y}$ 


## 17.2 Stoke's Theorem
Stokes' Theorem is [[124 Fundamental Theorems of Vector Analysis#17 1 Green's Theorem|Green's Theorem]] in 3 dimensions, rather than 2 dimensions
![[Pasted image 20220427000431.png]]

##### Boundary Orientation
The orientation of surface $S$ creating a normal vector

![[Pasted image 20220427000550.png]]

##### Stokes' Theorem
Let $S$ be a 3D surface, and let $F$ be a vector field whose components have continuous partial derivatives on an open region containing $S$. 
$$\oint_{\partial S} F \cdot dr = \iint_S curl(F) \cdot dS = \iint_S ( \nabla \times F) \cdot dS$$
$$dS = N(u, v) dudv \quad \text{N = normal vector}$$
The integral on the left is defined relative to the boundary orientation of $\partial S$. 
The paramatrization is...
$$r(t) = \langle x(t), y(t), f(x(t), y(t)) \rangle$$
If $S$ is a closed surface, then
$$\iint_S curl(F) \cdot dS = 0$$

###### Example :: Verify Stokes' Theorem
> Verify Stokes' Theorem for $F(x,y,yz) = (-y, 2x, x + z)$ and the upper hemisphere with outward-pointing normal vectors and surface $S = \{(x,y,z) : x^2 + y^2 + z^2 = 1, z \ge 0\}$ 
> 1. Compute the line integral around the boundary curve
> 	1. Boundary of $S$ is a unit circle oriented counterclockwise with the paramtrization of $r(t) = (\cos t, \sin t, 0)$
> 	2. Find $r'(t)$
> 		1. $r'(t) = (-\sin t, \cos t, 0)$
> 	3. Find $F(r(t))$
> 		1. $F(r(t)) = (-\sin t, 2 \cos t, \cos t)$
> 	4. Find $F(r(t)) \cdot r'(t)$
> 		1. $F(r(t)) \cdot r'(t) = (-\sin t, 2 \cos t, \cos t) \cdot (-\sin t, \cos t, 0)$
> 		2. $F(r(t)) \cdot r'(t) = \sin^2 t + 2 \cos ^2 t = 1 + \cos^2 t$ 
> 	5. Integrate
> 		1. $\int^{2\pi}_0 (1 + \cos^2 t)dt = 2\pi + \pi = 3\pi$
> 2. Use Stokes' Theorem
> 	1. Compute the curl
> 		1. $$curl(F) = \begin{bmatrix} i & j & k \\ \frac{\partial}{\partial x}  & \frac{\partial}{\partial y} & \frac{\partial}{\partial z} \\ -y & 2x & x + z \end{bmatrix} = (0, -1, 3)$$ 
> 	2. Compute the surface integral of the curl
> 		1. Paramatrize the hemisphere using spherical coordinates
> 			1. $G(\theta, \phi) = (\cos \theta \sin \phi, \sin \theta \sin \phi, \cos \phi)$ 
> 		2. Find the normal vector
> 			1. $$N = T_\theta \times T_\phi = \sin\phi(\cos\theta\sin\phi, \sin\theta\sin\phi, \cos\phi)$$
> 		3. Find $curl(F) \cdot N$
> 			1. $curl(F) \cdot N = \sin\phi (0, -1, 3) \cdot (\cos \theta \sin \phi, \sin \theta \sin \phi, \cos \phi)$ 
> 			2. $curl(F) \cdot N = -\sin\theta\sin^2\phi + 3\cos \phi \sin \phi$ 
> 		1. Integrate
> 			1. $\iint_S curl(F) \cdot dS = \int^{\pi/2}_{\phi=0} \int^{2\pi}_{\theta = 0} (-\sin\theta\sin^2\phi + 3\cos \phi \sin \phi) d\theta d\phi$
> 			2. $=0 + 2\pi \int^{\pi/2}_{\phi = 0} 3 \cos \phi \sin \phi d\phi = 2\pi(\frac{3}{2}\sin^2 \phi) \Big |^{\pi/2}_{\phi = 0} = 3\pi$ 
> 3. Conclusion: Verified Stokes' Theorem


###### Example :: Stokes' Theorem:
> Consider the vector field $F = (9y, 5z, x)$ and let $C$ be the triangle with verticies $(0,0,0)$, $(3,0,0)$ and $(0,3,3)$, oriented counterclockwise as viewed from above. Apply Stokes' Theorem to evaluate $\oint F \cdot dr$ by finding the flux of $curl(F)$ across an appropriate surface. 
> 1. Use Stokes' Theorem to find the answer
> 	1. $\oint_{\partial S} F \cdot dr = \iint_S curl(F) \cdot dS = \iint_S ( \nabla \times F) \cdot dS$
> 2. Find $curl(F)$
> 	1. $$curl(F) = \begin{bmatrix} i & j & k \\ \frac{\partial}{\partial x}  & \frac{\partial}{\partial y} & \frac{\partial}{\partial z} \\ 9y & 5z & x \end{bmatrix} = (- 5)i - (1-0)j + (0 - 9)k = (-5, -1, -9)$$
> 3. Find Normal vector $N$
> 	1. $$N = r_x \times r_y = \begin{bmatrix} i & j & k \\ 1 & 0 & 0 \\ 0 & 1 & 1 \end{bmatrix} = (0,-1, 1)$$
> 4. Integrate
> 	1. $\iint_S curl(F) \cdot dS = \int^3_{x=0} \int^{3-x}_{y=0} (-5, -1, -9) \cdot (0, -1, 1) dydx$
> 	2. $\int^3_{x=0} \int^{3-x}_{y=0} -8 dydx$
> 	3. $-8 \int^3_{x=0} \int^{3-x}_{y=0} dydx = -36$
> ----
> Suppose $F = (y + 9x, 8x + 2z, 6y + 4x)$ and $S$ is a surface bounded by $C$, a circle with radius 4, center at $(3,0,0)$, in the plane $x=3$, and oriented counterclockwise as viewed from the origin $(0,0,0)$.
> Find the flux of $curl(F)$ across $S$ and then evaluate the circulation $\oint_C F \cdot dr$ 
> 1. Find $\iint_S curl(F) \cdot dS$
> 	1. Find $curl(F)$
> 		1. $$curl(F) = \begin{bmatrix} i & j & k \\ \frac{\partial}{\partial x}  & \frac{\partial}{\partial y} & \frac{\partial}{\partial z} \\ y + 9x & 8x + 2z & 6y + 4x \end{bmatrix} = (6 - 2)i - (0 - 0)j + (8 - 1)k = (4, 0, 7)$$
> 	2. Find the paramtrization for $T_r$ and $T_\theta$
> 			1. $T_r = \frac{\partial}{\partial r} = (0, \cos\theta, \sin \theta)$
> 			2. $t_\theta = \frac{\partial}{\partial \theta} = (0, -r\sin\theta, r\cos\theta)$ 
> 	3. Find the normal vector $N$
> 		1. $$N = T_r \times T_\theta = \begin{bmatrix} i & j & k \\ 0 & \cos\theta &\sin \theta \\ 0 & -r\sin\theta & r\cos\theta \end{bmatrix} = (r, 0, 0)$$
> 		2. Since the boundary orientation is **counterclockwise** viewed from the origin, the normal points toward the origin rather than away from it, so $N = (-r, 0,0)$ 
> 	4. Find the curl
> 		1. $$\iint_S curl(F) \cdot dr = \int^4_0 \int_0^{2\pi} (4, -4, 7) \cdot (-r, 0, 0) = -64\pi$$
> 2. $\oint_C F \cdot dr = -64\pi$
> ---
> 
> Suppose $F = (5y, -2x, 5y)$ and $S$ is a surface bounded by $C$, the circle $x^2 + y^2 = 25$ and $z = 2$ oriented counterclockwise as viewed from above.
> Find the flux of $curl(F)$ across $S$ and then evaluate the circulation $\oint_C F \cdot dr$ 
> 1. Find the curl
> 	1. $$curl(F) = \begin{bmatrix} i & j & k \\ \frac{\partial}{\partial x}  & \frac{\partial}{\partial y} & \frac{\partial}{\partial z} \\ 5y & -2x & 5y \end{bmatrix} = 5i - 0j + (-2-5)k = (5, 0, -7)$$
> 2. Find paramtrization of $T_r$ and $T_\theta$
> 	1. $T_r = (\cos\theta, \sin \theta, 0)$
> 	2. $T_\theta = (-r\sin\theta, r\cos\theta, 0)$
> 3. Find the normal vector $N$
> 	1. $$N = T_r \times T_\theta = \begin{bmatrix} i & j & k \\ \cos\theta & \sin \theta & 0 \\ -r\sin\theta & r\cos\theta & 0\end{bmatrix} = (0, 0, r)$$
> 	2. We invert this to $N = (0,0,-r)$ because we are positioned counterclockwise
> 4. Integrate
> 	1. $$\int^5_{r=0} \int^{2\pi}_0 (5, 0, -7) \cdot (0,0,r) = -7\int^5_{r=0} \int^{2\pi}_0r d\theta dr = -175\pi$$



## 17.3 Divergence Theorem

##### The Divergence Theorem
Let $S$ be a clsed surface that enclosed a region $W$ in $R^3$. Assume that $S$ is piceewise smooth and is oriented by normal vectors pointing to the outside of $W$. If $F$ is a vector field whose components have continuous partial derivatives in an open domain containing $W$, then
$$\iint_S F \cdot dS = \iiint_W div(F) dV \quad\quad div(F) = \nabla F$$

> Use the Divergence Theorem to evaluate the flux $\iint_S F \cdot dS$ $F(x,y,z) = \langle zx, 4yx^3, x^2 z \rangle$. Let $S$ be the surface that bounds the solid region with bondary given by $y = 4-x^2 - z^2,y=0$. 
> $\iint_S F \cdot dS = ~?$ 
> 1. Find the divergence
> 	1. $div(F) = \nabla F = z + 4x^3 + x^2$
> 2. Paramatrize the shape using cylindrical coordinates
> 	1. $x = r\cos \theta, \quad y = y, \quad z = r\sin \theta$
> 	2. $div(F) = r\sin\theta + 4r^3\cos^3\theta + r^2\cos^2\theta$
> 3. Integrate
> 	1. $$\iiint_W div(F) = \int^2_0 \int^{2\pi}_0 \int_0^{4-r} r\sin\theta + 4r^3\cos^3\theta + r^2\cos^2\theta ~ dy~ d\theta  ~dr = \frac{16\pi}{3}$$
> ---
> Use the Divergence Theorem to evaluate the flux of the field $F(x,y,z) = \langle e^{z^2}, 4y + \sin(x^2 z), 3z + \sqrt{x^2 + 9y^2} \rangle$ through the surface $S$, where $S$ is the region $x^2 + y^2 \le z \le 8 - x^2 - y^2$
> 1. Find the $div(F)$
> 	1. $div(F) = \nabla F = 0 + 4 + 3 = 7$
> 3. Find bounds for $r$ by seeing where the bounds intersect
> 	1. $x^2 + y^2 = 8 - x^2 - y^2$
> 	2. $8 - 2x^2 - 2y^2$ 
> 	3. $r = 2$
> 4. Integrate
> 	1. $$7 \int^2_0 \int^{2\pi}_0 (8-2x^2-2y^2)r d\theta~dr = 14 \int^2_0 \int^{2\pi}_0 (4-r^2)r d\theta~dr$$
> ---
> Use the Divergence Theorem to evaluate the flux of the field $F(x,y,z) = \langle 3x^2 - z^2, e^{z^2}-\cos x, 3y^3\rangle$ through the surface $S$, where $S$ is the boundary of the region bounded by $x + 2y + 4z = 12$ and the coordinate planes in the first octant. $\iint_S F \cdot dS$
> 1. Find the $div(F)$
> 	1. $div(F) = \nabla F = 6x + 0 + 0 = 6x$
> 2. Find bounds
> 	1. $0 \le x \le 12$ 
> 	2. $0 \le y \le 6 - \frac{x}{2}$
> 	3. $0 \le z \le 3 - \frac{y}{2} - \frac{x}{4}$
> 4. Integrate
> 	1. $$\int^{12}_0 \int^{6 - \frac{x}{2}}_0 \int^{3 - \frac{y}{2} - \frac{x}{4}}_0 6x ~dz~dy~dx = 648$$


