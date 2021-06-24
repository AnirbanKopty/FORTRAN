! This is a program in FORTRAN90 about the syntax and some basic introductions

PROGRAM firstprogram
    IMPLICIT NONE
    ! "Assumes nothing about variable names
    ! If not declared, FORTRAN will assume names starting with "I-N" are INTEGERS,
    ! while others, "A-H" and "O-Z" are REAL

    REAL :: some_variable
    ! So, this is how we declare the variables, using :: sign
    ! NOTE: in FORTRAN variables are Case-InSenSitive

    ! There are 5 types of Data types in FORTRAN
    ! INTEGER, REAL, COMPLEX, LOGICAL, CHARACTER
    ! COMPLEX numbers are like in the form (a,b)
    ! LOGICAL has two types .TRUE. or .FALSE.
    ! (You can guess the reason for the dots in the LOGICAL as FORTRAN is Case-Insensitive)

    REAL, PARAMETER :: pi = 3.14159
    ! This "PARAMETER" attribute means this is a constant, we can not change the value
    !i.e. assign a new value to this parameter throughout the code

    ! FORTRAN is like C in arithmatrics
    INTEGER :: k = 5
    PRINT *, k/2, k/2.0
    ! 5/2 = 2 not 2.5, as they are INTEGERs, we can handle this by
    ! INT(5)/2 or 5.0/2 (in case of k/2, it will be REAL(k)/2 or k/2.0)

    ! Some Conversion methods
    ! REAL(n) : Converts to real
    ! INT(x)  : Truncate x to Integer
    ! NINT(x) : Rounds of to nearest Integer
    ! AINT(x) : Real expn. converted & truncated result remains real
    ! ANINT(x): Nearest whole real
    ! ABS(x)  : Absolute value of Real x
    ! IABS(n) : Absolute value of Integer n

    ! Some methods
    ! MAX(x,y,...) : Returns maximum of the arguments
    ! MIN(x,y,...) : Returns minimum of the arguments
    ! MOD(x,y)     : Returns x modulo y (% sign in not the modulo here in FORTRAN)

    ! Numerical Functions
    ! SQRT, EXP, LOG, LOG10, SIN, COS, TAN, ASIN, ACOS, ATAN

    ! LOGICAL operators
    ! (for all types)
     ! == or .EQ.
     ! /= or .NE. (not != since ! is used to write comments)
    ! (for only INTEGERs and REALs)
     ! < or .LT. | > or .GT.
     ! <= or .LE. | >= or .GE.
     ! .NOT. | .AND. | .OR.

    PRINT *, 'A String asking for an input'
    ! This is how to print something, note that there is an asterisk and a comma
    READ *, some_variable
    ! This is how some input is taken and assigned to a predefined variable
    PRINT *, 'Your input variable is : ', some_variable
    ! Now that 'asterisk,*' indicates that the things written afterwards are in free format

    ! Otherwise, for formatted output, check the next formattedoutput.f90 file

END PROGRAM firstprogram
