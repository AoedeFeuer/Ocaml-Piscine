let sum (x: float) (y: float) =
  x +. y

let main () =
  print_float (sum 2.1 2.1);
  print_char '\n';
  print_float (sum 0. 2.1);
  print_char '\n';
  print_float (sum 2.1 (-2.1));
  print_char '\n'

let () = main ()