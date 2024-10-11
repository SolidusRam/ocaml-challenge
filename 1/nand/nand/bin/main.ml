let () = print_endline "Hello, World! Ciao, Mondo!";;

(* nand function utilizzando le espressionni logiche not e &&*)
let nand a b = not (a && b)

(* nand build whit conditional expressions*)
let nand2 a b =
  if a then
    if b then false
    else true
  else true

(* nand build whit pattern matching*)
let nand3 a b =
  match (a, b) with
  | (true, true) -> false
  | _ -> true
