program months
  implicit none
  integer  :: n, month(12)
  logical  :: leap

  leap = .true.

  do n = 1, 12
     if (n .eq. 2) then
        select case(leap)
        case(.true.)
           month(n) = 29
        case default
           month(n) = 28
        end select             
     elseif (mod(n, 2) .eq. 0 .and. n .lt. 8) then
        month(n) = 30
     elseif (mod(n, 2) .ne. 0 .and. n .lt. 8) then
        month(n) = 31
     elseif (mod(n, 2) .eq. 0 .and. n .ge. 8) then
        month(n) = 31
     else
        month(n) = 30
     endif

     print *, month(n)
  enddo
  
end program months
