function leapy(yr)
  implicit none
  logical           :: leapy
  real, intent(in)  :: yr

  if (mod(yr, 4.0) .ne. 0) then
     leapy = .false.
  elseif(mod(yr, 25.0) .ne. 0) then
     leapy = .true.
  elseif(mod(yr, 16.0) .ne. 0) then
     leapy = .false.
  else
     leapy = .true.
  endif

end function leapy
