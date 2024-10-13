(*is_even : int -> bool*)

let is_even n = n mod 2 = 0;;

(* Write a function to determine the winner of the game,
 with type:val win : int -> int -> int*)

let win n m = 
  if n <1 || n> 5 || m <1 || m>5 then 0
  else if is_even (n+m) then 1 else -1;;


assert (win 1 2 = -1);;
assert (win 2 2 = 1);;
assert (win 0 2 = 0);;