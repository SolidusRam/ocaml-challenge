let seven_eleven_doubles() =
(*which throws two random dices d1,d2,
 and returns a triple (b,d1,d2) where b
 is true iff the sum of the two dices is 
 7 or 11, or if the two dices are equal.*)
  let d1 = Random.int 6 + 1 in
  let d2 = Random.int 6 + 1 in
  let b = (d1 + d2 = 7) || (d1 + d2 = 11) || (d1 = d2) in
  (b, d1, d2);;
  