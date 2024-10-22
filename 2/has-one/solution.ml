let rec has_one n =
  if n = 0 then false
  else if n mod 10 = 1 then true
  else has_one (n / 10);;

has_one 10;;
has_one 12;;
has_one 22;;
has_one 1000;;
has_one 1001;;