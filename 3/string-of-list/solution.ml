
(* val string_of_list : int list -> string = <fun> *)
let rec string_of_list l = 
  match l with
  | [] -> ""
  | [x] -> string_of_int x
  | h::t -> string_of_int h ^ ";" ^ string_of_list t;;

string_of_list [1;2;3];;