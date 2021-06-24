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


SUBROUTINE sort_ascend(array, length)
    Implicit none
    INTEGER :: length, array(length), i, j, temp        ! Strange that even with array(<arbitrary num>), the code is working

    do i = 1, length
        do j = i+1, length
            if ( array(j)<array(i) ) then
                temp = array(i)
                array(i) = array(j)
                array(j) = temp
            endif
        enddo
    enddo

END SUBROUTINE sort_ascend

SUBROUTINE sort_descend(array, length)
    Implicit none
    INTEGER :: length, array(length), i, j, temp
    
    do i = 1, length
        do j = i+1, length
            if ( array(j)>array(i) ) then                   ! Only change is here '>' in place of '<'
                temp = array(i)
                array(i) = array(j)
                array(j) = temp
            endif
        enddo
    enddo

END SUBROUTINE sort_descend

! So, the difference between FUNCTION and SUBROUTINE is that
! FUNCTION returns argument(s) where SUBROUTINE does not
! SUBROUTINE makes changes to the parameters provided as arguments
! Meaning FUNCTION arguments are local whereas SUBROUTINE arguments are global when called

! Make a note that the argument names are Dummy


! We can also have these PROCEDURES in different files, check the folder diff-file-test