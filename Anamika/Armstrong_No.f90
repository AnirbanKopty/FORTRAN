program asmstrong_check
    implicit none
    INTEGER*8 :: Number, n, armstrong_val
    INTEGER :: count_digit, countn

    armstrong_val = 0
    
    PRINT *, "Enter the number to check for Armstrong Number : "
    READ (*,*) Number

    n = Number

    countn = count_digit(n)

    ! PRINT *, countn, MODULO(n, 10)
    ! PRINT *, n, Number

    do while (n .ne. 0)
        armstrong_val = armstrong_val + MODULO(n,10)**countn
        n = n / 10
    end do

    ! PRINT *, n, Number, armstrong_val

    if ( armstrong_val == Number ) then
        PRINT *, "The number is an Armstrong Number."
    else
        PRINT *, "The number is not an Armstrong Number."
    end if

end program asmstrong_check

function count_digit(Number) result(countn)
    implicit none
    INTEGER :: countn
    INTEGER*8, INTENT(IN) :: Number       ! To make the input Unchanged
    INTEGER*8 :: n
    
    n = Number
    countn = 0

    do while (n .NE. 0)
        n = n / 10
        countn = countn + 1
    end do
end function