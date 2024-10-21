let tris (a,b,c,d)= 
  (*is true if at least three elements of the list are equal*)
  let three_equal l = 
    let rec count = function
      | [] -> false
      | x::y::z::t -> if x=y && y=z then true else count (y::z::t)
      | _ -> false
      in count (List.sort compare l)
    in three_equal [a; b; c; d]
;;

(* which generates a random quadruple of elements in the range 1..10.*)
let hand ()=
  let rec aux acc = function
    | 0 -> acc
    | n -> aux (Random.int 10::acc) (n-1)
    in aux [] 4;;

  
(* Test *)
let mano = hand();;
Printf.printf "mano = %s\n" (List.fold_left (fun acc x -> acc ^ (string_of_int x) ^ " ") "" mano);;
let mano_tuple = match mano with
  | [a; b; c; d] -> (a, b, c, d)
  | _ -> failwith "Unexpected list length";;

Printf.printf "tris mano = %b\n" (tris mano_tuple);;