program Int_Trap
    implicit none
    
    ! I = \int_0^3 e^x dx
    
    REAL*8 :: h, Integrand, sum, err                    ! h = step size, sum = Integrated result, err= error in result
    INTEGER :: i, n=10                                  ! i = Iterative, n = #Gridpoints
    REAL*8, ALLOCATABLE :: x(:)
    REAL*8, PARAMETER :: int_res = EXP(3.0d0) - 1.d0    ! The integration result

    OPEN(unit=7, file='trap.dat')

    ! 1st time allocation
    ALLOCATE(x(n))

    do
        n = n*10
        DEALLOCATE(x)
        ALLOCATE(x(n))

        h = 3d0 / (REAL(n-1))                           ! Step size

        x(1) = 0.d0                                     ! Starting limit
        ! Filling the variable values
        do i = 2, n
            x(i) = x(i-1) + h
        end do

        ! Integration time
        sum = Integrand(x(1)) + Integrand(x(n))
        do i = 1, n-1
            sum = sum + 2 * Integrand(x(i))
        end do
        sum = sum * h/2.d0

        err = abs(int_res - sum)

        WRITE(7,*) n, sum, err

        if (n > 100000) exit
    end do

end program Int_Trap

REAL*8 FUNCTION Integrand(x)
    implicit none

    REAL*8 :: x

    Integrand = EXP(x)
END FUNCTION Integrand