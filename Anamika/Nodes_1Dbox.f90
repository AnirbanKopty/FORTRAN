program Nodes_1Dbox
    use rootfinding
    use sort
    implicit none
    INTEGER :: n, i, dim_arr, count_node = 1
    REAL, ALLOCATABLE :: roots_finder(:)
    REAL, PARAMETER :: PI = 4*ATAN(1.0)
    ! REAL :: New_Raph
    
    PRINT *, "Enter n (INT) for the wave function of a particle in 1D box with form : sin(nx), n = "
    READ (*,"(i4)") n

    dim_arr = 5*n                                       ! Taking more random points (to avoid having two random numbers in same
                                                        ! region, missing nodes)
    ! The more the better - less chance there can be mistakes
    ALLOCATE(roots_finder(dim_arr))               
    
    do i = 1, dim_arr
        CALL RANDOM_NUMBER(roots_finder(i))
    end do

    ! scaling to fit range
    roots_finder = roots_finder * PI
    
    ! Time to use Newton_Raphson to get the nodes
    do i = 1, dim_arr
        roots_finder(i) = New_Raph(psi, roots_finder(i), 10.0**(-5))
    end do
    
    ! Lowering precision, since the numbers will be close but not exactly equal
    ! since there is no ROUNDing function in Fortran, I use this
    roots_finder = INT(roots_finder * 1000) / 1000.0

    ! Discarding the values which are outside the range - these values occur when the initial random point starts at a location
    !near to a maxima, such that its slope carries the point (in the next iteration in Newton-Raphson) to a further region 
    !outside the scope
    do i = 1, dim_arr
        if (roots_finder(i) <= 0 .OR. roots_finder(i) >= PI) roots_finder(i)=0
    end do

    ! Counting #nodes by counting #unique roots
    ! To do so, we first sort the array
    CALL sort_ascend(roots_finder, dim_arr)

    ! counting unique values
    do i = 2, dim_arr
        if (roots_finder(i) /= roots_finder(i-1)) then
        count_node = count_node + 1
        end if
    end do

    PRINT "(a,i4)", "So, finally, the #nodes for the problem is (discarding the endpoints) = ", count_node-2
    
    DEALLOCATE(roots_finder)

    contains
        function psi(x)
            implicit none
            REAL :: psi, x
        
            psi = SIN(n * x)        ! i.e. L = pi
        end function
end program Nodes_1Dbox