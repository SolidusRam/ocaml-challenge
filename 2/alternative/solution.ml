(*Define a function with type:

( <|> ) : 'a option -> 'a option -> 'a option*)

let ( <|> ) a b = match a with
  | Some x -> Some x
  | None -> b;;

(*Tests*)
assert (Some true <|> Some false = Some true);;
assert (None <|> Some false = Some false);;
assert (Some 3 <|> None = Some 3);;
assert (Some "cat" <|> Some "dog" = Some "cat");;
assert (None <|> Some "dog" = Some "dog");;