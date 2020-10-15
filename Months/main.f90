program months
  implicit none
  integer  :: n, month(12)
  logical  :: leap

  leap = .true.

  do n = 1, 12
     if (mod(n, 2) .ne. 0 .and. n .lt. 8) then     ! Pre-August, odd
        month(n) = 31
     elseif (mod(n, 2) .eq. 0 .and. n .ge. 8) then ! Post-July, even
        month(n) = 31
     else
        month(n) = 30
     endif
  enddo

  select case(leap)
     case(.true.)
        month(2) = 29
     case default
        month(2) = 28
  end select

  do n = 1, 12
     print *, month(n)
  enddo

end program months
