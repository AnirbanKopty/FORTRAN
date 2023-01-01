program particleboxpsi
    implicit none
    INTEGER, PARAMETER :: dim = 1001!, nmax=4
    REAL, PARAMETER :: PI = 4*ATAN(1.0)
    INTEGER :: i!, j, n
    REAL :: x(dim), dx, l=100  !, psiarr(dim,nmax)

    ! discretizing x space from 0 to l
    x(1) = 0
    x(dim) = l
    dx = (x(dim) - x(1)) / (dim-1)
    do i = 1, dim-2
        x(i+1) = x(i) + dx
    end do

    
    OPEN(UNIT=11, FILE='psi.dat', STATUS='replace')
    do i = 1, dim
        WRITE(11, *) x(i), psi(1,x(i)), psi(2, x(i)), psi(3, x(i)), psi(4, x(i))
    end do

    OPEN(UNIT=12, FILE='psisq.dat', STATUS='replace')
    do i = 1, dim
        WRITE(12, *) x(i), psi(1,x(i))**2, psi(2, x(i))**2, psi(3, x(i))**2, psi(4, x(i))**2
    end do
    
    contains
        function psi(n, x)
            INTEGER :: n
            REAL :: x, psi

            psi = SQRT(2.0 / l) * sin(REAL(n) * PI * x / l)
            
        end function psi

end program particleboxpsi