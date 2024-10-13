let hot () =
  let bit = Random.int 2 in
  match bit with
  | 0 -> "head"
  | 1 -> "tail"
  | _ -> failwith "whatever" ;;

let () = print_endline (hot ())

