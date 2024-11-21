(*mem x s is true when x belongs to the set s*)
let rec mem (x : 'a ) (s : 'a list) : bool = 
  match s with
  | [] -> false
  | h::t -> if h = x then true else mem x t;;

let rec subseteq xl yl =
  match xl with
  | [] -> true
  | h::t -> if mem h yl then subseteq t yl else false;;


(* seteq is true if xl is equal to yl up to reordering*)
let seteq xl yl = 
  subseteq xl yl && subseteq yl xl;;

let rec dup l =
  match l with
  | [] -> false
  | h::t -> if mem h t then true else dup t;;

let rec mkset l =
  match l with
  | [] -> []
  | h::t -> if mem h t then mkset t else h::(mkset t);; 

let rec union xl yl =
  match xl with
  | [] -> yl
  | h::t -> if mem h yl then union t yl else h::(union t yl);;

let rec inter xl yl =
  match xl with 
  | [] -> []
  | h::t -> if mem h yl then h::(inter t yl) else inter t yl;;

let rec diff xl yl =
  match xl with
  | [] -> []
  | h::t -> if mem h yl then diff t yl else h::(diff t yl);; 


(* dsum xl yl is the disjoint union of xl and yl
dsum : 'a list -> 'a list -> (int * 'a) list*)



let powset xl = 
  let rec pset xl acc = 
    match xl with
    | [] -> acc
    | h::t -> pset t (acc@(List.map (fun x -> h::x) acc) )
  in pset xl [[]];;

  assert (powset [] = [[]]);;
  assert (seteq (powset [1]) [[];[1]]);;
  assert (List.length (powset [1;2]) = 4);;
  assert (List.length (powset [1;2;3]) = 8);;
  assert (List.length (powset [1;2;3;4]) = 16);;