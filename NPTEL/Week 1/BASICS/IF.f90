program IF
    implicit none
    ! IF SYNTAX
    ! IF (condition) statement
    ! The above is for one line statement

    INTEGER x,y         ! You can notice :: is optional
    READ *, x, y

    IF (x<y) THEN
        PRINT *, '1st no is smaller'
    ELSEIF (x == y) THEN
        PRINT *, 'both are equal'
    ELSE
        PRINT *, '2nd no is smaller'
    END IF

end program IF

! if we want to name IF statements that is done by the syntax
! <name>: IF (condition) THEN
! ...
! END IF <name>