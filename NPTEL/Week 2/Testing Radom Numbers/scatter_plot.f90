program scatter_plot
    implicit none
    
    INTEGER :: dim = 1000          ! Set the number of Random Numbers you want here
    INTEGER :: i
    REAL*8, ALLOCATABLE :: rnd_array(:)

    ALLOCATE(rnd_array(dim))

    CALL Random_Gen(dim, rnd_array)

    ! Exporting Plot data
    OPEN(UNIT=13, FILE="scatter_plot.dat", STATUS='REPLACE')
    do i = 1, dim-1
        WRITE(13, *) rnd_array(i), rnd_array(i+1)
    end do

end program scatter_plot

! As can be seen, there is really not so correlation visible in the scatter plot