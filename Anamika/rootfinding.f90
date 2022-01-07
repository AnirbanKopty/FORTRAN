module rootfinding
    implicit none

    contains
        function New_Raph(f, x0, eps) result(xsol)
            implicit none
            REAL :: f, x0, eps, xn, xsol
            REAL :: xnp1, derivative

            xn = x0                 ! Initial Guess

            do while (abs(f(xn)) >= eps)
                derivative = (f(xn+0.0001) - f(xn-0.0001)) / (0.0002)
                xnp1 = xn - f(xn) / derivative
                xn = xnp1
            end do

            xsol = xn               ! Output
        end function
end module