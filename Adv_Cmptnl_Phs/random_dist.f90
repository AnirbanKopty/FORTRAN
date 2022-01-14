program random_dist
    implicit none
    INTEGER :: i
    INTEGER, PARAMETER :: dim = 100000
    REAL, PARAMETER :: PI = 4*ATAN(1.0)
    REAL :: uni_dist(dim), exp_dist(dim), gauss_dist(dim)

    
    ! To plot the distributions
    OPEN(UNIT=12, FILE="uniform_random.dat", STATUS='replace')
    OPEN(UNIT=13, FILE="exp_random.dat", STATUS='replace')
    OPEN(UNIT=14, FILE="gauss_random.dat", STATUS='replace')
    
    do i = 1, dim
        ! Generating Random Numbers, x of Uniform PDF P(x)=1 in the range [0,1)
        CALL RANDOM_NUMBER(uni_dist(i))

        ! Changing the distribution to P(y)=Exp(-y) for [0,infinity)
        ! The required transformation : y = -ln(1-x)
        exp_dist(i) = -LOG(1 - uni_dist(i))
        WRITE(13,*) exp_dist(i)
    end do


    do i = 1, dim
        ! Generating uncorrelated new uniform random numbers
        CALL RANDOM_NUMBER(uni_dist(i))
        WRITE(12,*) uni_dist(i)
    end do

    ! Creating Gaussian Distribution for (-infinity, infinity)
    ! The required transformation : z = SQRT(2y)*SIGMA*COS(x) or SQRT(2y)*SIGMA*SIN(x)
    !where x is [0,2PI) uniform distribution
    uni_dist = 2*PI * uni_dist
    do i = 1, dim
        gauss_dist(i) = SQRT(2*exp_dist(i))*COS(uni_dist(i))    ! SIGMA = 1
        WRITE(14,*) gauss_dist(i)
    end do

end program