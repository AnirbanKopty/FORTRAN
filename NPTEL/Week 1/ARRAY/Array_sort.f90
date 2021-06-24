program Array_sort
    implicit none

    ! Creating dynamic array to hold the numbers
    INTEGER, ALLOCATABLE :: arr(:)
    INTEGER :: n, j, i, temp
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
        do i = 1, n
            do j = i+1, n
                if ( arr(j)<arr(i) ) then
                    temp = arr(i)
                    arr(i) = arr(j)
                    arr(j) = temp
                endif                           !or end if
            enddo
        enddo
    else
        do i = 1, n
            do j = i+1, n
                if ( arr(j)>arr(i) ) then
                    temp = arr(i)
                    arr(i) = arr(j)
                    arr(j) = temp
                endif
            enddo
        enddo
    endif
   

    PRINT *, 'sorted array is :', arr

endprogram Array_sort
