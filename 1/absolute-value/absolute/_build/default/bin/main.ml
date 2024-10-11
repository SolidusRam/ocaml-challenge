(* function int-> int x valore assoluto di x*)

let assoluto x = 
  if x < 0 then -x
  else x;;

(* print assoluto -5*)
print_int (assoluto (-20));;
print_newline();;
