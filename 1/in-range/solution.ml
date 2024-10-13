(*x in range of a and b*)
let in_range x a b =
  if x>a && x<b then true
  else if x>b && x<a then true
  else false;;

assert (in_range 5 1 10 = true);;
assert (in_range 5 10 1 = true);;
assert (in_range 5 1 5 = false);;