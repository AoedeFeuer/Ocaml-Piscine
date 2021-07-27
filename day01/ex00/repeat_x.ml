let repeat_x n =
  if n = 0 then "" else
  if n > 0
  then begin
    let rec loop n x_str =
      if n > 0 
      then loop (n - 1) ("x" ^ x_str)
      else x_str
    in loop n ""
    end
  else "Error"

let main () =
  print_endline(repeat_x 10);
  print_endline(repeat_x 0);
  print_endline(repeat_x (-1));
  print_endline(repeat_x 1)

let () = main ()