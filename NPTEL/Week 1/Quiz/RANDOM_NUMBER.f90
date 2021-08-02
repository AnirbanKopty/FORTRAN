program test_random_number
    REAL :: r(5,5)
    CALL RANDOM_NUMBER(r)
    PRINT *, r
    ! So, we can choose the data type here
  end program