program test_SUBROUTINE
    implicit none
    
    INTEGER :: dim
    REAL, ALLOCATABLE :: array(:)

    PRINT *, "Enter the number of Random Number you desire : "
    READ *, dim

    ALLOCATE(array(dim))

    CALL Random_Gen(dim, array)

    PRINT *, array

end program test_SUBROUTINE