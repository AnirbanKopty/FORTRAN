! An example Function
function f(x)
    implicit none
    REAL :: f, x

    f = 2 + x + 5*x*x + 4*x**3
end function

! To test Newton_Raphson
program test_NR
    implicit none
    REAL :: f, x0, xsol, New_Raph
    REAL, PARAMETER :: eps = 10.0**(-5)

    external :: f
    ! or
    ! xsol = f(3.)      ! Just to execute the function once
    
    PRINT *, "Enter initial guess : "
    READ (*,*) x0
    
    xsol = New_Raph(f, x0, eps)
    ! Error: "Expected a procedure for argument f"
    ! This is cause, the program doesn't know what is f, since it has not executed the funtion call before
    ! So, we can either declare that f is actually declared externally, or execute the function call f before

    PRINT "(a, e8.1, a, f0.5)", "The solution with accuracy eps, ", eps, " is = ", xsol

end program test_NR

function New_Raph(f, x0, eps) result(xsol)
    implicit none
    REAL :: f, x0, eps, xn, xsol
    REAL :: xnp1, derivative
    INTEGER :: iter

    xn = x0                 ! Initial Guess
    iter = 0                ! To count the #iteration

    do while (abs(f(xn)) >= eps)
        derivative = (f(xn+0.0001) - f(xn-0.0001)) / (0.0002)
        xnp1 = xn - f(xn) / derivative

        xn = xnp1
        ! PRINT *, xnp1, f(xnp1), eps
        iter = iter + 1
    end do

    PRINT *, "#iteration = ", iter

    xsol = xn               ! Output
end function