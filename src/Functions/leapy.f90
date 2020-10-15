function leapy(yr)
  implicit none
  logical              :: leapy
  integer, intent(in)  :: yr

  if (mod(yr, 4) .ne. 0) then
     leapy = .false.
  elseif(mod(yr, 25) .ne. 0) then
     leapy = .true.
  elseif(mod(yr, 16) .ne. 0) then
     leapy = .false.
  else
     leapy = .true.
  endif

end function leapy
