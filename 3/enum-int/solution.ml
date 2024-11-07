
(* val enum_int : int -> int = <fun> *)
(*which maps each natural number to an integer, 
producing the following enumeration*)

(* 0 -1 1 -2 2 -3 3 ...*)
let enum_int n =
  if n mod 2 = 0 then n / 2
  else - (n / 2 + 1);;

(* Test *)

  


assert (List.init 10 enum_int = [0; -1; 1; -2; 2; -3; 3; -4; 4; -5]);;
