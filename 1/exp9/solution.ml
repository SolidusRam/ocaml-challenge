let square x = x * x;;

(*9th power of x*)
let exp9 x = square (square (square x)) + square(square(square x));;

assert (exp9 2 = 512);;