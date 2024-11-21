let rec sumrange x y =
  if x > y then 0
  else x + sumrange (x + 1) y ;;

(* Test cases *)
sumrange 0 1;;
sumrange 1 3;;
sumrange 3 2;;
