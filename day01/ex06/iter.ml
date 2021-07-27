let iter func x n =
  if n < 0 then (-1) else 
  if n = 0 then x else
  let rec loop func x n = 
    if n >= 1
    then loop func (func x) (n - 1)
    else x
  in loop func x n

let main () =
  print_int(iter (fun x -> x * x) 2 4);
  print_char '\n';
  print_int(iter (fun x -> x * 2) 2 4);
  print_char '\n'

  let () = main ()