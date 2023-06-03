program HO
    implicit none
    INTEGER, PARAMETER :: dim = 1001, nmax = 4                      ! defines the space discretization
    REAL*8, PARAMETER :: h = 6.626*10.0**(-34), NA = 6.022*10.0**(23), kf = 1896.0, PI = 4*ATAN(1.0)
    REAL*8 :: M1 = 0.012, M2 = 0.016, mu, nu0, alpha, xmax
    INTEGER :: n, i
    REAL*8 :: x(dim), Psi_array(dim, 0:nmax), dx, Psi                    ! in Fortran, we can define starting index too

    !? evaluating the parameters
    mu = (M1 * M2) / ((M1 + M2) * NA)
    nu0 = 1/(2*PI) * sqrt(kf / mu)
    alpha=(4 * PI**2 * mu * nu0) / h
    ! y = sqrt(alpha) * x
    xmax = sqrt(11* h * nu0 / kf)
    ! this turns out to be 1.58*10**(-11), we increase this to 1.78*10**(-11) to take the whole range
    xmax = 1.78 * 10.0**(-11)


    !? x space discretization (-xmax,xmax, dx)
    dx = 2*xmax / (dim-1)
    x(1) = -xmax
    do i = 2, dim
        x(i) = x(i-1) + dx
    end do

    !? The Wave functions
    do n = 0, nmax
        do i = 1, dim
            Psi_array(i,n) = Psi(n,sqrt(alpha)*x(i))
        end do
    end do


    OPEN(UNIT=14, FILE='HOplot.dat', STATUS='replace')
    do i = 1, dim
        WRITE(14,*) x(i), Psi_array(i,0), Psi_array(i,1), Psi_array(i,2), Psi_array(i,3), Psi_array(i,4)
    end do

    OPEN(UNIT=15, FILE='HOsqplot.dat', STATUS='replace')
    do i = 1, dim
        WRITE(15,*) x(i), Psi_array(i,0)**2, Psi_array(i,1)**2, Psi_array(i,2)**2, Psi_array(i,3)**2, Psi_array(i,4)**2
    end do

    CLOSE(14)
    CLOSE(15)
        
end program HO

recursive function factorial(n) result(o)
    implicit none
    INTEGER :: n, o
    if (n == 0 .or. n == 1) then
        o = 1
        else
        o = n * factorial(n - 1)
    end if
end function

recursive real*8 function hermite(n,y) result(Herm)
    implicit none
    INTEGER :: n
    REAL*8 :: y 
    if (n == 0) then
        Herm = 1
    else if (n == 1) then
        Herm = 2*y
    else
        Herm = 2*y* hermite(n-1,y) + 2*n* hermite(n-2,y)
    end if
end function

function Psi(n, y) result(wavefn)
    implicit none
    INTEGER :: n, factorial
    REAL*8 :: y, wavefn, hermite, PI, alpha

    wavefn = ( sqrt(alpha) / (2**n * factorial(n) * sqrt(PI)) ) * hermite(n,y) * exp(-(y**2)/2)

end function Psi


!! This code will return bad results, since, `alpha`, `PI` are not defined in the functions, thus will take garbage values, since
!! it is not taken as argument from the main function.