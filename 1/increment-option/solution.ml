let f x= match x with
  None -> 0
| Some x -> x;;

(* Write a function of type:*)
(* incr_opt : int option -> int option*)

let incr_opt x = match x with
  None -> None
| Some x -> Some (x+1);;

assert(incr_opt None = None);;
assert(incr_opt (Some 5) = Some 6);;

print_endline("All tests passed.");;