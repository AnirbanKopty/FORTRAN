! This is how you create MODULEs CONTAINing FUNCTIONs and/or SUBROUTINEs

module test_module
    implicit none
    ! If there needs to be any declarations outside the containing
    !FUNCTIONs and/or SUBROUTINEs, those remains here
    
contains
! This is where the FUNCTIONs and/SUBROUTINEs are placed
    REAL FUNCTION mynorm(x,y,z)
        REAL, INTENT(IN) :: x,y,z
        mynorm = SQRT(x**2 + y**2 + z**2)
    END FUNCTION mynorm

    SUBROUTINE sort_ascend(array, length)
        INTEGER :: length, array(length), i,j, temp
        
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
    
end module test_module

! You might notice there is a file created already before compiling with .mod extension


! Note that, module always need to be put before the main file for compilation