let rec merge : int list -> int list -> int list =
  fun l1 l2 ->
    match (l1,l2) with
    | ([],l) -> l
    | (l,[]) -> l
    | (h1::t1,h2::t2) ->
      if h1 < h2 then h1::(merge t1 l2)
      else h2::(merge l1 t2);;

let rec halve l =
  let rec aux i left right = function
    | [] -> (left, right)
    | h::t -> if i mod 2 = 0 then aux (i + 1) (h::left) right t
              else aux (i + 1) left (h::right) t
  in aux 0 [] [] l;;

let rec merge_sort : int list -> int list = 
  fun l ->
    match l with
    | [] -> []
    | [x] -> [x]
    | _ ->
      let (l1,l2) = halve l in
      merge (merge_sort l1) (merge_sort l2);;

assert (merge [1;4;5] [2;3;6] = [1;2;3;4;5;6]);;
assert (merge [7] [2;3;6] = [2;3;6;7]);;
assert (merge [7] [] = [7]);;


assert (halve [1;3;5;8;-2;6] = ([1;3;5], [8;-2;6]));;
assert (halve [1;3] = ([1], [3]));;
assert (halve [1;3;5] = ([1], [3;5]));;

assert (merge_sort [1;3;5;8;-2;6] = [-2;1;3;5;6;8]);;