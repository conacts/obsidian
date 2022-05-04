##### Question 1: D
The rear wheel of a bicycle is following the path $\langle t, t^2 \rangle$ for $0 \le t \le 2$. The front wheel is always exactly 1 meter in front of the rear wheel.
1. Give a parametrization for the position of the front wheel of the tire.
	1. ANS: $\langle t + \frac{2}{\sqrt{1 + 4t^2}}, t^2 + \frac{2t}{\sqrt{1 + 4t^2}} \rangle$ 
	2. Find the direction of real wheel path
		1. $\frac{d}{dt}\langle t, t^2 \rangle = \langle 1, 2t \rangle$ 
	3. Find the unit vector of the directional vector
		1. $$||\langle 1, 2t \rangle|| = \langle \frac{1}{\sqrt{1 + 4t^2}}, \frac{2t}{\sqrt{1 + 4t^2}} \rangle$$
2. \[C\] Which wheel travels a longer distance? Set up arclength integrals for both paramtrization, and then use a computer to calculate the integrals and determine what distance each wheel travels.
	1. ANS: Front wheel = 4.65, Back wheel = 5.13
	2. Arclength integral
		1. $$\text{Front Wheel =}\int^2_0 \sqrt{1^2 + (2t)^2}dt = 4.6467$$
		2. $$\text{Back Wheel =}\int^2_0 \sqrt{ \Big (\frac{d}{dt}( \frac{1}{\sqrt{1 + 4t^2}}) \Big )^2 +  \Big (\frac{d}{dt}( \frac{2t}{\sqrt{1 + 4t^2}}) \Big )^2} = 5.13$$
3. Consider the function $f(x,y) = x^2 e^y - xy^2$, and calculate $\int_{C_1} \nabla f \cdot dr$, where $C_1$ is the path taken by the rear wheel.
	1. ANS: $4e^4 - 33$
	2. Find $f(r(t)) = t^2e^{t^2} - t^5$
	3. $f(r(2)) - f(r(0)) = 2^2e^{2^2} - 2^5 - e^0 = 4e^4 - 32 - 1 = 4e^4 - 33$

---
##### Question 2: ND
On $R^2$, a bug travels from $(0,0)$ to $(1,2)$ along a straight path, then to $(0,3)$ along $y = 3 - x^2$, then back to $(0,0)$. The bug is in the presence of a force field $F(x,y) = \langle x^4 + 2xy^2, 2 - ye^y \rangle$. Calculate the work done by the field on the bug.
1. ANS: $-\frac{13}{3}$
2. Work Formula
	1. $W = \int_C F(r(t)) \cdot r'(t)$ 
3. Find the bounds 
	1. $2x \le y \le 3-x^2$
	2. $0 \le x \le 1$
4. Find $F(r(t))$
5. Find $r'(t)$
	1. $r_1'(t) = (t, 2t)$
	2. $r_2'(t) = ()$
---
##### Question 3: D
Let $C$ be the curve of intersection between the cylinder $x^2 + y^2 = 1$ and $x - 2y + z = 0$, oriented counter-clockwise when viewed from above. Calculate the work done by the vector field $F = \langle x^2 + 2z, y^3 - x^2, 3y \rangle$ on a particle moving along $C$. Do this calculation twice; once using Stokes' theorem, and verify that you get the same answer
1. ANS: $-\pi$ 
2. Find $r(t)$
	1. $z = 2y-x$
	2. Find $r(t)$
		1. $r(t) = \langle \cos t, \sin t, 2\sin t - \cos t \rangle$ 
	3. Find $F(r(t))$
		1. $F(r(t)) = \langle (\cos t)^2 + 2(2\sin t - \cos t), (\sin t)^3 - (\cos t)^2, 3(\sin t) \rangle$  
		2. $F(r(t)) = \langle \cos^2 t + 4\sin t - 2\cos t, \sin^3 t - \cos^2 t, 3\sin t \rangle$ 
	4. Find $r'(t)$
		1. $r'(t) = \langle -\sin t, \cos t, 2\cos t + \sin t \rangle$ 
	5. Find $F(r(t)) \cdot r'(t)$
		1. $F(r(t)) \cdot r'(t) = \langle \cos^2 t + 4\sin t - 2\cos t, \sin^3 t - \cos^2 t, 3\sin t \rangle \cdot \langle -\sin t, \cos t, 2\cos t + \sin t \rangle$ 
		2. $F(r(t)) \cdot r'(t) =-\cos ^2\left(t\right)\sin \left(t\right)-\sin ^2\left(t\right)+8\sin \left(t\right)\cos \left(t\right)+\sin ^3\left(t\right)\cos \left(t\right)-\cos ^3\left(t\right)$ 
		3. $F(r(t)) \cdot r'(t) = -\cos ^2\left(t\right)\sin \left(t\right)-\sin ^2\left(t\right)+4\sin \left(2t\right)+\sin ^3\left(t\right)\cos \left(t\right)-\cos ^3\left(t\right)$
			1. $\int^{2\pi}_0 - \cos^2 t\sin t = 0$
			2. $\int^{2\pi}_0 -\sin^2 t = -\pi$ 
			3. $\int^{2\pi}_0 4\sin (2t) = 0$
			4. $\int^{2\pi}_0 \sin^3 t \cos t = 0$
			5. $\int^{2\pi}_0 -\cos^3 t = 0$ 
			6. $= -\pi$
	6. Stokes' Theorem
		1. Calculate curl
			1. $$curl(F) = \begin{bmatrix} i & j & k \\ \frac{\partial}{\partial x} & \frac{\partial}{\partial y} & \frac{\partial}{\partial z} \\  x^2 + 2z & y^3 - x^2 & 3y \end{bmatrix} = \langle 3, 2, -2x \rangle$$
		2. Find the paramtrization of the intersection of cylinder and plane
			1. $r_1(t) = (\cos t, \sin t, 2\sin t - \cos t)$
			2. $r_2(t) = (-r\sin t, r \cos t, 2 r \cos t + r \sin t)$
		3. Find the normal vector $N$
			1. $$N = r_{1(t)} \times r_{2(t)} = \begin{bmatrix} i & j & k \\ \cos t & \sin t & 2\sin t - \cos t \\ -r\sin t & r \cos t & 2 r \cos t + r \sin t \end{bmatrix} =  ...$$
			2. $=(r\sin^2 t + r\cos^2 t, -2r\sin^2 t + -2r\cos^2 t, r\sin^2 t + r\cos t)$ 
			3. $=(r, -2r, r)$
		4. Find $||N||$
			1. $||N|| = \sqrt{r^2 + (-2r)^2 + r^2} = r\sqrt{6}$
			2. Unit vector = $u = (\frac{r}{r \sqrt{6}}, -\frac{2r}{r \sqrt{6}}, \frac{r}{r \sqrt{6}}) = (\frac{1}{ \sqrt{6}}, -\frac{2}{ \sqrt{6}}, \frac{1}{ \sqrt{6}})$ 
		5. Find $Curl(f(r, \theta))$ 
			1. $Curl(F) \cdot u = (\frac{3}{ \sqrt{6}} -\frac{4}{ \sqrt{6}} + \frac{2}{ \sqrt{6}}r\cos\theta) = -\frac{1}{\sqrt{6}} +\frac{2}{ \sqrt{6}}r\cos\theta$ 
		6. Integrate
			1. $\int^1_0 \int_0^{2\pi} (-\frac{1}{\sqrt{6}} +\frac{2}{ \sqrt{6}}r\cos\theta) \cdot r\sqrt{6}d \theta dr$ 
				1. Separate integrals
					1. $-\int^1_0 \int_0^{2\pi} rd\theta dr = -\pi$ 
						1. $\int^1_0 r\theta \Big |^{2\pi}_0 = -\int^1_0 2\pi r$ 
						2. $-\int^1_0 2\pi r = -\pi$ 
					2. $\int^1_0 \int_0^{2\pi} 2r \cos \theta d\theta dr$ 
						1. $\int^1_0 2r\cos \theta \Big |^{2\pi}_0 =0$ 
			2. ANS: $-\pi$
3. ANS: Confirmed, $-\pi$ 
---
##### Question 4: ND
Practice using Stokes' theorem by evaluating the following line integrals. We can use Stokes' theorem because these are work integrals around loops in $R^3$.
1. D: Let $C$ be the piecewise curve from $(0,0,0)$to $(2,0,4)$ along $z = x^2$, then in a straight line to $(2, 1, 4)$, then down to $(0, 1, 0)$ along $z = x^2$, and then in a straight line back to $(0,0,0)$. If $F(x,y,z,) =  \langle e^x + z^2, x^3 - y^2, x^2 + z^5 \rangle$
	1. ANS: 8
	2. Find $r(t)$
		1. $r_1(t) = (t, 0, t^2)$ 
		2. $r_2(t) = (0, t, 0)$
		3. $r(u,v) = (u, v, u^2)$
	3. Calculate normal vector
		1. $$N = r_u \times r_v = \begin{bmatrix} i & j & k \\ 1 & 0 & 2u \\ 0 & 1 & 0 \end{bmatrix} = (-2u)i - 0j + 1k = (-2u, 0, 1)$$
	4. Find the $curl(F)$
		1. $$curl(F) = \begin{bmatrix} i & j & k \\ \frac{\partial}{\partial x} & \frac{\partial}{\partial y} & \frac{\partial}{\partial z} \\ e^x + z^2 & x^3 - y^2 & x^2 + z^5\end{bmatrix} = (0, -2x + 2z, 3x^2)$$
	5. Integrate
		1. $$\iint (-2t, 0, 1) \cdot (0, -2x + 2z, 3x^2) = \int^1_0\int^2_0 3u^2 dudv$$
		2. Calculate inner integral
			1. $\int^2_0 3u^2 du = u^3 \Big |^2_0 = 8 - 0 = 8$ 
		3. Calculate outer integral
			1. $\int^1_0 8 = 8v \Big |^1_0 = 8 - 0 = 8$
		4. ANS: 8
2. ND: Let $C = C_1 + C_2$ where $C_1$ is parametrized by $\langle \cos t, 0, \sin t \rangle$ for $0 \le t \le \pi$ and $C_2$ is parametrized by $\langle -\cos t, \sin t, 0 \rangle$ for $0 \le t \le \pi$. Calculate the work done by the vector field $\langle 2x - 3y, x + 4y, 5y - z \rangle$.
	1. ANS: $2\pi$
	2. Find the $curl(F)$
		1. $$curl(F) = \begin{bmatrix} i & j & k \\ \frac{\partial}{\partial x} & \frac{\partial}{\partial y} & \frac{\partial}{\partial z} \\ 2x - 3y & x + 4y & 5y - z \end{bmatrix} = (5 - 0)i - (0 - 0)j + (1 - (-3))k$$ 
		2. $curl(F) = (5, 0, 4)$
	3. Find $r_1'(t)$ and $r_2'(t)$
		1. $r_1'(t) = \langle -\sin t, 0, \cos t \rangle$
		2. $r_2'(t) =\langle \sin t, \cos t, 0 \rangle$ 
	4. Find the normal vector
		1. $$N = C_1 \times C_2 = \begin{bmatrix} i & j & k \\ \cos t & 0 & \sin t \\ -\cos t & \sin t & 0 \end{bmatrix}$$
	5. Find $curl(F) \cdot r'(t)$
		1. $curl(F) \cdot r'(t) = -5\sin t + 4\cos t$ 
	6. Integrate
		1. $-5 \int^{\pi}_0 \sin t + 4 \int^{\pi}_0\cos t$ 
3. Let $C$ be the curve intersection between the cylinder $x^2 + \frac{y^2}{9} = 1$ and the hyperbolic paraboloid $x^2 - y^2 = z$, oriented clockwise when viewed from above. If $G(x,y,z) = \langle 3x^2 y, x^3 + 5, 3z^2 - 2xz \rangle$ then calculate $\oint_C G \cdot dr$ 
	1. ANS: 0
	2. Find the $curl(F)$
		1. $$curl(F) = \begin{bmatrix} i & j & k \\ \frac{\partial}{\partial x} & \frac{\partial}{\partial y} & \frac{\partial}{\partial z} \\ 3x^2y & x^3 + 5 & 3z^2 - 2xz \end{bmatrix} = (0, 2z, 0)$$
	3. Paramatrize shapes
		1. $x^2 + \frac{y^2}{9} = 1$
		2. $x^2 - y^2 = z$
		3. $x^2 + \frac{y^2}{9} -1 = x^2 - y^2 - z$ 

----
##### Question 5: ND
Use Stokes' theorem to evalute the following surface integrals in $R^3$; we can also use Stokes’ theorem to calculate the flux of a curl field.
1. Let $S$ be the part of the sphere $x^2 + y^2 + z^2 = 4$ which lies above the plane $z = 1$, oriented upwards. If $F(x,y,z) = \langle z^2, x, y^3 \rangle$, then calculate $\iint_S curl(F) \cdot ds$ 
	1. ANS: $3\pi$
	2. $r(\theta, \phi) = (2\cos\theta\sin\phi, 2\sin\theta\sin\phi, 2\cos\phi)$ 
	3. Find $r_\theta$ and $r_\phi$
		1. $r_\theta =(-2\sin\theta\sin\phi, 2\cos\theta\sin\phi, 0)$ 
		2. $r_\phi =(2\cos\theta\cos\phi, 2\sin\theta\cos\phi, -2\sin\phi)$ 
	4. Find the normal vector $N$
		1. $$N = \begin{bmatrix} i & j & k \\ -2\sin\theta\sin\phi & 2\cos\theta\sin\phi & 0 \\ 2\cos\theta\cos\phi & 2\sin\theta\cos\phi & -2\sin\phi \end{bmatrix} =  ()$$
2. Let $H$ be the part of the cylinder $x^2 + y^2 = 1$ where $y \ge 0$ and $0 \le z \le 2$, including the half disks at the top and bottom (imagine cutting a soda can vertically in half), all oriented outward. Let $F(x,y,z) = \langle x^2 z, x^3 - 3y, yz + z^2 \rangle$. Calculate the flux of curl $F$ through the surface.
	1. ANS: $\frac{4}{3}$

----
##### Question 6: D
\[P\] Let $F(x,y) = \langle x^2 - y^2, 2x^2 - \frac{2y^3}{3} - 6x \rangle$ 
1. In what region of $R^2$ is the vector field causing counter-clockwise rotations? In what region is the field causing clockwise rotations?
	1. Calculate the [[115 Line and Surface Integrals#Curl|curl]] of the equation
		1. $$curl(F) = \begin{bmatrix}  \frac{\partial}{\partial x} & \frac{\partial}{\partial y} \\ x^2 - y^2 & 2x^2 -\frac{2y^3}{3} -6x  \end{bmatrix} = (4x - 6, -2y)$$
		2. Around $(-1.5, 0)$ we have counterclockwise rotation as the y will always be pulling towards the origin and the x will always be pulling towards -1.5
2. In what region of $R^2$ is the vector field causing expansion? In what region is the vector field causing contraction?
	1. Compute the [[115 Line and Surface Integrals#Divergence|divergence]] of the vector field
	2. $$div(F) = \frac{\partial}{\partial x}(x^2 - y^2) + \frac{\partial}{\partial y}(2x^2 - \frac{2y^3}{3} - 6x) = (2x,-2y)$$
		1. Y is always moving towards the origin
		2. $div(F) > 0$ when $x > y$
		3. $div(F) < 0$ when $y > x$
3. At what points in $R^2$ would the vector field have zero rotation and zero expansion?
	1. ANS: (1, 1) and $(9/4, -3/2)$ 
	2. $2x = 4x - 6, x=1$
	3. $-2y = -2y, y=1$ 
	4. $(1, 1)$
	5. $4x - 6 = 2x; \quad x = 3$
	6. $9/4 \cdot 4 - 6 = 3$
	7. $-2y = -3; \quad y = -3/2$
	8. ANS: $(9/4, -3/2)$ and $(1,1)$
	9. 
4. 
----
##### Question 7: ND
Practice using the Divergence Theorem to evaluate the following surface integrals; we can use the Divergence Theorem because we are calculating the flux through a closed surface.
1. Let $E$ be the surface of the sphere $x^2 + y^2 + z^2 = 9$ oriented outwards and let $F(x,y,z) = (x^2 + e^x, 7y - z^3, \cos x - 3z)$. Calculate the flux of $F$ through $E$
	1. ANS: $144\pi$
	2. $\rho = 3$
		1. Find $r(t)$
	3. $r(t) = \langle \rho\cos\theta \sin \phi, \rho\sin\theta \sin \phi, \rho \cos \phi \rangle$ 
	4. Calculate $curl(F)$
		1. $$div(F) = \frac{\partial}{\partial x}(x^2 + e^x) + \frac{\partial}{\partial y}(7y - z^3) + \frac{\partial}{\partial z}(\cos x - 3z) = 4 + 2x$$
	5. Integrate
		1. $$2\int^3_0\int^\pi_0\int^{2\pi}_0 4 + (\rho\cos\theta \sin \phi)\rho^2 d\theta d\phi d\rho$$
			1. Calculate inner integral
				1. $2\int^{2\pi}_0 4\rho^2 + 2\rho^3\cos\theta \sin \phi d\theta$ 
				2. $2\int^{2\pi}_0 4\rho^2 d \theta = 8\pi \rho^2$ 
				3. $2\int^{2\pi}_0 2\rho^3 \cos \theta \sin \phi d\theta = 0$ 
			2. Calculate the mid integral
				1. $2\int^{\pi}_0 8\pi \rho^2 = 8\pi^2\rho^2$ 
			3. Calculate the outer integral
				1. $2\int^3_0 8\pi^2\rho^2 =144\pi^2$  
2. Let $K$ be the closed surface of the cylinder $x^2 + y^2 = 25$ between $z = -1$ and $z = 1$ including a disk on top and bottom, oriented inwards. If $B(x,y,z) = (x^3, y^3, z^3)$, then calculate $\oint_K B \cdot dS$ 
	1. $-1925\pi$ 
	2. $0 \le \rho \le 5$
	3. Find $div(F)$
		1. $$div(F) = \frac{\partial}{\partial x}(x^3) + \frac{\partial}{\partial y}(y^3) + \frac{\partial}{\partial z}(z^3) = 3x^2 + 3y^2 + 3z^2$$
	4. Because it is a cylinder $x^2 + y^2$ can equate to $r^2$
	5. Integrate
		1. $$\int^5_0 \int^{\pi}_0 \int^{1}_{-1} 3r^3 + 3z^2 r dz d\theta dr$$
		2. Calculate inner integral
			1. $\int^{1}_{-1} 3r^3 + 3z^2 r dz = 6r^3 + 2r$ 
		3. Calculate mid integral
			1. $\int^\pi_0 6r^3 + 2r d\theta$
3. Let $S$ be the closed surface of the parallelpiped which starts at the origin and is generated by the vectors $(3, -1, 2)$, $(1, 0, 4)$ and $(0,0,5)$, oriented outward. If $F(x,y,z) = (2xy - 3x, z^3 - y^2, e^x + 3z)$ then calculate $\oint F \cdot dS$
	1. ANS: 0
----

##### Question 8: ND
Let $S$ be the surface in the picture which has its boundary on the unit circle on the xy-plane, oriented outward. Let $F(x,y,z) = (5x - y^3, xz^3 - 2y, 3z + 4)$. It is known that $\iint_S F \cdot dS = 20\pi$ 
1. Calculate the flux of $F$ through the unit disk on the xy-plane, oriented upwards.
	1. Unit circle = $x^2 + y^2 = 1$
	2. Use flux formula
		1. $$\int^b_a F(r(t)) \cdot N(t) dt$$
	3. Normal vector to unit circle is $(0,1,0)$
	4. Find $r(t)$
		1. $r(t) = (\cos t, \sin t, 0)$
	5. $F(r(t))\cdot (0,1,0) = (0 + \cos t (0) - 2(\sin t)  + 0) =-2\sin t$ 
	6. $\int^{2\pi}_0 -2\sin t dt$
2. Calculate the volume of the region bounded by $S$ and the xy-plane
unit circle on the xy-plane, oriented outward
---
