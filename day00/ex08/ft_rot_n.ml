let up_case c = 
  c >= 'A' && c <= 'Z'

let low_case c = 
    c >= 'a' && c <= 'z'

let ft_rot_n x rot_str =
  let shift_fun c =
    if up_case c || low_case c
    then begin
      if low_case c
      then char_of_int (int_of_char 'a' + ((int_of_char c - int_of_char 'a' + x) mod 26))
      else char_of_int (int_of_char 'A' + ((int_of_char c - int_of_char 'A' + x) mod 26))
      end
    else c
  in String.map shift_fun rot_str

let main () =
  print_endline (ft_rot_n 1 "abcdefghijklmnopqrstuvwxyz");
  print_endline (ft_rot_n 13 "abcdefghijklmnopqrstuvwxyz");
  print_endline (ft_rot_n 42 "0123456789");
  print_endline (ft_rot_n 2 "OI2EAS67B9");
  print_endline (ft_rot_n 0 "Damned !");
  print_endline (ft_rot_n 42 "");
  print_endline (ft_rot_n 1 "NBzlk qnbjr !")

let () = main ()
