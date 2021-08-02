program RANDOM_NUMBERex
    REAL :: r(100,10)

    CALL RANDOM_NUMBER(r)
    ! So, this always fetches same random numbers  
    PRINT *, SUM(r)
    
   
  end program