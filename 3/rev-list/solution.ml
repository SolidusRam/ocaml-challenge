

let rec rev li= 
match li with
| [] -> []
| h::t -> rev t @ [h];;

rev [1;2;3;4;5];;


