! This program will always produce same random numbers and thus the same output (not seeded random number)

program Int_acc_rej
    implicit none

    ! I = \int_0^3 e^x dx

    REAL*8 :: Int, rnd
    REAL*8, PARAMETER :: Int_res = EXP(3.0d0) - 1.0d0

    INTEGER :: i, inc, N=10                       ! inc = the number of random numbers included in the region of interest
    REAL*8 :: x, y


    OPEN (unit=8, file='acc_rej_same.dat')

    do
        inc = 0
        N = N*10

        do i = 1, N
            ! Calling Random Function
            CALL RANDOM_NUMBER(rnd)
            x = 3.0d0 * rnd               ! changing the x limit from [0,1] to [0,3]

            CALL RANDOM_NUMBER(rnd)
            y = EXP(3.0d0) * rnd          ! changing the y limit from [0,1] to [0,EXP(3)]

            ! Covering the whole range of integration area 3*EXP(3)

            if (y <= EXP(x)) then
                inc = inc + 1
            end if
        end do

        Int = 3.0d0*EXP(3.0d0) * (REAL(inc)/REAL(N))
        ! Int = inc/N * area             ! Remember the Fortran Arithmatics, if inc < N then inc/N = 0

        WRITE (8, *) N, Int, ABS(Int - Int_res)

        if (N > 100000) exit
    end do

end program Int_acc_rej