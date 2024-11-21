(* Implement the characteristic function for the empty set *)
let fi_0 x =
  if x < 0 then failwith "Undefined for negative integers"
  else 0

(* Implement the characteristic function for the set {0, 1, 2} *)
let fi_1 x =
  if x < 0 then failwith "Undefined for negative integers"
  else if x = 0 || x = 1 || x = 2 then 1
  else 0

(* Implement the characteristic function for the set {x | 0 < x < 100} *)
let fi_2 x =
  if x < 0 then failwith "Undefined for negative integers"
  else if x > 0 && x < 100 then 1
  else 0

(* Implement the characteristic function for the set {x | false} *)
let fi_3 x =
  if x < 0 then failwith "Undefined for negative integers"
  else 0

(* Implement the characteristic function for the set {x | ∀y. x + y ≥ x} *)
let fi_4 x =
  if x < 0 then failwith "Undefined for negative integers"
  else 1

(* Implement the characteristic function for the set {x | ∃y. x = y + y} *)
let fi_5 x =
  if x < 0 then failwith "Undefined for negative integers"
  else if x mod 2 = 0 then 1
  else 0

(* Implement the characteristic function for the set {x | ∃y. y = x + x} *)
let fi_6 x =
  if x < 0 then failwith "Undefined for negative integers"
  else 0

(* Implement the characteristic function for the set {x | ∃y. x < y} *)
let fi_7 x =
  if x < 0 then failwith "Undefined for negative integers"
  else 1

(* Implement the characteristic function for the set {x | ∃y. x * x = y} *)
let fi_8 x =
  if x < 0 then failwith "Undefined for negative integers"
  else 1

(* Implement the characteristic function for the set {x | ∃y. y < 3 ∧ 7 < x < y < 20} *)
let fi_9 x =
  if x < 0 then failwith "Undefined for negative integers"
  else 0

(* Implement the characteristic function for the set {x | x < 50 ∧ ∃y. x = y + y} *)
let fi_10 x =
  if x < 0 then failwith "Undefined for negative integers"
  else if x < 50 && x mod 2 = 0 then 1
  else 0

(* Implement the characteristic function for the set {z | ∃x. z = 2x ∧ 0 < 2x < 50} *)
let fi_11 z =
  if z < 0 then failwith "Undefined for negative integers"
  else if z mod 2 = 0 && z > 0 && z < 50 then 1
  else 0

(* Implement the characteristic function for the set {z | ∃x, y. z = x + y ∧ x * y ≤ 20} *)
let fi_12 z =
  if z < 0 then failwith "Undefined for negative integers"
  else 1

(* Implement the characteristic function for the set {x | ∀y. y < x → y < 2} *)
let fi_13 x =
  if x < 0 then failwith "Undefined for negative integers"
  else if x <= 2 then 1
  else 0
  
(* Implement the characteristic function for the set {x | ∀y. (x mod y = 0) → (y=1 ∨ y=x) } *)
let fi_14 x =
  if x < 0 then failwith "Undefined for negative integers"
  else
    let rec is_prime n i =
      if i * i > n then true
      else if n mod i = 0 then false
      else is_prime n (i + 1)
    in if x = 1 || is_prime x 2 then 1
    else 0