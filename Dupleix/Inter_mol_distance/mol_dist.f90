program mol_dist
    implicit none
    INTEGER, PARAMETER :: dim = 31                          ! defines the space discretization
    REAL*8, PARAMETER :: h = 6.626*10.0d0**(-34), NA = 6.022*10.0d0**(23), PI = 4*ATAN(1.0), c = 3*10.0d0**8, k = 1.38*10.0d0**(-23)
    REAL*8 :: I, mu, R, m1 = 12.011, m2 = 15.999            ! m1, m2 in u unit
    INTEGER :: itr, T = 298
    REAL*8 :: B = 193.2d0, EJ
    INTEGER :: J(dim) = (/(itr, itr=0,dim-1,1)/) , gJ       ! using constructor (/ /) (basically list comprehension) in fortran, it can only handle integer steps

    !? function evaluation for plotting
    OPEN(UNIT=14, FILE='mol_plot.dat', STATUS='replace')

    do itr = 1, dim
        gJ = 2*J(itr)+1
        EJ = B*h*c * J(itr)*(J(itr)+1)

        WRITE(14, *) J(itr), gJ * exp(- EJ/ (k*T))
    end do

    CLOSE(14)

    !? Finding Inter-nuclear distance R
    ! used the formula of B to get I, then R = sqrt(I/mu)
    mu = m1*m2/(m1+m2) * 1.66*10.0d0**(-27)
    I = h/(8*PI**2 * c* B)
    R = sqrt(I/mu)              ! in meter
    R = R * 10.0d0**(12)

    PRINT "(A, f0.4, A, f0.4, A)", "The Inter-nuclear distance, given B = ", B, " per m is, R = ", R, " pm"

end program mol_dist