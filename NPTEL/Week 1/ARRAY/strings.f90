program string
    implicit none
    CHARACTER, DIMENSION(5) :: s1 = (/ 'h','e','a','b','c' /)
    CHARACTER (LEN=12) :: s2 = 'Hello Again!'
    CHARACTER(19) :: s3 = "What's your name?"
    CHARACTER(30) :: s4

    CHARACTER, PARAMETER :: hey = 'no need to specify count here'
    ! Seems like this is not working as Chapman said!

    s4 = s2(1:5)//' '//s3
    ! So, // is concatenation operator in FORTRAN for Strings

    Print *, s1, ' ', s4, ' ', hey

end program string


! You must know that the dimension and the len is a different thing