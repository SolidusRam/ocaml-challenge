
let rec gdc a b =
  if a - b = 0 then a
  else if a - b > 0 then gdc (a - b) b
  else gdc a (b - a)

let () = print_endline (string_of_int (gdc 120 25))
