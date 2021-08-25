program Int_MC
    implicit none
    
    ! I = \int_0^3 e^x dx
    
    REAL*8 :: Integrand, Volume_n_1, Int, avg_f, err
    REAL*8, PARAMETER :: Int_res = exp(3d0) - 1d0

    INTEGER :: dim=10, i
    REAL*8, ALLOCATABLE :: rand_array(:)

    ALLOCATE(rand_array(dim))

    OPEN(unit=8, file='MC.dat')

    do
        dim = dim*10
        DEALLOCATE(rand_array)
        ALLOCATE(rand_array(dim))
        
        ! Calling Random Function
        CALL Random_Gen(dim, rand_array)

        rand_array = 3* rand_array    ! changing the limit from [0,1] to [0,3]

        ! Finding the Integrand at those random generated points to get the average
        do i = 1, dim
            rand_array(i) = Integrand(rand_array(i))
        end do

        avg_f = SUM(rand_array) / REAL(dim)

        ! Finding Volume_n-1 (which is just 1D line - x range here)
        Volume_n_1 = 3.0d0

        ! Finally the integration value
        Int = Volume_n_1 * avg_f

        err = ABS(Int - Int_res)

        WRITE(8,*) dim, Int, err
        if (dim > 100000) exit
    end do

end program Int_MC


REAL*8 FUNCTION Integrand(x)
    implicit none

    REAL*8 :: x

    Integrand = EXP(x)
END FUNCTION Integrand