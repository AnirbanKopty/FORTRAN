program RANDex
    IMPLICIT NONE
    integer,parameter :: seed = 5645
    INTEGER :: i
    REAL*8 :: sum = 0, avg, x1, x2, y1, y2
    
    call srand(seed)

    ! do i = 1, 1000
    !     sum = sum + rand()
    ! end do

    ! print *, 'The sum of 1000 pseudo-random numbers is = ', sum
    ! ! Change the seed value to get different sets of random numbers

    ! avg = sum/1000.d0

    ! print *, 'And the average is = ', avg
    ! ! As expected, these are uniform random number generators, so the mean is at ~ the centre.

    sum = 0
    do i = 1, 100
        sum = sum + rand()
    end do

    x1 = sum/REAL(i-1)

    print *, 'The avg of ', i-1, ' random numbers = ',x1

    sum = 0
    do i = 1, 10000
        sum = sum + rand()
    end do

    x2 = sum/REAL(i-1)

    print *, 'The avg of ', i-1 ,' random numbers = ',x2

    y1 = ABS(x1 - 0.5d0)
    y2 = ABS(x2 - 0.5d0)

    if ( y1 > y2 ) then
        print *, 'y1 > y2'
    else
        print *, 'y1 < y2'
    end if

  end program RANDex
  
