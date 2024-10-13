(*guess5 : int -> bool * int*)
let guess5 n =
  (*n is in range 1 to 5?*)
  if n < 1 || n > 5 then failwith "Input out of range"
  else
    (*generate random number between 1 and 5*)
    let num = Random.int 5 + 1 in
    (*returns a pair (b,r), where b is true if n equals to r.*)
    (n = num, num);;

