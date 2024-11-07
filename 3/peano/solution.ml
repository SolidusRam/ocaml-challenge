type nat = Z | S of nat

let rec iseven (n :nat) :bool =
  match n with
  | Z -> true
  | S (Z) -> false
  | S (S (n')) -> iseven n';;

(* halve divides n by 2 es. 3/2 =1*)
let rec halve (n :nat) :nat =
  match n with
  | Z -> Z      (* 0/2 = 0 *)
  | S (Z) -> Z  (* 1/2 = 0 *)
  | S (S (n')) -> S (halve n');; (* 3/2 = 1 *)

let rec add (n :nat) (m :nat) :nat =
  match n with
  | Z -> m
  | S (n') -> S (add n' m);; (* 3+2 = 3+1+1 = 2+1+1+1 = 5 *)
  
let rec mul (n :nat) (m :nat) :nat =
  match n with
  | Z -> Z
  | S (n') -> add m (mul n' m);; (* 3*2 = 2+2+2 = 6 *)

let rec equals (n :nat) (m :nat) :bool =
  match (n, m) with
  | (Z,Z) -> true
  | (Z,S _) -> false
  | (S _,Z) -> false
  | (S (n'), S (m')) -> equals n' m';;

  (*less than or equal*)
let rec leq (n:nat) (m:nat) :bool =
  match (n, m) with
  | (Z,_)-> true
  | (_,Z)-> false
  | (S (n'), S (m')) -> leq n' m';;
  