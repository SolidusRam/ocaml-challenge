let movie_rating v1 v2 v3 =
 (*check if invalid input vote must be on scale 1 to 5*)
  if (v1 < 1 || v1 > 5 || v2 < 1 || v2 > 5 || v3 < 1 || v3 > 5) then "Invalid input"
  else if (v1<3||v2<3||v3<3) then "Mixed Reviews"
  else if (v1+v2+v3 = 15) then "Masterpiece"
  else if (v1+v2+v3 = 14) then "Excellent"
  else if (v1+v2+v3 >= 11) then "Recommended"
  else "Mixed Reviews";;

assert(movie_rating 5 5 5 = "Masterpiece");;
assert(movie_rating 5 5 4 = "Excellent");;
assert(movie_rating 5 5 3 = "Recommended");;
assert(movie_rating 5 5 2 = "Mixed Reviews");;