program character
    implicit none

    CHARACTER*20 :: f_name
    ! creates a character array of 20 length
    CHARACTER (len=20) :: l_name
    ! Another SynTax

    print *, "What's your name?"
    READ *, f_name, l_name

    print *, "Hello ", f_name, " ", l_name
    ! Isn't the format odd? There are extra whitespaces

    print *, "Hello ", trim(f_name), " ", trim(l_name)
    ! So, trim(string) trims unnecessary whitespaces in a string

end program character