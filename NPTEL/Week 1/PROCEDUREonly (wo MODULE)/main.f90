program main
    implicit none
    INTEGER, ALLOCATABLE :: arr(:)
    INTEGER :: n
    REAL :: x=3,y=2.3,z=5, mynorm

    PRINT *, "Enter the array length : "
    READ *, n

    ALLOCATE(arr(n))

    PRINT *,"Enter the numbers :"
    READ *, arr

    !sorting via the SUBROUTINE sort_ascend inside the test_module MODULE
    CALL sort_ascend(arr, n)

    PRINT *, "sorted array in ascending order :", arr

    DEALLOCATE(arr)

    PRINT *, "-----------------------------------------------"
    PRINT *, "The norm of x,y,z =", x,y,z, " is below :"
    PRINT *, mynorm(x,y,z)

end program main

! This works perfectly without the need for Desigining MODULES, so why do we need to define them?

! It seems like giving a code like
! gfortran "file1.f90" "file2.f90"
! means the same as like a single file containing the whole code from the both files together

! And, maybe, here lies the difference between the MODULE and the PROCEDUREonly files
! Since we need to CALL a MODULE, then if we don't then those MODULEs won't be executed