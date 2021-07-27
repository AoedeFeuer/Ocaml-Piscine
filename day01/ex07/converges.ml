let converges func x n =
  let rec loop func x n = 
    if n >= 1
    then loop func (func x) (n - 1)
    else 
      if x = n then true else false
  in loop func x n

let main () =
  if converges (( * ) 2) 2 5
  then print_endline "true"
  else print_endline "false";
  if converges (fun x -> x / 2) 2 3
  then print_endline "true"
  else print_endline "false";
  if converges (fun x -> x / 2) 2 2
  then print_endline "true"
  else print_endline "false"

  let () = main ()