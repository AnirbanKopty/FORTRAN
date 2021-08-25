SUBROUTINE Random_Integer(dim, int_rand)
    implicit none
    
    INTEGER :: dim, i
    INTEGER :: int_rand(dim)
    REAL*8 :: rand_array(dim)

    ! Calling Random Function
    CALL Random_Gen(dim, rand_array)
    ! PRINT *, rand_array(1:10)             ! Before rounding

    int_rand = NINT(rand_array)
    ! PRINT *, int_rand(1:10)               ! After rounding

    ! Changing all the 0s to -2s, and 1s to 2s
    do i = 1, dim
        if ( int_rand(i) == 0 ) then
            int_rand(i) = -2
        else
            int_rand(i) = 2
        end if
    end do
    ! PRINT *, int_rand(1:10)                ! -2 and 2 random numbers

end SUBROUTINE Random_Integer

! Made a SUBROUTINE for this so that I can call the same Random multiple times
!to get new Random Integer sets

program Rand
    implicit none

    INTEGER, PARAMETER :: dim=1000000, sum_dim = 10000
    INTEGER :: n,i, int_rand(dim), summ_r(sum_dim)=0

    ! CALL Random_Integer(dim, int_rand)
    do n=1, sum_dim
        CALL Random_Integer(dim, int_rand)
        ! PRINT *, int_rand(1:10)
        do i = 1, dim
            summ_r(n) = summ_r(n) + int_rand(i)
        end do
    end do

    ! PRINT *, summ_r(1:20)

    OPEN(UNIT=15, FILE="histogram.dat", STATUS="REPLACE")
    do n = 1, sum_dim
        WRITE(15,*) summ_r(n)
    end do

end program Rand