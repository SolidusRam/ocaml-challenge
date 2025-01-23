(*reverse of a list*)
let rec rev l =
  let rec aux acc = function
    | [] -> acc
    | h::t -> aux (h::acc) t
  in aux [] l

(*knife function*)

let rec knife (l : 'a list) (i : int) : 'a list * 'a list =
  let rec aux i left right = function
    | [] -> (rev left, rev right)
    | h::t -> if i <= 0 then aux (i - 1) left (h::right) t
              else aux (i - 1) (h::left) right t
  in aux i [] [] l



(* Tests *)
let () =
  assert (knife [1;2;3;4;5;6] 3 = ([1;2;3], [4;5;6]));
  assert (knife ['b';'r';'e';'a';'d'] 3  = (['b';'r';'e'], ['a';'d']));
  assert (knife [] 0 = ([], []));
  assert (knife ["miss"; "me"] 2  = (["miss"; "me"], []));
  assert (knife ["oops"] (-1)  = ([], ["oops"]));
  print_endline "All tests passed."