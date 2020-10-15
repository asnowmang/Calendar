program main
  implicit none
  real c, y, r, dday, anchor

  y = 1966
  c = floor(y / 100)
  r = mod(c, 4.0)
  anchor = 5 * mod(r, 7.0) + 2 ! 2? Tuesday
  dday = mod(floor(y/12) + mod(y, 12.0) + floor(mod(y, 12.0) / 4), 7.0) + anchor

  print *, c
  print *, r
  print *, anchor
  print *, dday

end program main
