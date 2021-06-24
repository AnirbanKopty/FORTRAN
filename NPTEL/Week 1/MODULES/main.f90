program main
    USE test_module         ! This is how a MODULE is USEd, it must always be before anything else
    implicit none
    INTEGER, ALLOCATABLE :: arr(:)
    INTEGER :: n
    REAL :: x=3,y=2.3,z=5

    PRINT *, "Enter the array length : "
    READ *, n

    ALLOCATE(arr(n))

    PRINT *,"Enter the numbers :"
    READ *, arr

    !sorting via the SUBROUTINE sort_ascend inside the test_module MODULE
    CALL sort_ascend(arr, n)

    PRINT *, "sorted array in ascending order", arr

    DEALLOCATE(arr)

    PRINT *, "--------------------------"
    PRINT *, "The norm of x,y,z = ", x,y,z

    PRINT *, mynorm(x,y,z)

end program main

! Well, putting the module after the main also worked in compiling!