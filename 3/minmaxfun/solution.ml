type 'a option = None | Some of 'a

(* minmaxfun : (int -> 'a) -> int -> int -> 'a * a' option *)
(*such that minmaxfun f a b computes the minimum and the maximum of f in the range [a,b]. 
If the range is empty, then the function evaluates to None*)

let minmaxfun (f:int -> 'a)(a :int )(b :int ) : ('a * 'a) option = 
  if a > b then None
  else
    let rec aux current min_val max_val =
      if current > b then  Some (min_val, max_val)
      else
        let value = f current in
        aux (current + 1) (min min_val value) (max max_val value)
    in
    let first_val = f a in
    aux (a + 1) first_val first_val
      
(* Test cases *)

let square x = x * x;;
minmaxfun square 2 4;;
minmaxfun square 5 3;;
