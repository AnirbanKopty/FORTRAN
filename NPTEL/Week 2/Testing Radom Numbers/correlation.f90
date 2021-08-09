program correlation
    implicit none
    
    INTEGER :: dim = 1000          ! Set the number of Random Numbers you want here
    INTEGER :: i, k
    REAL*8, ALLOCATABLE :: rnd_array(:)
    REAL*8 :: mean, mean_sq=0, corr
    REAL*8, ALLOCATABLE :: C_k(:)

    ALLOCATE(rnd_array(dim))

    CALL Random_Gen(dim, rnd_array)

    ! Finding Mean
    mean = SUM(rnd_array) / dim

    ! Finding mean_sq
    do i = 1, dim
        mean_sq = mean_sq + (rnd_array(i))**2
    end do
    mean_sq = mean_sq / dim

    ! PRINT *, mean, std    ! This is correct

    ! Finding corr as a function of k

    ALLOCATE(C_k(0:100))

    do k = 0, 100
        C_k(k) = ( corr(k, dim, rnd_array) - mean**2 )/( mean_sq - mean**2 )
    end do

    ! PRINT *, C_k(0:10)

    ! Exporting the correlation plot as C_k.dat
    OPEN(UNIT=11, FILE="C_k.dat", STATUS='replace')

    do k = 0, 100
        WRITE(11,*) k, C_k(k)
    end do
    
    CLOSE(UNIT=11)

end program correlation

REAL*8 FUNCTION corr(k, dim, rnd_array)
    implicit none

    INTEGER, INTENT(IN) :: k
    INTEGER :: i, dim
    REAL*8 :: rnd_array(1000)

    corr = 0
    do i=1, dim-k
        corr = corr + rnd_array(i) * rnd_array(i+k)
    end do

    corr = corr / (dim-k)

END FUNCTION corr