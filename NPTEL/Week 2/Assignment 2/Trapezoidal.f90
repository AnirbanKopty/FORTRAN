! I = \int_0^{1/2} \sqrt{1-t^2} dt with n gridpoints in double precision floats

program trapezoidal
    implicit none
    
    REAL*8 :: h, Integrand, sum                     ! h = step size, sum = Integrated result
    INTEGER :: i, n=10000                           ! i = Iterative, n = #Gridpoints
    REAL*8, ALLOCATABLE :: t(:)

    ALLOCATE(t(n))

    h = 0.5d0 / (REAL(n-1))                         ! Step size

    t(1) = 0.d0                                     ! Starting limit
    ! Filling the variable values
    do i = 2, n
        t(i) = t(i-1) + h
    end do

    ! Integration time
    sum = Integrand(t(1)) + Integrand(t(n))
    do i = 1, n-1
        sum = sum + 2 * Integrand(t(i))
    end do
    sum = sum * h/2.d0

    ! RESULT
    PRINT *, "The result to the integration I = \int_0^{1/2} \sqrt{1-t^2} dt with ", n," gridpoints in double precision floats is :"
    PRINT *, sum

end program trapezoidal

REAL*8 FUNCTION Integrand(t)
    implicit none

    REAL*8 :: t

    Integrand = SQRT(1-t**2)
END FUNCTION Integrand