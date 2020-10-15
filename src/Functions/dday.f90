subroutine dday(yr, c, r, anchor, dd)
  implicit none
  real, intent(in)   :: yr  
  real, intent(out)  :: c, r, dd, anchor

  c = floor(yr / 100)
  r = mod(c, 4.0)
  anchor = 5 * mod(r, 7.0) + 2 ! 2? Tuesday
  dd = mod(floor(yr/12) + mod(yr, 12.0) + floor(mod(yr, 12.0) / 4), 7.0) + anchor

end subroutine dday

