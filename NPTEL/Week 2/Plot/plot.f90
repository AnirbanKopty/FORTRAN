! Fortran don't have any binaries to plot
! To plot, we need to export the x, y data to a .dat file which will then be used to plot using some other software like GNUPlot

! This code plots simple sin(x)

program simple_plot
    implicit none
    
    REAL, PARAMETER :: PI = 4*ATAN(1.0)
    INTEGER :: i
    REAL :: h, x(101), y(101)
    
    ! like x = numpy.linspace(0,2*PI,100)
    h = 2*PI / 100
    x(1) = 0
    do i=2, 101
        x(i) = x(i-1) + h
    end do
    
    y = SIN(x)

    ! Exporting to a .dat file
    OPEN(UNIT=10, FILE="plot.dat")
    do i = 1, 101
        WRITE(10,*) x(i), y(i)
    end do
    CLOSE(UNIT=10)

end program simple_plot
