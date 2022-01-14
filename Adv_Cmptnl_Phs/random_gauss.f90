program random_dist
    implicit none
    INTEGER :: i
    INTEGER, PARAMETER :: dim = 100000
    REAL :: uni_dist1(dim), uni_dist2(dim), gauss_dist(dim), Rsq(dim)!, gauss_dist2(dim)
      
    ! Generating Random Numbers, x of Uniform PDF P(x)=1 in the range [0,1) and exporting
    do i = 1, dim
99      CALL RANDOM_NUMBER(uni_dist1(i))
        CALL RANDOM_NUMBER(uni_dist2(i))

        ! Changing the distribution from [0,1) to [-1,1)
        uni_dist1(i) = -1 + 2 * uni_dist1(i)
        uni_dist2(i) = -1 + 2 * uni_dist2(i)

        Rsq(i) = uni_dist1(i) **2 + uni_dist2(i) **2
        IF (Rsq(i) > 1) GOTO 99
    end do

    ! Creating Gaussian Distribution for (-infinity, infinity)
    ! The required transformation : z = SQRT(2y)*SIGMA*COS(x) or SQRT(2y)*SIGMA*SIN(x)
    !where x is [0,2PI) uniform distribution
    OPEN(UNIT=25, FILE="gauss_dist.dat", STATUS='replace')

    do i = 1, dim
        gauss_dist(i) = SQRT(-2*LOG(Rsq(i))) * uni_dist1(i) / SQRT(Rsq(i))    ! SIGMA = 1

        WRITE(25,*) gauss_dist(i)
    end do

end program