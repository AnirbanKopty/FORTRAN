program mean_std
    implicit none
    
    INTEGER :: dim                      ! #Random Numbers
    INTEGER :: i
    REAL*8, ALLOCATABLE :: array(:)
    REAL*8 :: mean, mean_sq=0, std


    PRINT *, "Enter the count of Random Numbers you want : "
    READ *, dim

    ALLOCATE(array(dim))

    CALL Random_Gen(dim, array)

    ! Finding Mean
    mean = SUM(array) / dim

    ! Finding Standard Deviation
    do i = 1, dim
        mean_sq = mean_sq + (array(i))**2
    end do
    mean_sq = mean_sq / dim

    std = SQRT( mean_sq - mean**2 )

    PRINT '(A,i10,1x,A,F7.5,/,A,F7.5)', "So, the mean of the ", dim, "Random Numbers is : ", mean, &
        & "And, the Standard Deviation is : " , std

    PRINT *, "Usually, for 'TRUE' Uniform Random Numbers in the range [0,1], the mean should be 0.5 & 
        & while the Standard Deviation should be 1/SQRT(12) or 0.2886"

end program mean_std