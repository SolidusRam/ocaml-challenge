(*funzione xor con i connettivi logici*)
let xor a b = (a || b) && not (a && b);;

(*con espressioni condizionali*)
let xor2 a b =
  if a then
    if b then false
    else true
  else b;;

(*con pattern matching*)
let xor3 a b =
  match (a, b) with
  | (true, true) -> false
  | (false, false) -> false
  | _ -> true;;