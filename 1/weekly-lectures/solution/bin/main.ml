type weekday = Mo | Tu | We | Th | Fr
type course  = ALF | LIP

let islecture weekday course =
  match (weekday, course) with
  | (Tu, ALF) -> true
  | (Th, ALF) -> true
  | (Fr, ALF) -> true
  | (We, LIP) -> true
  | (Th, LIP) -> true
  | _ -> false