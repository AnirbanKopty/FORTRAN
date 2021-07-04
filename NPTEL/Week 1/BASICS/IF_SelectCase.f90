program IF_SelectCase
    implicit none
    integer :: age = 16

    ! IF SYNTAX
    ! IF (condition) statement
    ! The above is for one line statement

    ! IF_ELSE Block
    if ((age >= 5) .and. (age <= 6)) then
      print *, "Kindergarten"
    else if ((age >= 7) .and. (age <= 13)) then
      print *, "Middle School"
    else if ((age >= 14) .and. (age <= 18)) then
      print *, "High School"
    else
      print *, "Stay Home"
    end if
    
    ! SelectCase
    select case (age)
    case (5)
      print *, "Kindergarten"
    case (6:13)                 ! Ranges
      print *, "Middle School"
    case (14,15,16,17,18)       ! Selected values
      print *, "High School"
    case default                ! Default case
      print *, "Stay Home"      ! Haha
    end select

end program IF_SelectCase

! if we want to name IF statements that is done by the syntax
! <name>: IF (condition) THEN
! ...
! END IF <name>