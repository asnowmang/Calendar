program main
  implicit none
  real  :: year
  real  :: c, r, anchor, dd

! Initialize the functions  
  interface
     function leapy(yr)
       logical           :: leapy
       real, intent(in)  :: yr
     end function leapy
  end interface

  interface
     subroutine dday(yr, c, r, anchor, dd)
       real, intent(in)   :: yr
       real, intent(out)  :: c, r, anchor, dd
     end subroutine dday
  end interface
       
  read *, year
  
  print *, leapy(year)

  call dday(year, c, r, anchor, dd)

  print *, c, r, anchor, dd

end program main
