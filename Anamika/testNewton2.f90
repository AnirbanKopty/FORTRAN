! To test Newton_Raphson
program test_NR
    use rootfinding
    implicit none
    REAL :: x0, xsol
    REAL, PARAMETER :: eps = 10.0**(-5)
    
    PRINT *, "Enter initial guess : "
    READ (*,*) x0
    
    xsol = New_Raph(f, x0, eps)
    
    PRINT "(a, e8.1, a, f0.5)", "The solution with accuracy eps, ", eps, " is = ", xsol
    
    contains
        function f(x)
            ! implicit none
            REAL :: x, f
        
            f = 2 + x + 4* x*x + 3* x**3
        end function
end program