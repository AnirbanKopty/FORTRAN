program array
    implicit none
    ! Declaring Array
    REAL :: a(0:100), b(5,5,5)
    ! or
    REAL, DIMENSION (4,5) :: c
    integer :: i
    real :: arr1(10) = (/(i, i=2,20, 2)/) !or
    real :: arr2(10) = [(i, i=2,20, 2)]

    ! To access an element of array
    a(55) = 3
    b(1,4,2) = 1.54
    c(2:4,3) = 4.64

    
    ! Some Properties
    ! Rank : Dimension
    ! Bounds : Upper and Lower Limits
    ! Dimension's extent : dimension lenth
    ! Size : No of elements
    ! Shape : like the declarations (within the brackets)
    
    PRINT *, a(45:55), '--------------'
    PRINT *, b(1,:,1:3), '--------------'
    PRINT *, c(3:,3)
    
    ! SUM(x[,n])        ! Sums all elements of x
    ! PRODUCT(x[,n])    ! Product all elements of x
    ! TRANSPOSE(x)
    ! DOT_PRODUCT(x,y)
    ! MATMUL(x,y)       ! Matrix Multiplication
    
    ! list comprehension in Fortran
    print *, arr1
    print *, arr2
end program array

! So, in FORTRAN, undeclared variables are not 0 or NaN, rather have garbage values
