
(*mux2 : bool -> bool -> bool -> bool*)
(* mux2 : bool -> bool -> bool -> bool
such that mux2 s0 a b equals to a if s0 is true, otherwise it equals to b.*)

let mux2 s0 a b =
  if s0 then a
  else b;;
  
(* whit logic connectives *)

let mux2C s0 a b =
  (s0 && a) || ((not s0) && b);;

(* pattern maching*)

let mux2P s0 a b =
  match s0 with
  | true -> a
  | false -> b;;

(*mux4 : bool -> bool -> bool -> bool -> bool -> bool -> bool*)
(*such that mux4 s1 s0 a0 a1 a2 a3 equals to ai 
if s1 s0 is the binary encoding of i*)

let mux4 s1 s0 a0 a1 a2 a3 =
  if s1 then
    if s0 then a3
    else a2
  else
    if s0 then a1
    else a0;;


(*print test mux2*)
assert(mux2 false false true = true);;
assert(mux2C false true true = true);;
assert(mux2P false true true = true);;

assert(mux4 false false false true false true = false);;
assert(mux4 false true false true false true = true);;
assert(mux4 true false false true false true = false);;
assert(mux4 true true false true false true = true);;
let () =print_endline "All tests passed";;
