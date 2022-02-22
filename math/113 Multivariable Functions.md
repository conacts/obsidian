Deck: Calculus

## 14.1 Functions of Two or More Variables
Functions with multiple variables are typically denoted as:
$$g(x, y, z) = c = \sqrt{x^2 + y^2 + z^2}$$
![[Pasted image 20220206233040.png]]
##### Traces
A trace is freezing one coordinate on the function (typically x-coordinate, $x=a$) and examining the resulting curve in 2 dimensions

Note: Verticle trace is where you freeze the y-axis ($y=b$), rather than x, to find your trace

##### Contour Map
Tracing the height of a map and projecting those shadows onto a plane below
$$f(x, y)=c; \quad m=\text{the contour interval}$$
![[Pasted image 20220206234153.png]]

**Saddle Point Contour Map**
![[Pasted image 20220206234312.png]]
##### Rate of Change
$$\text{average rate of change from P to Q}=\frac{\Delta \text{ altitude}}{\Delta \text{ horizontal}}$$
![[Pasted image 20220206234831.png]]
##### Isotherms
The coloring of certain areas within a 3D contour map to show the different height differences
![[Pasted image 20220206235637.png]]

## 14.3 Partial Derivatives:
**Definition:** Finding the rates of change in respect to only one variable in the equation.

**Concept:** The idea behind partial derivaties is to find the derivative of only one variable to see how manipulation of that variable affects the rest of the equation. This is done by treating every variable as a constant except the one being integrated

**Partial Derivative of variable x:**
$$f_x(a, b)= \lim_{h\rightarrow 0}\frac{f(a+h,b)-f(a,b)}{h}$$
**Partial Derivative of variable y:**
$$f_y(a, b)= \lim_{h\rightarrow 0}\frac{f(a, b+k)-f(a,b)}{k}$$

The Notation for partial derivative is...
$$\frac{\partial f}{\partial x}, \quad \frac{\partial f}{\partial y}$$ ![[Pasted image 20220212235521.png]]
##### Clairaut's Theorem: 
**Equality of Mixed Partials**
If $f_{xy}$ and $f_{yx}$ both exist and are continuous on a disk $D$, then $f_{xy}(a, b)=f_{yx}(a, b)$ for all $(a, b) \in D$. Therefore, on D, 
$$\frac{\partial^2f}{\partial x \partial y}=\frac{\partial^2f}{\partial y \partial x}$$

##### Heat Equation
$$\frac{\partial u}{\partial t}=\frac{\partial^2u}{\partial x^2}$$
![[Pasted image 20220213001011.png]]

## 14.4 Differentiability, Tangent Planes, and Linear Approximation

##### Differentiability and the Tangent Plane
Assume that $f(x, y)$ is defined in a disk $D$ containing $(a, b)$ and that $f_x (a, b)$ and $f_y (a, b)$ exists. Let
$$L(x, y)=f(a, b) + f_x (a, b)(x-a)+f_y(a, b)(y-b)$$
- f(x, y) is **differentiable** at $(a, b)$ if 
$$\lim_{(x,y)\rightarrow (a, b)} \frac{f(x, y)-L(x,y)}{\sqrt{(x-a)^2 + (y-b)^2}}=0$$
- If $f(x, y)$ is differentiable at $(a, b)$, then the **tangent plane** to the graph at $(a, b, f(a, b))$ is the plane with equation $z=L(x, y)$. Explicitly, the equation of the tangent plane is...
$$z=f(a, b) + f_x (a, b)(x-a)+f_y(a, b)(y-b)$$

You can also write linear approximation as 
$$\Delta f \approx f_x (a, b) \Delta x + f_y (a, b) \Delta y$$
##### Differentials and Linear Approximation 
Assume that $f$ is differentiable at $(a, b)$ and let $dx= \Delta x, dy= \Delta y$ Then the differential $df$ is defined by
$$df=f_x(x, y)dx + f_y(x, y)dy$$
![[Pasted image 20220213192352.png | 400]]


**Linear Approximation:**
> Use the Linear Approximation to $f(x, y)=\sqrt{\frac{x}{y}}$ at $(81, 16)$ to estimate $\sqrt{\frac{81.1}{15.9}}$ 
> 1. Use the linear approximation formula of $L(x, y)=f(a, b) + f_x (a, b)(x-a)+f_y(a, b)(y-b)$, first we will solve for $f_x$ 
> $$f_x(81,16)=\frac{1}{2\sqrt{{y}}\sqrt{x}}=\frac{1}{2 \cdot 9 \cdot 4}=\frac{1}{72}$$
> Now we solve for $f_y(a, b)$ 
> $$f_y(81,16)=-\frac{\sqrt{x}}{2y^{3/2}}=-\frac{\sqrt{81}}{2(16)^{3/2}}=-\frac{9}{128}$$
> Now solve for $f(x, y)$ 
> $$f(81, 16)=\sqrt{\frac{81}{16}}=2.25$$
> Now plug into the equation
> $$L(81.1, 15.9)=2.25 + \frac{1}{72}(81.1-81)-\frac{9}{128}(15.9-16)=2.2584$$

**Approximating Change in function:**
> Let $f(x, y)=x^3y^{-4}$. Use the equation $\Delta f \approx f_x(a, b) \Delta x + f_y(a, b) \Delta y$ to estimate $\Delta f = f(1.04, 0.97) - f(1, 1)$
> 1. Plug in 
> $$\Delta f \approx f_x(a, b) \Delta x + f_y(a, b) \Delta y \approx 3x^2y^{-4} \Delta x -4x^3y^{-5} \Delta y$$
> $$\approx 3(1)^2(1)^{-4} \Delta x -4(1)^3(1)^{-5} \Delta y$$
> $$\Delta x = 1.04 - 1 = .04 \quad \Delta y=0.97 - 1= -.03$$
> 
> $$\approx 3(1)^2(1)^{-4} (.04) -4(1)^3(1)^{-5} (-.03)$$
> 

> A person's Body Mass Index is $𝐼=\frac{𝑊}{𝐻^2}$, where 𝑊 is the body weight (in kilograms) and 𝐻 is the body height (in meters). A child has weight 𝑊=39 kg and height 𝐻=1.5 m. Use the linear approximation to estimate the change in 𝐼 if (𝑊,𝐻) changes to (41,1.53).
> 1. Take the linear approximation of the formula starting with $f_x(x, y)$:
> $$I_x=\frac{1}{H^2} \quad I_y=\frac{-2W}{W^3}$$
> $$z=\frac{1}{1.5^2}(41-39)-\frac{2(39)}{1.5^3}(1.53-1.5)$$
> 

##### Theorem 1: Confirming Differentiability
If $f_x(x, y)$ and $f_y(x, y)$ exist and are continuous on an open disk $D$, then $f(x, y)$ is differentiable on $D$ 


> Find the equation of the tangent plane to the graph of $f(x, y) = 2xy^2 + 2x^3y^2$ at the point $(-1, 3)$. 
> 1. Find $f_x$, then $f_y$ 
> $$f_x=2y^2+6x^2y^2 \quad f_y=4xy+4x^3y$$
> $$f(-1, 3) = 2(-1)(3)^2 + 2(-1)^3(3)^2=-36$$
> $$f_x=2(3)^2+6(-1)^2(3)^2=72 \quad f_y=4(-1)(3)+4(-1)^3(3)=-24$$ 
> 2. Plug into the equation $df=f_x(x, y)dx + f_y(x, y)dy$
> $$df=-36 + 72(x+1)-24(y-3)=72x-24y+108$$ 

## HW 5
1.  Find all solutions for the following systems of equations. State your answers as “(x,y) when λ = " ? ". We will be solving systems of equations like this in class soon, so if you are unsure how to do this, please ask in office hours soon.

> $$y=6\lambda x \quad x = 2 \lambda y \quad x^2 + y^2 = 1; (2 \lambda y)^2 + (6\lambda x)^2 = 1 $$
> $$ (2 \lambda y)^2 + (6\lambda x)^2 = 1\quad 4 \lambda^2 y^2 + 36 \lambda^2 x^2 = 1$$
> $$4\lambda^2 (y^2 + 9 x^2) = 1$$
> UNIFINISHED

  
  2. Consider the parallelepiped generated by the vectors 〈1,−3,4〉,〈2,x,−1〉, and 〈3,1,x〉

> Volume of a parallel piped: $| a \cdot (b \times c) |$ 
> 1. Take the cross product of the two vectors with x to get a parametric equation
> $$a \times b =\begin{bmatrix}  
i & j & k\\  
2 & x & -1\\
3 & 1 & x
\end{bmatrix} = i\begin{bmatrix}\
x & -1\\ 1 & x
\end{bmatrix}
-j\begin{bmatrix}\
2 & -1\\ 3 & x
\end{bmatrix}
+k\begin{bmatrix}\
2 & x\\ 3 & 1
\end{bmatrix}$$
> $$a \times b =i(x^2+1)-j(2x+3)+k(2-3x)$$
> $$| a \cdot (b \times c) |=x^2+1+6x+9+8-12x=x^2-6x+18$$
> $$f'(x)=2x-6 \quad x = 3$$
> Parallel piped has a minimum but no maximum volume