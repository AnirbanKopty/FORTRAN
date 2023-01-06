program massfr
    implicit none
    INTEGER, PARAMETER :: dim = 10001, kmax = 600
    INTEGER :: i
    REAL :: k(dim), dk

    ! discretizing k space from 0 to kmax
    k(1) = 0
    k(dim) = kmax
    dk = (k(dim) - k(1)) / (dim-1)
    do i = 1, dim-2
        k(i+1) = k(i) + dk
    end do

    
    OPEN(UNIT=12, FILE='wk.dat', STATUS='replace')
    do i = 1, dim
        WRITE(12, *) k(i), wk(0.95,k(i)), wk(0.97, k(i)), wk(0.99, k(i))
    end do
    
    contains
        function wk(p, k)
            REAL :: p, k, wk

            wk = k * p**(k-1) * (1-p)**2
            
        end function wk

end program massfr