(*Define a function with type:*)
(*parrot_trouble : bool -> int -> bool option*)

let parrot_trouble isTalking ore =
  if ore > 23 || ore < 0 then None
  else
  if isTalking && ore < 7 || ore > 20 then Some true
  else Some false
;;
(*Tests*)
assert(parrot_trouble true 6 = Some true);;
assert(parrot_trouble true 25 = None);;

print_endline("All tests passed.");;