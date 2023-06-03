program cons_reac
    implicit none
    INTEGER, PARAMETER :: dim = 1001                       ! defines the space discretization
    REAL*8, PARAMETER :: k1 = 45.0d0/3600.0d0, k2 = 15.0d0/3600.0d0,  k_1 = 5.0d0/3600.0d0, k_2 = 50.0d0/3600.0d0
    INTEGER :: i
    REAL*8 :: t(dim), dt, tmax = 1000                       ! in seconds
    REAL*8 :: A(dim), B(dim), C(dim)
    ! A0 is taken to be 1 for normalization


    !? space discretization
    dt = tmax / (dim-1)
    t(1) = 0.d0
    do i = 2, dim
        t(i) = t(i-1) + dt
    end do

    !? evaluating A,B,C
    !? for k1, k2
    do i = 1, dim
        A(i) = exp(-k1*t(i))
        B(i) = (k1/(k2-k1)) * ( exp(-k1*t(i)) - exp(-k2*t(i)) )
        C(i) = ( 1 - (1/(k2-k1)) * (k2*exp(-k1*t(i)) - k1*exp(-k2*t(i))) )
    end do

    OPEN(UNIT=14, FILE='cons1_plot.dat', STATUS='replace')
    do i = 1, dim
        WRITE(14,*) t(i), A(i), B(i), C(i)
    end do

    !? for k_1, k_2
    do i = 1, dim
        A(i) = exp(- k_1 * t(i))
        B(i) = (k_1/ (k_2-k_1)) * (exp(-k_1*t(i)) - exp(-k_2*t(i)))
        C(i) = (1 - (1/(k_2-k_1)) * (k_2*exp(-k_1*t(i)) - k_1*exp(-k_2*t(i))))
    end do

    OPEN(UNIT=15, FILE='cons2_plot.dat', STATUS='replace')
    do i = 1, dim
        WRITE(15,*) t(i), A(i), B(i), C(i)
    end do

    !? writing the parameters
    OPEN(UNIT=16, FILE='param.dat', STATUS='replace')
    WRITE(16, *) k1, k2
    WRITE(16, *) k_1, k_2
    

    
    CLOSE(14)
    CLOSE(15)
    CLOSE(16) 

end program cons_reac