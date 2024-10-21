type suit = S|H|D|C ;;
type card = Card of int * suit ;;

(*random hand of 5 cards*)
let rndHand() = 
  let rec aux acc = function
    | 0 -> acc
    | n -> aux (Card(Random.int 13, match Random.int 4 with
        | 0 -> S
        | 1 -> H
        | 2 -> D
        | _ -> C)::acc) (n-1)
    in aux [] 5;;


    
let poker1 (a, b, c, d, e) =
  (* Extract the numeric value of the cards *)
  let value = function
    | Card(n, _) -> n
  in
  let values = [value a; value b; value c; value d; value e] in
  let counts = List.fold_left (fun acc v ->
    if List.mem_assoc v acc then
      let count = List.assoc v acc in
      (v, count + 1) :: List.remove_assoc v acc
    else
      (v, 1) :: acc
  ) [] values in
  List.exists (fun (_, count) -> count = 4) counts;;


    
(* Funzione per verificare se una mano ha 4 carte con lo stesso valore ma semi diversi *)
let poker2 (a, b, c, d, e) =
  (*valore numerico delle carte*)
  let value = function
    | Card(n,_) -> n in 
    
    if value a = value b && value a = value c && value a = value d
  || value a = value b && value a = value c && value a = value e
    (*check if suite is diff*)
    then true

else false;;



(* Test *)
  

let hand = rndHand();;
(*print hand*)
let printHand h = 
  List.iter (function Card(n,s) -> Printf.printf "%d %c\n" n (match s with
    | S -> 'S'
    | H -> 'H'
    | D -> 'D'
    | C -> 'C')) h;;
