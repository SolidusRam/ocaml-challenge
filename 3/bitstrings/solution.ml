type bitstring = E | Z of bitstring | U of bitstring

(* E is the empty string, Zs is a string made by 0 followed by s
  U s is the string made by 1 followed by s*)

let rec string_of_bitstring b =
  match b with
  |  E -> "" (*caso base*)
  |  Z s -> "0" ^ string_of_bitstring s
  |  U s -> "1" ^ string_of_bitstring s

let rec len b =
  match b with
  | E -> 0
  | Z s -> 1 + len s
  | U s -> 1 + len s

let rec countZ b =
  match b with
  | E -> 0
  | Z s -> 1 + countZ s
  | U s -> countZ s

let rec countU b=
  match b with
  | E -> 0
  | Z s -> countU s
  | U s -> 1 + countU s

(*concatenate 2 bitstrings *)
let rec concat b1 b2 =
  match b1 with
  | E -> b2
  | Z s -> Z (concat s b2)
  | U s -> U (concat s b2)

let equals b1 b2 = 
  string_of_bitstring b1 = string_of_bitstring b2

(* computes the tail of a bitstring*)
let tl b = 
  match b with
  | E -> E
  | Z s -> s
  | U s -> s

let rec prefix s1 s2 =
  match s1, s2 with
  | E, _ -> true
  | _, E -> false
  | Z s1', Z s2' -> prefix s1' s2'
  | U s1', U s2' -> prefix s1' s2'
  | _, _ -> false

let rec substring s1 s2 =
  prefix s1 s2 || substring s1 (tl s2)
  
  
  

let str = U (Z (U (Z (Z E)))) (* 10100 *)
let str2 = U (Z (U E)) (* 101 *)

let () = print_endline (string_of_bitstring str)
let () = print_endline (string_of_bitstring str2)
let () = print_endline (string_of_int (len str))
let () = print_endline (string_of_int (countZ str))
let () = print_endline (string_of_int (countU str)) 
let () = print_endline (string_of_bitstring (concat str str2))
let () = print_endline (string_of_bitstring (tl str))
let () = print_endline (string_of_bool (substring str2 str))