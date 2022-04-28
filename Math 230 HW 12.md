##### Question 1
The real wheel of a bicycle is following the path $\langle t, t^2 \rangle$ for $0 \le t \le 2$. The front wheel is always exactly 1 meter in front of the rear wheel.
1. Give a parametrization for the position of the front wheel of the tire.
	1. ANS: $\langle t + \frac{2}{\sqrt{1 + 4t^2}}, t^2 + \frac{2t}{\sqrt{1 + 4t^2}} \rangle$ 
	2. circle = $x^2 + y^2 = r$ 
2. \[C\] Which wheel travels a longer distance? Set up arclength integrals for both paraetrizations, and then use a computer to calculate the integrals and determine what distance each wheel travels.
	1. ANS: Front wheel = 4.65, Back wheel = 5.13
3. Consider the function $f(x,y) = x^2 e^y - xy^2$, and calculate $\int_{C_1} \nabla f \cdot dr$, where $C_1$ is the path taken by the rear wheel.
	1. ANS: $4e^4 - 33$

---
##### Question 2
On $R^2$, a bug travels from $(0,0)$ to $(1,2)$ along a straight path, then to $(0,3)$ along $y = 3 - x^2$, then back to $(0,0)$. The bug is in the presence of a force field $F(x,y) = \langle x^4 + 2xy^2, 2 - ye^y \rangle$. Calculate the work done by the field on the bug.
1. ANS: $-\frac{13}{3}$
2. Find the bounds 
	1. $0 \le x \le 1$ and $0 \le y \le 3$ 
3. This is a problem where we must divide the integral into two
4. Integral 1:
	1. $r_1(t) = (t , 2t)$ 
	2. $F_1(r_1(t)) = \langle (t)^4 + 2(t)(2t)^2, 2 - (2t)e^{(2t)} \rangle$ 
	3. $r_1'(t) = (1, 2)$
	4. $F_1(r_1(t)) \cdot r_1'(t) = \langle t^4 + 8t^3, 2 - 2te^{2t} \rangle \cdot (1, 2) = t^4 + 8t^3 +  4 - 4te^{2t}$ 
	5. $\int^1_0  t^4 + 8t^3 +  4 - 4te^{2t} = \frac{t^5}{5}+2t^4+4-2e^{2t}t+e^{2t} \Big |^1_0 = \frac{(1)^5}{5}+2(1)^4+4(1)-2e^{2(1)}(1)+e^{2(1)} - (4 + 1)$
	6. $=-e^2 + \frac{6}{5}$ 
5. Integral 2:
	1. $r_2(t) = (t, 3 - t^2)$
	2. $r_2'(t) = (1, -2t)$ 
	3. $F_2(r_2(t)) = \langle (t)^4 + 2(t)(3-t^2)^2, 2 - (3-t^2)e^{(3-t^2)} \rangle = \langle t^4 + 18t-6t^2+t^4, 2 - 3e^{3-t^2} + t^2 e^{(3-t^2)} \rangle$ 
	4. $F_2(r_2(t)) \cdot r_2'(t) = \langle t^4 + 18t-6t^2+t^4, 2 - 3e^{3-t^2} + t^2 e^{(3-t^2)} \rangle \cdot (1, -2t)$ 
		1. $= (t^4 + 18t-6t^2+t^4 -4t+6e^{3-t^2}t-2e^{3-t^2}t^3)$ 
---
##### Question 3
Let $C$ be the curve of intersection between the cylinder $x^2 + y^2 = 1$ and $x - 2y + z = 0$, oriented counter-clockwise when viewed from above. Calculate the work done by the vector field $\langle x^2 + 2z, y^3 - x^2, 3y \rangle$ on a particle moving along $C$. Do this calculation twice; once using Stokes' theorem, and verify that you get the same answer
1. ANS: $-\pi$ 

---
##### Question 4
Practice using Stokes' theorem by evaluating the following line integrals. We can use Stokes' theorem because these are work integrals around loops in $R^3$.
1. Let $C$ be the piceewise curve from $(0,0,0)$to $(2,0,4)$ along $z = x^2$, then in a straight line to $(2, 1, 4)$, then down to $(0, 1, 0)$ along $z = x^2$, and then in a straight line back to $(0,0,0)$. If $F(x,y,z,) =  \langle e^x + z^2, x^3 - y^2, x^2 + z^5 \rangle$
	1. ANS: 8
2. Let $C = C_1 + C_2$ where $C_1$ is parametrized by $\langle \cos t, \sin t \rangle$ for $0 \le t \le \pi$ and $C_2$ is parametrized by $\langle -\cos t, \sin t, 0 \rangle$ for $0 \le t \le \pi$. Calculate the work done by the vector field $\langle 2x - 3y, x + 4y, 5y - z \rangle$.
	1. ANS: $2\pi$
3. Let $C$ be the curve intersection between the cylinder $x^2 + \frac{y^2}{9} = 1$ and the hyperbolic paraboloid $x^2 - y^2 = z$, oriented clockwise when viewed from above. If $G(x,y,z) = \langle 3x^2 y, x^3 + 5, 3z^2 - 2xz \rangle$ then calculate $\oint_C G \cdot dr$ 
	1. ANS: 0

----
##### Question 5
Use Stokes' theorem to evalute the following surface integrals in $R^3$; we can also use Stokes’ theorem to calculate the flux of a curl field.
1. Let $S$ be the part of the sphere $x^2 + y^2 + z^2 = 4$ which lies above the plane $z = 1$, oriented upwards. If $F(x,y,z) = \langle z^2, x, y^3 \rangle$, then calculate $\iint_S curl F \cdot ds$ 
	1. ANS: $3\pi$
2. Let $H$ be the part of the cylinder $x^2 + y^2 = 1$ where $y \ge 0$ and $0 \le z \le 2$, including the half disks at the top and bottom (imagine cutting a soda can vertically in half), all oriented outward. Let $F(x,y,z) = \langle x^2 z, x^3 - 3y, yz + z^2 \rangle$. Calculate the flux of curl $F$ through the surface.
	1. ANS: $\frac{4}{3}$

----
##### Question 6
\[P\] Let $F(x,y) = \langle x^2 - y^2, 2x^2 - \frac{2y^3}{3} - 6x \rangle$ 
1. In what region of $R^2$ is the vector field causing counter-clockwise rotations? In what region is the field causing clockwise rotations?
2. In what region of $R^2$ is the vector field causing expansion? In what region is the vector field causing contraction?
3. At what points in $R^2$ would the vector field have zero rotation and zero expansion?
	1. ANS: (1, 1) and $(9/4, -3/2)$ 

----
##### Question 7
Practice using the Divergence Theorem to evaluate the following surface integrals; we can use the Divergence Theorem because we are calculating the flux through a closed surface.