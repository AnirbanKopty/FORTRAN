SUBROUTINE Random_Gen(dim, array)

    implicit none
    
    INTEGER :: i, dim
    ! n = number of random numbers
    ! i = iterable

    REAL*8 ::  array(dim)
    ! Random Number array of given dimension


! ---- Start of Seed Parameters
    INTEGER :: int_seed
    INTEGER, ALLOCATABLE :: a_seed(:)
    INTEGER :: dt_seed(8)   ! The Size of DATE_AND_TIME output is of 8
! ---- End of Seed Parameters
! ---- Start of Random_Seeding

    ! RANDOM_SEED(SIZE=size,PUT=put,GET=get) restarts or queries the state of 
    !the pseudorandom number generator used by RANDOM_NUMBER

    ! SIZE = a number to dictate the number of Seeds present
    ! GET = INTENT(OUT), An Array which is the initial seed
    ! PUT = INTENT(IN), An Array to put user defined Seeds

    CALL RANDOM_SEED(int_seed)
    ! PRINT *, int_seed    ! 12 here in this case
    ALLOCATE(a_seed(int_seed))
    ! So, we are preparing a_seed to hold the same number of array elements as the initial seeder
    !so that, we can use this dimensional a_seed to input our own

    ! To get the initial seed that is present 
    CALL RANDOM_SEED(GET=a_seed)
    ! PRINT *, "The Initial Seed Present", a_seed

    ! To make sure the seed changes everytime we run the code
    CALL DATE_AND_TIME(VALUES=dt_seed)
    ! PRINT *, "The Current DATE_AND_TIME is : ", dt_seed
    ! As can be seen, the values are - YEAR, MONTH, DATE, TimeZone Difference, HOUR, MIN, SEC, miliSEC
    ! Now, we input these always different numbers into the a_seed array
    DO i=1, 8
        a_seed(i) = dt_seed(i)
    END DO
    ! PRINT *, "Now the changed Seed is : ", a_seed
    ! We now use this seed
    CALL RANDOM_SEED(PUT = a_seed)
! ---- End of Random_Seeding

! Calling Random_Number(<REAL>) Subroutine
    do i = 1, dim
        CALL RANDOM_NUMBER(array(i))
    end do

END SUBROUTINE Random_Gen