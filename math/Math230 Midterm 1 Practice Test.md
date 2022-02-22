Deck: Calculus
## Test
1. Let ABCD be a parallelogram (where A and C are opposite points, as are B and D). If A = (3, 1, 0),  B = (1, 4, 2), and C = (2, 3, −1).
	1.1. Where is point D located?
	A -> B == C -> D; 
	$B-A=(1,4,2) - (3,1,0)=(-2, 3, 2)$
	$D = C - (B-A)=(2, 3, -1) - (-2, 3, 2) = (4, 0, -3)$
	1.2. What is the area of the parallelogram?
	The area of a parallelogram is the length of the cross product of the vectors spanning it, ie. AB x AC
	$AB=(-2,3,2), \quad AC=(-1,2,-1)$
	$$||\overrightarrow{AB} \times \overrightarrow{AC}||=v \times w =\begin{bmatrix}  
i & j & k\\  
-2 & 3 & 2\\
-1 & 2 & -1
\end{bmatrix} = i\begin{bmatrix}\
3 & 2\\ 2 & -1
\end{bmatrix}
-j\begin{bmatrix}\
-2 & -1\\ 2 & -1
\end{bmatrix}
+k\begin{bmatrix}\
-2 & 3\\ -1 & 2
\end{bmatrix}$$
$$...=\langle -7, -4, -1 \rangle; \quad ||a(t)|| = \sqrt{7^2 + 4^2 + 1^2}=\sqrt{66}$$
	1.3. What is the equation on the plane this parallelogram lies on?
	Take the dot product of a point on the plane, 
	$$a(t) \cdot p =-7(x-3) + -4(y-1) + -z = -7x-4y-z=-25$$

	
1. Given a force, F, the amount of potential energy an object has can be modeled by the equation  $U (x, y, z) = \frac{xy}{1 + z^2}$. A marble moves along the path $\langle 2 −t^3, e^t, 3 + 2t \rangle$from $0 ≤t ≤1$ 
	2.1. 




## Flashcards
1. How do you find the area of a parallelogram? #flashcard 
The length of the cross product of the vectors spanning it, ie. AB x AC
$||\overrightarrow{AB} \times \overrightarrow{AC}||$

1. How to find the fourth point of a parallelogram? #flashcard 
Add the vector from A -> B to find C -> D

1. How do you find the equation a parallelogram lies on? #flashcard 
Find the orthogonal vector (through cross product) and then multiply it by a point

Given a force, F, the amount of potential energy an object has can be modeled by the equation  $U (x, y, z) = \frac{xy}{1+z^2}$ . A marble moves along the path $〈2 −t3, e^t, 3 + 2t〉$ from 0 ≤t ≤1.
1. Calculate the difference of the potential energy the marble has between the beginning and end of its path. 
2. Give a function for the potential energy the marble has as a function of t. #flashcard 
1. plug in for t with t=0 and t=1. Then plug those values in for x, y and z in the equation to get
2. Plug all the variables in from the vector


2. Given a force, F, the amount of potential energy an object has can be modeled by the equation  $U (x, y, z) = \frac{xy}{1+z^2}$ . A marble moves along the path $〈2 −t3, e^t, 3 + 2t〉$ from 0 ≤t ≤1.
 #flashcard 

3. Give a parametrization for the curve of intersection between the unit sphere and the paraboloid $z = x^2 + y^2$. #flashcard 
Solve for z as that is the only area that will vary when intercepting with the paraboloid
unit sphere: $x^2+y^2+z^2=1$ 
set the paraboloid equal to the unit sphere to get $1-z^2=z$ 
Solve for z using quadratic formula to get $z=\frac{-1 \pm \sqrt{5}}{2}$ ;
Set $x^2+y^2=\frac{-1 \pm \sqrt{5}}{2}$
solve for x and y individually and plug them in to get
$y(t)=x^2+y^2=\frac{-1 \pm \sqrt{5}}{2}^{1/2} \cos t,\quad \frac{-1 \pm \sqrt{5}}{2}^{1/2} \sin t,\quad \frac{-1 \pm \sqrt{5}}{2}$ 

Show that the curves $C1(t) = (3 + 2t)i + t^2j −3tk$ and $C2(s) = (1 + s2)i + (2s −3)j + (−1 −s)k$ intersect at a single point. #flashcard 

4. Give a parametrization for the curve of intersection between the unit sphere and the paraboloid $z = x2 + y2$.
Find an equation of the plane tangent to both curves at the point of intersection #flashcard 
Solve for Z

5. The current velocity of a particle is $〈2, 1, −3〉$ (in m/s) and its current acceleration is $〈−4, 12, −8〉$ (in $m/s^2$). Give a linear approximation for how much the speed will change between now and 0.25 sec from now. #flashcard 

6. MathMan flies through the sky! His acceleration is given by the function a(t) = 〈3 −2t, 0, −4〉. We know he started when t = 0 at the position (1, 4, 5) and after 1 second had a velocity of 〈1, −1, 5〉. What was the highest point in MathMan’s flight?