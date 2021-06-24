program fibonacci_goto
    implicit none
    INTEGER :: x_n, x_1, x_2
    REAL :: phi_est
    INTEGER :: n = 3

    x_1 = 1
    x_2 = 1

2   x_n = x_1 + x_2     ! This is how Labelling is done in FORTRAN (labelling is 0-9999)        
    phi_est = x_n/REAL(x_1)
    PRINT *, n, x_n, phi_est
    x_2 = x_1
    x_1 = x_n
    n = n+1
    IF (n<46) GOTO 2    ! Usage of GOTO statament to go to Label 2 (GOTO or GO TO)

    ! This is a way to do loops

end program fibonacci_goto