program leapy
  implicit none
  integer  :: year
  logical  :: leap

  do year = 2000, 2100
     if (mod(year, 4) .ne. 0) then
        leap = .false.
     elseif(mod(year, 25) .ne. 0) then
        leap = .true.
     elseif(mod(year, 16) .ne. 0) then
        leap = .false.
     else
        leap = .true.
     endif

     print *, year, leap

  enddo

end program leapy
