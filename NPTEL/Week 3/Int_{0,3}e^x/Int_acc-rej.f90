program Int_acc_rej
    implicit none

    ! I = \int_0^3 e^x dx

    REAL*8 :: Integrand, Int, area = 3*EXP(3d0)
    REAL*8, PARAMETER :: Int_res = EXP(3d0) - 1d0

    INTEGER :: dim = 10, i, inc                       ! inc = the number of random numbers included in the region of interest
    REAL*8, ALLOCATABLE :: rand_array(:, :)

    ALLOCATE (rand_array(dim, 2))

    OPEN (unit=8, file='MC_acc_rej.dat')

    do
        inc = 0
        dim = dim*10
        DEALLOCATE (rand_array)
        ALLOCATE (rand_array(dim, 2))

        ! Calling Random Function
        CALL Random_Gen(dim*2, rand_array)
        ! Note that, we can populate the 2D array by 1D array population method
        !reason being that FORTRAN stores the array columnwise, i.e. array(1,2), array(3,1)

        ! Covering the whole range of integration area 3*EXP(3)
        rand_array(:, 1) = 3*rand_array(:, 1)              ! changing the x limit from [0,1] to [0,3]
        rand_array(:, 2) = EXP(3d0)*rand_array(:, 2)       ! changing the y limit from [0,1] to [0,EXP(3)]

        do i = 1, dim
            if (rand_array(i, 2) <= Integrand(rand_array(i, 1))) inc = inc + 1
        end do

        Int = (REAL(inc)/REAL(dim))*area

        WRITE (8, *) dim, Int, ABS(Int - Int_res)

        if (dim > 100000) exit
    end do

end program Int_acc_rej

REAL*8 FUNCTION Integrand(x)
    implicit none

    REAL*8 :: x

    Integrand = EXP(x)
END FUNCTION Integrand
