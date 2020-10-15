function leapy(year)
  implicit none
  integer              :: leapy
  integer, intent(in)  :: year

  if (mod(year, 4) .ne. 0) then
     leapy = .false.
  elseif(mod(year, 25) .ne. 0) then
     leapy = .true.
  elseif(mod(year, 16) .ne. 0) then
     leapy = .false.
  else
     leapy = .true.
  endif

end function leapy
