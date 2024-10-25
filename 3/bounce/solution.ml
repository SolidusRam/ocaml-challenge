(*The function takes as input an integer, 
and it outputs a function from integers to integers.
The output function bounce n is periodic with period 2 n,
and it has the behaviour described by the following graph
 (with n=3). *)

let bounce n = fun x -> 
  let x = x mod (2*n) in
  if x < n then x else 2*n - x - 1;;