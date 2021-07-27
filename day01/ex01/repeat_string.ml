let repeat_string ?str:(str="x") n =
  if n = 0 then "" else
  if n > 0
  then begin
    let rec loop n x_str =
      if n > 1
      then loop (n - 1) (str ^ x_str)
      else x_str
    in loop n str
    end
  else "Error"

let main () =
  print_endline(repeat_string ~str:"Toto" 4);
  print_endline(repeat_string 0);
  print_endline(repeat_string (-1));
  print_endline(repeat_string 2);
  print_endline(repeat_string ~str:"a" 5)

let () = main ()