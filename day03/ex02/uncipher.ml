let up_case c = 
  c >= 'A' && c <= 'Z'

let low_case c = 
    c >= 'a' && c <= 'z'

let unrot42 rot_str = 
  let shift_fun c =
    if up_case c || low_case c
    then begin
      if low_case c
      then char_of_int (int_of_char 'z' + ((int_of_char c - int_of_char 'a' - 42) mod 26))
      else char_of_int (int_of_char 'Z' + ((int_of_char c - int_of_char 'A' - 42) mod 26))
      end
    else c
  in String.map shift_fun rot_str 

let uncaesar x rot_str =
  let shift_fun c =
    if up_case c || low_case c
    then begin
      if low_case c
      then char_of_int (int_of_char 'z' + ((int_of_char c - int_of_char 'z' - x) mod 26))
      else char_of_int (int_of_char 'Z' + ((int_of_char c - int_of_char 'Z' - x) mod 26))
      end
    else c
  in String.map shift_fun rot_str

let xor key src_str =
  let shift_fun c =
    if up_case c || low_case c
    then char_of_int (int_of_char c lxor (key mod 26))
    else c
  in String.map shift_fun src_str

let rec ft_uncrypt (src_str: string) func = 
  match func with
  | h :: t -> ft_uncrypt (h src_str) t
  | [] -> src_str

let main () =
  print_endline("CASE 1");
  print_endline(unrot42 "abcde1");
  print_endline(uncaesar 1 "abcde1");
  print_endline(xor 1 "abcde1");
  print_endline(unrot42 (uncaesar 1 (xor 1 "abcde")));
  let func_list = [xor 1;uncaesar 1;unrot42] in
  print_endline (ft_uncrypt "abcde" func_list);
  print_endline("CASE 2");
  print_endline(unrot42 "XfRdE23");
  print_endline(uncaesar 42 "XfRdE23");
  print_endline(xor 21 "XfRdE23");
  print_endline(unrot42 (uncaesar 42 (xor 21 "XfRdE23")));
  let func_list = [xor 21;uncaesar 42;unrot42] in
  print_endline (ft_uncrypt "XfRdE23" func_list)

let _ = main()