program main
  implicit none
  integer  :: year

  interface
     function leapy(yr)
       logical              :: leapy
       integer, intent(in)  :: yr
     end function leapy
  end interface

  read *, year
  print *, leapy(year)

end program main
