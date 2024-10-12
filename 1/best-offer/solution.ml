(*best_offer : int option -> int option -> int option -> int option*)

let best_offer a b c =
  let max_of x y = match (x ,y) with
  | Some x, Some y -> Some (max x y)
  | Some x, None -> Some x
  | None, Some y -> Some y
  | None, None -> None
in max_of (max_of a b) c;;

(*Tests*)

assert(best_offer (Some 100) (Some 200) (Some 150) = Some 200);;

assert(best_offer None None None = None);;

assert(best_offer None (Some 300) None = Some 300);;

assert(best_offer (Some 100) None (Some 150) = Some 150);;
