# DO Loop in FORTRAN

Syntax is like below
```FORTRAN
DO
    ! repeatative code-block
END DO
```
alternative of `break` statement in FORTRAN :
`EXIT`  
alternative of `continue` statement in FORTRAN :
`CYCLE`


alternative to `for` loop in FORTRAN :
```FORTRAN
DO var=start, stop, increment
    repeatative code-block
END DO
```

Conditional loop

```FORTRAN
DO WHILE (condition)
    repeatative code-block
END DO
```
start, stop, increment are all INTEGERS
not boolean or conditions

## Implied DO Loop

```FORTRAN
! Use an implied do loop to print each row
    print "(5i2)", ( array(m), m = 1,5 )
```

This will result as:  
`array(1) array(2) array(3) array(4) array(5)`  
(as integer values of length 2)