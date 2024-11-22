
(*if the index i is within the bounds of the list, then it evaluates to a pair (x,l'), where x is the element of l at index i, and l' is the list obtained by removing x from l';
otherwise, the evaluation throws a failure exception.*)

let rec extract i l =
  match (i,l) with
  | (0,h::t) -> (h,t)
  | (i,h::t) when i > 0 ->
    let (x,l') = extract (i-1) t in
    (x,h::l')
  | _ -> failwith "Out of bounds";;


(* Test cases *)
extract 0 [1;2;3];;
extract 1 [1;2;3];;
extract 2 [1;2;3];;
extract 3 [1;2;3];;