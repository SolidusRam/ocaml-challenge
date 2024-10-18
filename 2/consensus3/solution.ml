(*The function takes as input 3 functions with the same type,
 and it outputs a function with type:
 consensus3 : 
 ('a -> 'b) * ('a -> 'b) * ('a -> 'b) -> 'a -> 'b option*)

let consensus3 (f1, f2, f3) n =
  let v1 = try Some (f1 n) with _ -> None in
  let v2 = try Some (f2 n) with _ -> None in
  let v3 = try Some (f3 n) with _ -> None in
  match v1, v2, v3 with
  | None, _,_| _, None, _ | _, _, None -> failwith "undefined"
  | Some x, Some y, Some z ->
    if x = y || x = z then Some x
    else if y = z then Some y
    else None;;

(*Tests*)
consensus3 ((fun x -> x), (fun y -> y+4), (fun z -> 5/z)) 1 = Some 5;;
consensus3 ((fun x -> x), (fun y -> y+4), (fun z -> 5/z)) 2 = Some 2;;
consensus3 ((fun x -> x), (fun y -> y+4), (fun z -> 5/z)) 3 = None;;