program solvent_extr
    implicit none
    INTEGER :: i, n(10) = (/(i, i=1,10,1)/)
    REAL :: V1 = 100.0, V2 = 20.0, Kd = 0.20, f(10)
    
    OPEN(UNIT=14, FILE='data.dat', STATUS='replace')

    do i = 1, 10
        f(i) = ( 1 + (V2/n(i)) / (Kd*V1) )**n(i)
        WRITE(14,*) n(i), f(i)
    end do

    
end program solvent_extr