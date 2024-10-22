type suit = S|H|D|C ;;
type card = Card of int * suit ;;

(* which evaluates to true if the hand contains a straight, namely five cards in sequential order, possibly with different suites. *)
let straigth(a,b,c,d,e) = 
  let l = [a;b;c;d;e] in
  let l = List.sort compare l in
  match l with
  | [Card(n1,_);Card(n2,_);Card(n3,_);Card(n4,_);Card(n5,_)] -> n1+1=n2 && n2+1=n3 && n3+1=n4 || n2+1=n3 && n3+1=n4 && n4+1=n5
  | _ -> false
;;

let test = straigth(Card(1,S),Card(2,S),Card(3,S),Card(4,S),Card(5,S)) ;;
Printf.printf "%b\n" test ;;
let test = straigth(Card(6,S),Card(2,S),Card(3,S),Card(4,S),Card(5,S)) ;;
Printf.printf "%b\n" test ;;
let test = straigth(Card(5,S),Card(2,S),Card(4,S),Card(3,S),Card(7,S)) ;;
Printf.printf "%b\n" test ;;

let test = straigth(Card(1,S),Card(3,S),Card(4,S),Card(6,S),Card(7,S)) ;;
Printf.printf "%b\n" test ;;