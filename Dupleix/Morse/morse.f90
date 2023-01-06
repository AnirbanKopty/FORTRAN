program morseplot
    implicit none
    INTEGER, PARAMETER :: dim = 251
    INTEGER :: i
    REAL*8 :: req = 113.0*10.0**(-12), D = 1094.0/(6.022*10.0**(20)), kf = 1896.0
    REAL*8 :: a, h, r(dim), V(dim), rmin = 50*10.0**(-12), rmax = 300*10.0**(-12)

    a = sqrt(kf /(2*D))

    ! creating equidistant x points in the range (50,300)
    h = (rmax-rmin) / (dim-1.0)
    r(1) = rmin
    do i=2, dim
        r(i) = r(i-1) + h
    end do

    ! Morse Potential
    do i = 1, dim
        V(i) = D*( 1.0 - exp( a * (req - r(i)) ) )**2
    end do

    ! Generating data for plot
    open(10, file='morseplot.dat', status='replace')
        do i = 1, dim  
            WRITE(10,*) r(i), V(i)
        end do
    close(10)

end program morseplot