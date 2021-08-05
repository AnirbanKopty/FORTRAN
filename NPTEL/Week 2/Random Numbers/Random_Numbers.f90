program Random_Number
    implicit none
    
    INTEGER :: i, n
    ! n = number of random numbers wanted
    ! i = iterable
    REAL :: r
    ! Random Numbers

    WRITE(6,*) "Enter the number of Random numbers you want : "
    READ(5,*) n

    ! Calling Random_Number(<REAL>) Subroutine
    do i = 1, n
        CALL RANDOM_NUMBER(r)
        PRINT *, "Random Number is : ", r
    end do
end program Random_Number