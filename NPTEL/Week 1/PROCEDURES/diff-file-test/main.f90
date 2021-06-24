program Array_sort
    implicit none

    ! Creating dynamic array to hold the numbers
    INTEGER, ALLOCATABLE :: arr(:)
    INTEGER :: n
    LOGICAL :: ascending

    PRINT *, 'Enter the amount of numbers to be sorted : '
    READ *, n

    ALLOCATE(arr(n))

    PRINT *, 'Now enter the numbers :'
    ! DO i=1, n
    !     READ *, arr(i)
    ! END DO
    ! ! or
    READ *, arr

    PRINT *, "What do you want? Ascending or Descending? Write TRUE for Ascending, else FALSE : "
    READ *, ascending

    ! Sorting part
    if ( ascending .eqv. .TRUE. ) then
        CALL sort_ascend(arr, n)                ! This is where the SUBROUTINE sort_ascend is called via CALL command
                                                ! We can use the SUBROUTINE multiple times without writing always the same code (similar to functions)
    else
        CALL sort_descend(arr,n)
    endif
   

    PRINT *, 'sorted array is :', arr

endprogram Array_sort

! TO compile codd should be
! gfortran main.f90 subr.f90 -o main.exe
! The order of the files in the parameters doesn't matter