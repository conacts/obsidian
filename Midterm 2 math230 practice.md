
> Find and classify all critical points of the function $f(x,y) = x^3 + x^2y −y^2 −4y$.
> 1. Find $f_x$ and $f_{xx}$
> $$f_x = 3x^2 + 2xy, \quad f_{xx} = 6x + 2y$$
> 2. Find $f_y$ and $f_{yy}$
> $$f_y = x^2 - 2y - 4, \quad f_{yy} = -2$$
> 3. Find $f_{xy}$
> $$f_{xy} =2x$$
> 5. Find D
> $$D = f_{xx}f_{yy} - f_{xy}^2 = (6x + 2y)(-2) - (2x)^2 = -12x-4y-4x^2$$
> 6. Set nabla equal to $(0,0)$
> $$\nabla f = (3x^2 + 2xy, x^2 - 2y - 4) = (0,0)$$
> 7. Solve for critical points
> $$3(0)^2 + 2(0)y = 0, \quad -2(y)-4 = 0, \quad y = -2, x = 0$$
> 8. Plug into D
> $$-12(0)-4(-2)-4(0)^2 = 8 > 0$$
> 9. Is $f_{xx}$ > 0?
> $$f_{xx} = 6(0) + 2(-2) = -4 < 0 = \text{local maximum}$$
> ----
>  Find the absolute maximum and minimum values (if they exist) for the function on the following constraints. Use the method of lagrange multipliers.
> (a) $f(x,y) = x^2 + y^2 + xy$ on the unit circle
> 1. Find $f_x$ and $f_y$
> $$f_x = 2x + y,\quad f_y = 2y + x$$
> 2. Find $\nabla g$ constraint
> $$g(x,y) = x^2 + y^2 = 1, \nabla g = (2x, 2y) $$
> 4. Use lagrange multipliers
> $$\nabla f = (2x + y, 2y + x) = \lambda (2x + 2y)$$
> $$\lambda = 1 + \frac{y}{2x} = 1 + \frac{x}{2y}$$
> $$\frac{y}{2x} = \frac{x}{2y}, == 2y^2 = 2x^2 == y = x$$
> 5. Plug in for x and y
> $$x^2 + (x)^2 = 1, \quad x = \sqrt{\frac{1}{2}} = \frac{\sqrt{2}}{2}$$
> 6. Plug into the equation to find the min and maxes
> $$$$