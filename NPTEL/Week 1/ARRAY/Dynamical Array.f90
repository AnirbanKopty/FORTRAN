program allocatable_array
    implicit none
    
    REAL, ALLOCATABLE :: vec(:)         ! ALLOCATABLE keyword allows the array to have dynamical size
    INTEGER :: n,i
    LOGICAL :: result
    ! CHARACTER(LEN=:), ALLOCATABLE :: test_str
    ! Need to work later

    PRINT *, "Enter the size of array"
    READ *, n
    
    Allocate(vec(n))                    ! We always need to specify the size, here done by user

    ! ALLOCATE(test_str(3))

    do i = 1,  n
        vec(i) = Acos(-1.0)**i        
    end do

    Print *, vec

    result = ALLOCATED(vec)             ! Shows the status of memory allocation of a variable
    print *, 'allocate status of vec = ', result
    
    DEALLOCATE(vec)                     ! This is where we are freeing up the array from memory
    !Certainly, this removes the array data
    
    result = ALLOCATED(vec)
    print *, 'allocate status of vec, after deallocation = ', result


end program allocatable_array

! These ALLOCATE, DEALLOCATE keywords are for ALLOCATABLE or POINTER objects only

