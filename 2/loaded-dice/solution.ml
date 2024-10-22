(*load is the amount of percentage of 6*)
let dice load= 
  (*random number from 1 to 100*)
  let r = Random.int 100 +1 in
  if load >=100 then 6
  else if load <= 0 then Random.int 5 + 1
  else
    if r < load then 6
    else Random.int 5 + 1
  ;;
print_int (dice 100);;
print_newline();;
print_int (dice 50);;
print_newline();;
print_int (dice 0);;
print_newline();;