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

## 14.5 Gradient and Directional Derivatives

##### The Gradient
The gradient of function $f(x,y)$ at point $P=(a,b)$ is the vector
$$\nabla f_p= \langle f_x(a,b),f_y(a,b) \rangle$$
In three variables, for $f(x,y,z)$ and $P=(a,b,c)$ 
$$\nabla f_p= \langle f_x(a,b,c),f_y(a,b,c),f_z(a,b,c) \rangle$$
![[Pasted image 20220223001205.png | 300]]
**Example :: Computing the Gradient:**
> Calculate the gradient of $g(x,y)=\frac{9x}{x^2+y^2}$
> 1. Set up problem using the **Quotient Rule of Derivatives**
> $$(\frac{f}{g})'=\frac{f' \cdot g - g' \cdot f}{g^2}$$
> 2. Solve for the x-compontent
> 
> $$(\frac{f}{g})_x'=\frac{f' \cdot g - g' \cdot f}{g^2}=9\frac{\frac{\partial}{\partial x}(x)(x^2+y^2)-\frac{\partial}{\partial x}(x^2 + y^2)x}{(x^2 + y^2)^2}$$
> $$(\frac{f}{g})_x'=9\frac{x^2+y^2-2x^2}{(x^2+y^2)^2}=9\frac{(-x^2+y^2)}{(x^2+y^2)^2}$$
> 3. Solve for the y-component
> $$(\frac{f}{g})_y'=\frac{9x}{\frac{\partial}{\partial y}(x^2 + y^2)}=-\frac{18xy}{(x^2 + y^2)^2}$$
> 4. Plug in 
> $$\nabla f_p= \langle 9\frac{(-x^2+y^2)}{(x^2+y^2)^2},-\frac{18xy}{(x^2 + y^2)^2} \rangle$$
> ---
> Calculate the gradient $h(a, b, c)=xyz^{-9}$
> $$\nabla h_p= \langle h_x,h_y,h_z \rangle$$
> 1. Compute x-compontent
> $$h_x=\frac{\partial}{\partial x}xyz^{-9}=yz^{-9}\frac{\partial}{\partial x}(x)=yz^{-9}$$
> 3. Compute y-compontent
> $$h_y=\frac{\partial}{\partial y}xyz^{-9}=xz^{-9}\frac{\partial}{\partial y}(y)=xz^{-9}$$
> 5. Compute z-compontent
> $$h_z=\frac{\partial}{\partial z}xyz^{-9}=-9xyz^{-10}$$
> 7. Plug in 
> $$\nabla h_p= \langle yz^{-9},xz^{-9},-9xyz^{-10} \rangle$$

##### Theorem 1: Properties of the Gradient
If $f(x,y,z)$ and $g(x,y,z)$ are differentiable and $c$ is a constant, then
1. $\nabla (f + g) = \nabla f + \nabla g$  
2. $\nabla (cf) = c \nabla f$ 
3. **Product Rule for Gradients:** $\nabla (fg) = f \nabla g + g \nabla f$
4. **Chain Rule for Gradients:** If $F(t)$ is a differentiable function of one variable, then... $\nabla (F(f(x,y,z))) = F'(f(x,y,z)) \nabla f$ 

##### Theorem 2: Chain Rule for Paths
If $f$ and $r(t)$ are differentiable, then...
$$\frac{d}{dt}f(r(t))= \nabla f_{r(t)} \cdot r'(t)$$
**Chain rule for paths example:**
$$\frac{d}{dt}f(r(t))= \langle \frac{\partial f}{\partial x} ,\frac{\partial y}{dy} \rangle  \cdot \langle x'(t),y'(t) \rangle = \frac{\partial f}{\partial x} \frac{dx}{dt}+\frac{\partial f}{\partial y} \frac{dy}{dt}$$

##### Directional Derivative:
The directional derivative of $f$ at $P=(a, b)$ in the direction of a unit vector $u= \langle h,k\rangle$ is the limit (assuming it exists)
$$D_uf(P)=U_uf(a,b)=\lim_{t \rightarrow 0}\frac{f(a + th,b + tk)-f(a,b)}{t}$$
ADD DESCRIPTION:
![[Pasted image 20220222204536.png |300]]

##### Theorem 3: Computing the Directional Derivative
$$D_uf(P)= \nabla f_p \cdot u=f_x(a,b)h+f_y(a,b)k$$
- where $u= \langle h,k \rangle$ is a unit vector
- Also expands for more dimensions

**Example :: Calculating the directional derivative:**
> Calculate the directional derivative of $𝑔(𝑥,𝑦,𝑧)=𝑧^2−𝑥𝑦+3𝑦^2$  in the direction $𝐯=⟨1,−4,2⟩$ at the point $𝑃=(3,1,−7)$. Remember to use a unit vector in directional derivative computation. Find $D_vg(3,1,-7)$
> 1. Use the directional derivative formula, we must find the partial derivative of each compontent and then multiply by the unit vector.
> $$D_uf(P)= \nabla f_p \cdot u=f_x(a,b)h+f_y(a,b)k$$
> 2. Compute the unit vectors of each compontent
> $$\langle \frac{1}{\sqrt{21}},\frac{-4}{\sqrt{21}},\frac{2}{\sqrt{21}} \rangle$$
> 4. Compute the x-compontent, y-compontent, and z-compontent:
> $$g_x=-y, \quad g_y=6y-x, \quad g_z=2z$$
> 4. Multiply each partial derivative of g(x,y,z) by the proper component of the unit vector
> $$D_vg= \frac{1}{\sqrt{21}} (-1) + \frac{-4}{\sqrt{21}} (6(1)-(3)) +  \frac{2}{\sqrt{21}} (2(-7)) = \frac{-1-12-28 }{\sqrt{21}}=\frac{-41}{\sqrt{21}}$$

##### Properties of the Gradient
The rate of change in a given direction varies with the angle of cos between the gradient and direction
$$D_uf(P)= \nabla f_p \cdot u = || \nabla f_p|| \cdot ||u || \cos \theta = || \nabla f_p|| \cos \theta$$
- where $\theta$ is the angle between $\nabla f_p$ and $u$ 
- because cos is constrained to -1 and 1, our answer will be...
$$-||\nabla f_p|| \le D_uf(P) \le || \nabla f_p || $$
![[Pasted image 20220222233059.png | 250]]

##### Theorem 4: Interpretation of the Gradient
Assume that $\nabla f_p \ne 0$. Let $u$ be a unit vector making an angle $\theta$ with $\nabla f_p$. Then
$$D_uf(P)=||\nabla f_p|| \cos\theta $$
- $\nabla f_p$ points in the direction of fastest rate of increase of $f$ at $P$, and that rate of increase is $||\nabla f_p||$ 
- $-\nabla f_p$ points in the direction of fastest rate of decrease of $f$ at $P$, and that rate of decrease is $-||\nabla f_p||$ 
- $\nabla f_p$ is normal to the level curve (or surface) of $f$ at $P$.

##### Theorem 5: Gradient as a Normal Vector
Let $P=(a,b,c)$ be a point on the surface given by $F(x,y,z)=k$ and assume that $\nabla F_p \ne 0$. Then $\nabla F_p$ is a vector normal to the tangent plane to the surface at $P$. Moreover, the tangent plane to the surface at $P$ has the equation.
$$F_x(a,b,c)(x-a) + F_y(a,b,c)(y-b) + F_z(a,b,c)(z-c)=0$$
![[Pasted image 20220222233848.png | 250]]

## 14.6 Multivariable Calculus Chain Rules
- Chain Rule for Paths applies to compositions $f(r(t))$ where $f$ and $r$ are differentiable.

##### Theorem 1: Chain Rule for Paths
$$\frac{d}{dt}f(r(t))= \nabla f_{r(t)} \cdot r'(t)\approx f_x(x(t),y(t) \lim_{\Delta t \rightarrow 0} \frac{\Delta x}{\Delta t} + f_y(x(t),y(t) \lim_{\Delta t \rightarrow 0} \frac{\Delta y}{\Delta t}$$
$$\frac{d}{dt}f(r(t))= \langle \frac{\partial f}{\partial x},\frac{\partial f}{\partial y},\frac{\partial f}{\partial z} \rangle \cdot \langle x'(t), y'(t), z'(t) \rangle = \langle \frac{\partial f}{\partial x} \frac{dx}{dt},\frac{\partial f}{\partial y}\frac{dy}{dt},\frac{\partial f}{\partial z} \frac{dz}{dt} \rangle$$
$$\frac{d}{dt}f(r(t))=\lim_{h \rightarrow 0} \frac{f(x(t + h), y (t + h)) - f(x(t),y(t))}{h}$$
**Example :: Calculating Chain Rule:**
> Let $f(x,y,z) = xy + z^3, x= r + s-5t, y = 3rt, z = s^4$. Find $\frac{\partial f}{dr}$ and $\frac{\partial f}{dt}$ 
> $$f(x,y,z) = xy + z^3 =(r + s-5t)(3rt) + (s^4)^3=3rt\left(r+s-5t\right)+s^{12}$$
> $$\frac{\partial f}{ \partial r}(3r^2t+3rts-15rt^2+s^{12})=6rt + 3ts - 15t^2$$
> $$\frac{\partial f}{ \partial t}(3r^2t+3rts-15rt^2+s^{12})=3r^2 + 3rs -30rt$$
> ----
> Let $F(u,v)=e^{u+v},u=x^2,v=2xy$. Use the chain rule to calculate the partial derivative
> 1. Plug in for values u and v in $F(u,v)$
> $$e^{x^2+2xy}; \quad \frac{\partial F}{\partial y}=2xe^{x^2 + 2xy}$$
> ---
> Let $f(x,y)=4x+5y, \quad r(t)= \langle t^3,t^2 \rangle$. Use the chain rule to calculate $\frac{d}{dt}f(r(t))$ at the value $t=-5$ 
> $$\frac{d}{dt}\left (f(r(t))\right)\bigg|_{t=-5}$$
> 1. Compute the gradient
> $$\nabla f = \langle \frac{\partial f}{\partial x},\frac{\partial f}{\partial y} \rangle=\langle 4,5 \rangle, \quad \nabla f_{r(-5)}= \nabla f (4,5)=\langle 4,5 \rangle$$
> 2. Compute the tangent vector to $r(t)$
> $$r'(t)=\langle 3t^2,2t \rangle, \quad r'(-5)=\langle 75,-10 \rangle$$
> 3. Plug in by chain rule
> $$\frac{d}{dt}\left (f(r(t))\right)\bigg|_{t=-5}=\nabla f_{r(-5)} \cdot r'(-5)=\langle 4,5 \rangle \cdot \langle 75,-10 \rangle=250$$
> ---
> Use chain rule to evaluate the partial derivative $\frac{\partial h}{\partial q}$ at the point $(q,r)=(3,3)$, where $h(u,v)=ue^v,u=q^4,v=qr^2$ 
> $$\frac{\partial h}{\partial q}\left .\right.\bigg|_{(q,r)}=\nabla f_{r(q,r)} \cdot r'(q,r)$$
> 1. Compute primary derivatives
> $$\nabla f = \langle \frac{\partial f}{\partial u},\frac{\partial f}{\partial v} \rangle = \langle e^v,ue^v \rangle $$
> 2. Compute the tangent vector to $r(t)$
> $$r'(t)= \langle 4q^3,r^2 \rangle$$
> 3. Plug in 
> $$\frac{\partial h}{\partial q}\left .\right.\bigg|_{(q,r)}=4q^3e^v+r^2ue^v$$
> 4. Find value of u and v at $(q,r) = (3,3)$
> $$u=q^4=(3)^4=81, \quad v=qr^2=(3)(3)^2=27$$
> 5. Plug in
> $$\frac{\partial h}{\partial q}\left .\right.\bigg|_{(3,3)}=4(3)^3e^{(27)}+(3)^2(81)e^{(27)}=837e^{27}$$
> ---
> Two spacecraft are following paths in space given by $r_1= \langle \sin (t),t,t^2 \rangle$ and $r_2= \langle \cos (t),1-t,t^3 \rangle$ If the temperature for the points is given by $𝑇(𝑥,𝑦,𝑧)=𝑥^2𝑦(9−𝑧)$, use the Chain Rule to determine the rate of change of the difference $D$ in the temperatures the two spacecraft experience at time $t=2$.
> 1. Plug $r_1$ and $r_2$ into $T(x,y,z)$
> $$T(r_1)=\sin^2(t)(t)(9-t^2), \quad T(r_2)=\cos^2(t)(1-t)(9-t^3)$$
> $$D=\frac{d}{dt}(T(r_1)-T(r_2))=-11.196$$

# FINDISH 14.6

## 14.7 Optimization in Several Variables
![[Pasted image 20220223165429.png | 300]]

##### Local Extreme Values
A function $f(x,y)$ has a **local extremum** at $P=(a,b)$ if there exists an open disk $D(P,r)$ such that
- Local Maximum: $f(x,y) \le f(a,b)$ for all $(x,y) \in D(P,r)$ 
- Local Minimum: $f(x,y) \ge f(a,b)$ for all $(x,y) \in D(P,r)$ 

##### About Fermat's Theorem
- For functions with one variable, if $f(a)$ is a local extreme value, then $a$ is a critical point and thus the tangent line (if it exists) is horizontal at $x=a$. 
- With two variables, it is the same concept but with a tangent plane rather than a line. The tangent plane $z=f(x,y)$ at $P=(a,b)$ has the equation...
$$z=f(a,b) + f_x(a,b)(x-a)+f_y(a,b)(y-b)$$
![[Pasted image 20220223170411.png]]

##### Critical Point
A point $P=(a,b)$ in the domain of $f(x,y)$ is called a critical point if:
- $f_x(a,b)=0$ or $f_x(a,b)$ does not exist, and
- $f_y(a,b)=0$ or $f_y(a,b)$ does not exist

##### Formula for Descriminant D
$$D=D(a,b)=f_{xx}(a,b)f_{yy}(a,b)-f^2_{xy}(a,b)$$
##### Theorem 1: Fermat's Theorem
if $f(x,y)$ has a local minimum or maximum at $P=(a,b)$, then $(a,b)$ is a critical point of $f(x,y)$

##### Theorem 2: Second Derivative Test for f(x,y)
Let $P=(a,b)$ be a critical point of $f(x,y)$. Assume that $f_{xx}, f_{yy}, f_{xy}$ are continuous near $P$. Then 
- If $D > 0$ and $f_{xx}(a,b) >0$, then $f(a,b)$ is a local minimum
- If $D > 0$ and $f_{xx}(a,b) < 0$, then $f(a,b)$ is a local maximum
- If $D < 0$ then $f$ has a saddle point at $(a,b)$
- If $D=0$, the test is inconclusive

##### Theorem 3: Existence and Location of Global Extrema
Let $f(x,y)$ be a continuous function on a closed, bounded domain $D$ in $R^2$. Then 
1. $f(x,y)$ takes on both a minimum and a maximum value on $D$
2. The extreme values occur either at critical points in the interior of $D$ or at points on the boundary of $D$


##### Theorem 4
With $Q(h,k)$ and $D$ as above:
1. If $D>0$ and $a > 0$, then $Q(h,k) > 0$ for $(h,k) \ne (0,0)$.
2. If $D>0$ and $a < 0$, then $Q(h,k) < 0$ for $(h,k) \ne (0,0)$.
3. If $D < 0$, then $Q(h,k)$ takes on both positive and negative values


## 14.8 Lagrange Multipliers: Optimizing with a Constraint

##### Theorem 1: Lagrange Multipliers
Assume that $f(x,y)$ and $g(x,y)$ are differentiable functions. If $f(x,y)$ has a local minimum or a local maximum on the constraint curve $g(x,y)=0$ at $P=(a,b)$ and if $\nabla g_p \ne 0$, then there is a scalar $\lambda$ such that...
$$\nabla f_p = \lambda \nabla g_p$$
##### Critical Value
The critical point that satisifes the values of the Lagrange Equations:
$$f_x(a,b)=\lambda g_x (a,b),\quad f_y(a,b)=\lambda g_y (a,b)$$

**Example :: Lagrange Multiplier in 3 Variables:**
> Find the dimensions of the rectangular box of maximum volume if the sum of the length, width, and height equals 270.
> $$\text{max: } f(x,y,z)=l \cdot w \cdot h, \quad \text{constraint: } g(x,y,z)=l + w + h = 270 $$
> 1. Find the values of $\nabla f$ and $\nabla g$ 
> $$$$
> ----
> Find the minimum and maximum values of the function with values
> $$\text{max: } f(x,y,z)=x^2 + y^2 + z^2 \quad \text{constraint: } g(x,y,z)=x+4y+5z=10 $$
> 1. Find the values of $\nabla f$ and $\nabla g$ 
> $$\nabla f = 2x,2y,2z, \quad \nabla g=\langle 1,4,5 \rangle, \quad  (\nabla f = \nabla g) = (\langle 2x, 2y, 2z \rangle = \lambda \langle 1,4,5 \rangle)$$
> 2. Solve for values of x, y, z, and $\lambda$ 
> $$\lambda = 2x = \frac {y}{2} = \frac{2z}{5}, \quad x=\frac{y}{4}=\frac{z}{5}$$
> 3. Solve for value of x by plugging it into the constraint
> $$x + 4y + 5z = 10= x + 4(4x) + 5(5x) = 10, \quad x = \frac{10}{42}$$
> 4. Plug in x to find values of y and z
> $$y=4x=\frac{40}{42}, \quad z = 5x = \frac{50}{42}$$
> $$\text{Solve for MIN: }x^2+y^2+z^2 = (\frac{10}{42})^2 + (\frac{40}{42})^2 + (\frac{50}{42})^2 = \frac{50}{21}$$
> Note: We know that $\frac{50}{21}$ is a min because since $f(10,0,0)=100 > \frac{50}{21}$  
> 5. Max is DNE because we can go into the negatives for basically infnitely large values
> ----
> Find the minimum and maximum values of the function $f(x,y)=x^2 + y^2$ subject ot the constraint $2x+5y=2$
> $$\text{MIN: } x^2 + y^2 \quad \text{CONSTRAINT: } 2x+5y=2$$
> 1. Find the values of $\nabla f$ and $\nabla g$ 
> $$\nabla f= \langle 2x, 2y \rangle , \quad \nabla g = \langle 2, 5 \rangle$$
> 2. Solve for values of x, y, z, and $\lambda$ 
> $$\nabla f = \lambda \nabla g, \quad \lambda = x = \frac{2y}{5}$$
> 3. Solve for value of x by plugging it into the constraint
> $$(2x + 5y = 2), 2x + 5(\frac{5x}{2})=2, \quad \frac{4x+25x}{2}=2$$
> $$29x = 4, x = \frac{4}{29}, \quad y = \frac{2 - 2(\frac{4}{29})}{5} = \frac{1\frac{21}{29}}{5}$$
> 4. Plug in f(x,y)
> $$f(x,y)=(\frac{4}{29})^2+(\frac{1\frac{21}{29}}{5})^2=\frac{4}{29}$$

> Antonio has \$9.00 to spend on lunch consisting of hamburgers (\$3.50 each) and french fries (\$1.00 per order). Antonio's satisfaction from eating $x_1$ hamburgers and $x_2$ orders of french fries is measured by a function $U(x_1,x_2)=\sqrt{x_1 x_2}$ How much of each type of food $F$ should he purchase to maximize his satisfaction? (Assume that fractional amounts of each food can be purchased.)
> 
> 1. Equations:
> $$f(x,y)=3.5x + y = 9, \quad x_1,x_2 > 0, \quad g(x,y)=x_1 x_2$$
> 2. Find the values of $\nabla f$ and $\nabla g$ 
> $$\nabla f = (3.5,1), \quad \nabla g = 1$$

> Use Lagrange multipliers to find the maximum area 𝑆 of a rectangle inscribed in the ellipse $\frac{x^2}{9} + \frac{y^2}{64}=1$
> 1. Use the values of...
> $$\text{MAX: }f(x,y)=4xy,\quad \text{CONSTRAINT: }g(x,y)=\frac{x^2}{9} + \frac{y^2}{64}=1$$
> 2. Write out the larange equations
> $$\nabla f=\langle 4y,4x \rangle, \quad \nabla g = \lambda\langle \frac{8x}{9},\frac{8y}{64} \rangle$$
> 3. Solve for $\lambda$ in terms of x and y
> $$y=\lambda \frac{8x}{9}\quad \lambda = \frac{9y}{8x},\quad x=\lambda \frac{y}{8} \quad \lambda = \frac{8x}{y}$$
> 4. Solve for x and y
> $$\frac{9y}{8x}=\frac{8x}{y}=\quad 9y^2=64x^2, \quad x=\sqrt{\frac{9y^2}{64}}, \quad y = \sqrt{\frac{64x^2}{9}}$$
> 5. Plug x and y into the constraint to solve for x and y values
> $$\frac{(\sqrt{\frac{9y^2}{64}})^2}{9} + \frac{y^2}{64}=1, \quad y=\pm 4 \sqrt{2}$$
> $$\frac{x^2}{9} + \frac{(\sqrt{\frac{64x^2}{9}})^2}{64}=1, \quad x= \pm \frac{3\sqrt{2}}{2}$$
> 6. Solve for critical points
> $$P = (\sqrt{\frac{9(4\sqrt{2})^2}{64}}),\sqrt{\frac{64(\frac{3\sqrt{2}}{2})^2}{9}})=(\frac{3}{\sqrt{2}},4\sqrt{2})$$
> 7. Plug in values
> $$4xy=\frac{3}{\sqrt{2}} * 4\sqrt{2}=48$$