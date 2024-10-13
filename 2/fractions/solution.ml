
(* true when its a positive fraction *)
(* if denominator is 0 then is not a fraction*)
let is_posfrac (a, b) = 
  if b = 0 then false
  else a > 0 && b > 0

let compare_posfrac (a, b) (c, d) = 
  (*check if fractions are positive*)
  if not (is_posfrac (a, b) && is_posfrac (c, d)) then failwith "Not a positive fraction"
  (*0 if the fraction are equal*)
  else if a * d = c * b then 0
  (*1 if the first fraction is greater than the second*)
  else if a * d > c * b then 1
  (*-1 otherwise*)
  else -1;;

assert (compare_posfrac (1, 2) (2, 4) = 0);;
assert (compare_posfrac (1, 2) (1, 3) = 1);;
assert (compare_posfrac (1, 2) (2, 3) = -1);;

let compare_frac (a,b) (c,d) = 
  if a * d = c * b then 0
  else if a * d > c * b then 1
  else -1;;