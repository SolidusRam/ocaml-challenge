type card = Joker | Val of int ;;

let win cp cd = match cp, cd with
  | Joker, Joker -> false
  | Joker, _ -> true
  | _, Joker -> false
  | Val p, Val d -> p > d ;;


assert (win (Val 10) (Val 9) = true) ;;
assert (win (Val 10) (Val 10) = false) ;;
assert (win (Val 10) (Val 11) = false) ;;
assert (win Joker (Val 10) = true) ;;
assert (win Joker Joker = false) ;;
assert (win (Val 10) Joker = false) ;;

