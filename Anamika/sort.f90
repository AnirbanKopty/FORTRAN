module sort
    implicit none
    
contains
    SUBROUTINE sort_ascend(array, length)
        REAL :: array(length), temp
        INTEGER :: length, i, j
        
        do i=1, length
            do j = i+1, length
                if ( array(j)<array(i) ) then
                    ! swapping
                    temp = array(j)
                    array(j) = array (i)
                    array(i) = temp                    
                end if
            end do
        end do

    END SUBROUTINE sort_ascend

    SUBROUTINE sort_descend(array, length)
        REAL :: array(length), temp
        INTEGER :: length, i, j
        
        do i=1, length
            do j = i+1, length
                if ( array(j)>array(i) ) then
                    ! swapping
                    temp = array(j)
                    array(j) = array (i)
                    array(i) = temp                    
                end if
            end do
        end do

    END SUBROUTINE sort_descend
    
end module sort