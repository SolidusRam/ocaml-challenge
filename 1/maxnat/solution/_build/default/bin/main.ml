let max_nat x y = 
  if x < 0 || y < 0 then
    failwith "Negative number"
  else
  if x > y then x
  else y;;

(* Test cases *)
assert(max_nat 2 5 = 5);;
assert(max_nat 5 2 = 5);;
assert(try max_nat (-2) 5 |> fun _ -> false with _ -> true);;
assert(try max_nat 2 (-5) |> fun _ -> false with _ -> true);;
assert(try max_nat (-2) (-5) |> fun _ -> false with _ -> true);;