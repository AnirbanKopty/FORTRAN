program recursive
    implicit none
    INTEGER :: m=3, fact

    fact = factorial(m)

    PRINT *, fact

    contains
        recursive function factorial(n) result(o)
            INTEGER :: n, o
            if (n == 0 .or. n == 1) then
                o = 1
                else
                o = n * factorial(n - 1)
            end if
        end function

end program recursive