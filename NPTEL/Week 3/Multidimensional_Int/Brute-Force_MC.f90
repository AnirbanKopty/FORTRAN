program mult_dim_brute_mc
    implicit none

    ! 6D Integral = 7D Answer
    
    ! I = \mul_dim_int_{-5}^5 d\vec{x} d\vec{y} g(\vec{x}, \vec{y})
    ! where g(\vec{x}, \vec{y}) = exp(-x*x -y*y -0.5(x-y)^2)

    REAL *8 :: Integrand, Int, volume

    volume = (10)**6          ! 6D Volume
    
    

end program mult_dim_brute_mc


REAL*8 FUNCTION Integrand(x)
    ! g(\vec{x}, \vec{y}) = exp(-x*x -y*y -0.5(x-y)^2)

    implicit none

    REAL*8 :: x(6), xx, yy, xy

    xx = x(1)*x(1) + x(2)*x(2) + x(3)*x(3)
    yy = x(4)*x(4) + x(5)*x(5) + x(6)*x(6)
    xy = (x(1)*x(4))**2 + (x(2)*x(5))**2 + (x(3)*x(6))**2
    
    Integrand = exp(-xx -yy -0.5d0*xy))

END FUNCTION Integrand