let minmax3 a b c =
  let min_val = min a (min b c) in
  let max_val = max a (max b c) in
  (min_val, max_val);;

assert (minmax3 1 2 3 = (1, 3))