PROGRAM test
    ! implicit none
    ! if I don't use the above command, then as we know, 'i-n' are INTEGER and rest are REAL without any declaration, check below :

    REAL, PARAMETER :: a_constant = 456165

    i = 3 + 2.
    PRINT *, "i = ", i      ! Note that i stands for integers

    a = 3 + 2.
    PRINT *, "a = ", a      ! Check that a stands for real

    ! REAL, PARAMETER :: a_constant = 4932169
    ! (You can see variable/constant declaration can not be done at a later part of FORTRAN code)

    ! a_constant = 454
    ! trying to change a constant "PARAMETER" which is not permitted, occurred an error

    PRINT *, "a_constant = ", a_constant

    PRINT *, "undeclared variables : ", a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p

END PROGRAM test
