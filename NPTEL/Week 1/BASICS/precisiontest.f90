program precision_test
    implicit none

    real :: float_num = 1.111111111111111
    real :: float_num2 = 1.111111111111111
    double precision :: dbl_num = 1.1111111111111111d+0
    double precision :: dbl_num2 = 1.1111111111111111d+0

    ! You get 6 digits of precision by default
    print "(f17.15)", float_num + float_num2
    
    ! Doubles are accurate to 15 digits
    print "(f18.16)", dbl_num + dbl_num2

end program precision_test