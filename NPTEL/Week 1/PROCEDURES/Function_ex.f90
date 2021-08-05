program norm
    implicit none
    REAL :: a, x,y,z, mynorm

    PRINT *, 'Enter 3 components of a vec to find its norm :'
    READ *, x,y,z
    
    a = mynorm(x,y,z)               ! Function calling
    PRINT *, "The norm is :", a
    
end program norm

! Defining a function in FORTRAN
REAL FUNCTION mynorm(x,y,z) RESULT(res)
    IMPLICIT none
    REAL, INTENT(IN) :: x,y,z          ! INTENT(IN) makes sure that these variables are input variables and can not be changed
    
    res = SQRT(x**2 + y**2 + z**2)

END FUNCTION mynorm

! ! or
! REAL FUNCTION mynorm(x,y,z)           ! So, RESULT(<var>) declares a <var> to be the output
!     IMPLICIT none
!     REAL, INTENT(IN) :: x,y,z

!     mynorm = SQRT(x**2 + y**2 + z**2) ! Otherwise, you must set the function name as the output variable

! END FUNCTION mynorm


! Note that FUNCTIONS are actually treated as Variables in FORTRAN

! Note, if there is an extra parameter in the FUNCTION definition and we don't use that, then it gives an warning only.