program test_rand
    integer,parameter :: seed = 86456
    
    call srand(seed)
    print *, rand(), rand(), rand(), rand()
    print *, rand(seed), rand(), rand(), rand()
    ! So, the default data type is REAL, and also, there is a "random" number at each seed integer, so that using the seed value
    !restarts at that same value and next used rand() gives rand(seed+1)
  end program test_rand
  