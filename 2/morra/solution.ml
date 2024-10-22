type winner = Player | Computer | Tie;;

let win (hp, gp) =
  let hc = Random.int 5 in 
  let gc = Random.int 10 in
  (*print computer guess and hand*)
  Printf.printf "Computer's guess: %d\n" gc;
  Printf.printf "Computer's hand: %d\n" hc;
  (*if the guess of the player equals the sum of the two hands, but that of the computer does not, then the winner is the player;
  otherwise, if the computer guesses the sum of the two hands, then the winner is the computer;
  otherwise, there is a tie*)
  let w_points = hp + hc in 
  if w_points = gp && w_points !=gc then Player
  else if w_points = gc then Computer
  else Tie;;

win (2,5);;
win (2,5);;
win (2,5);;