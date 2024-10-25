  (*such that consecutive_even l gives the length of the longest 
  subsequence of l containing only even numbers.*)

    (*if the head is even, increment the accumulator and call the function recursively on the tail*)
      (*if the head is odd, the counter should restart*)
  let consecutive_even l = 
      let rec aux l acc = match l with
          | [] -> acc
        (*if the head is even, increment the accumulator and call the function recursively on the tail*)
        (*else max acc(aux t 0) does *)
          | h::t -> if h mod 2 = 0 then aux t (acc+1) else max acc (aux t 0) 
      in aux l 0;;    
  (*Tests*)




  assert(consecutive_even [] = 0);;
  assert(consecutive_even [1;2;3;4;5;6] = 1);; 
  assert(consecutive_even [1;2;2;3;4;5] = 2);;
  assert(consecutive_even [1;2;3;4;2;5] = 2);;
  assert(consecutive_even [1;2;2;3;4;2;5] = 2);;
  assert(consecutive_even [1;2;2;2;3;4;2;6;5] = 3);;