type vote = StrongReject | WeakReject | WeakAccept | StrongAccept

(* The exam is passed if at least two committee members support acceptance (either weakly or strongly), 
  unless the third member gives a strong reject, in which case the candidate fails.*)

let decide_exam v1 v2 v3 =
  if v1 = StrongReject || v2 = StrongReject || v3 = StrongReject then false
  else if (v1 = StrongAccept || v1 = WeakAccept) then
    if (v2 = StrongAccept || v2 = WeakAccept) then
      if v3 = StrongReject then false
      else true
    else if(v3 = StrongAccept || v3 = WeakAccept) then true
      else false
  else if (v2 = StrongAccept || v2 = WeakAccept) then
    if (v3 = StrongAccept || v3 = WeakAccept) then true
    else false
  else false;;    

assert(decide_exam StrongAccept WeakReject WeakReject = false);;
assert(decide_exam WeakReject StrongAccept WeakReject = false);;
assert(decide_exam WeakReject WeakReject StrongAccept = false);;
assert(decide_exam WeakAccept WeakAccept WeakReject = true);;

print_endline "All tests passed.";;