let fibonacci n =
  if n < 0 then (-1) else 
  if n = 0 then 0 else
  if n = 1 then 1 else
    let rec loop index prev cur =
      if index <= 0 then cur 
      else loop (index - 1) (prev + cur) prev
    in loop n 1 0

let main () =
	print_int(fibonacci (-42));
	print_char '\n';
	print_int(fibonacci 1);
	print_char '\n';
	print_int(fibonacci 3);
	print_char '\n';
	print_int(fibonacci 6);
	print_char '\n'

let () = main ()