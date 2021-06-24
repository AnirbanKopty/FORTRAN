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

REAL FUNCTION mynorm(x,y,z) RESULT(res)
    IMPLICIT none
    REAL, INTENT(IN) :: x,y,z          ! INTENT(IN) makes sure that these variables are input variables and can not be changed
    
    res = SQRT(x**2 + y**2 + z**2)

END FUNCTION mynorm