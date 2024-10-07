let () = print_endline "Hello, World! Ciao, Mondo!";;

let a= true;;
let b= false;;
(* nand function utilizzando le espressionni logiche not e &&*)
let nand a b = not (a && b);;

(* nand build whit conditional expressions*)
let nand2 a b =
  if a then
    if b then false
    else true
  else true;;

(* nand build whit pattern matching*)
let nand3 a b =
  match (a, b) with
  | (true, true) -> false
  | _ -> true;;

print_endline (string_of_bool (nand a b));;
print_endline (string_of_bool (nand2 a b));;
print_endline (string_of_bool (nand3 a b));;
