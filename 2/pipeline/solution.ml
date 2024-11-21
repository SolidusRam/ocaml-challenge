let double x = 2 * x
let square x = x * x

(*Write an infix operator (|>) that behaves like the Unix pipe operator, i.e. it allows you to write function applications in a left-to-right manner.*)

let (|>) x f = f x;;

assert(3 |> double = 6);;
assert(3 |> square = 9);;
assert(3 |> square |> double = 18);;
assert(3 |> double |> square = 36);;
assert(3 |> double |> square |> double = 72);;
assert("hello" |> String.trim |> String.uppercase_ascii = "HELLO");;