! SHAPE.F90

module shape
  implicit none

    ! private : No access for outside code
    ! public : Can read and write
    real, private :: height = 1
    real, private :: width = 1

    ! Declare your subroutines
    public :: set_shape, get_area

contains
  subroutine set_shape(h, w)
    implicit none
    real, intent(in) :: h, w
    height = h
    width = w
  end subroutine set_shape

  subroutine get_area()
    print *, "Area: ", (height * width)
  end subroutine get_area
end module shape


! SHAPE_MOD.F90

! You can derive one type from another
module shape_mod
  implicit none

  ! Set the super type as abstract
  type, abstract :: shape_m

    ! Sub-types receive these variables
    real :: x, y

  contains

    ! This procedure marked as deferred
    ! will be defined in sub-types
    procedure(shape_area), deferred :: get_area
  end type shape_m

  ! Define that we want to return the defined
  ! area for each shape sub-class
  interface
    function shape_area(this) result(area)
      import :: shape_m
      class(shape_m) :: this
      real :: area
    end function shape_area
  end interface
end module shape_mod


! TRIANGLE_MOD.F90


module triangle_mod
  ! Import shape_mod and all you inherit
  use shape_mod
  implicit none
  type, extends(shape_m), public :: triangle_m
  contains
    ! Define function you will override
    procedure :: get_area
  end type triangle_m

contains

  ! Refer to this triangle and return the area
  function get_area(this) result(area)
    class(triangle_m) :: this
    real :: area
    area = .5 * this%x * this%y
  end function get_area
end module triangle_mod


! MULT_MOD.F90

module mult_mod
  implicit none
  private
  public :: mult

  ! We can define the 2 functions we
  ! will associate with the mult function
  ! depending on the input data types
  interface mult
    procedure mult_real, mult_int
  end interface mult

contains
  real function mult_real( n1,n2 )
    real, intent(in) :: n1,n2
    real :: product
    product = n1 * n2
  end function mult_real

  integer function mult_int( n1,n2 )
    integer, intent(in) :: n1,n2
    integer :: product
    product = n1 * n2
  end function mult_int

end module mult_mod