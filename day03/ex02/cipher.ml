let up_case c = 
  c >= 'A' && c <= 'Z'

let low_case c = 
    c >= 'a' && c <= 'z'

let rot42 rot_str = 
  let shift_fun c =
    if up_case c || low_case c
    then begin
      if low_case c
      then char_of_int (int_of_char 'a' + ((int_of_char c - int_of_char 'a' + 42) mod 26))
      else char_of_int (int_of_char 'A' + ((int_of_char c - int_of_char 'A' + 42) mod 26))
      end
    else c
  in String.map shift_fun rot_str

let caesar x rot_str =
  let shift_fun c =
    if up_case c || low_case c
    then begin
      if low_case c
      then char_of_int (int_of_char 'a' + ((int_of_char c - int_of_char 'a' + x) mod 26))
      else char_of_int (int_of_char 'A' + ((int_of_char c - int_of_char 'A' + x) mod 26))
      end
    else c
  in String.map shift_fun rot_str

let xor key src_str =
  let shift_fun c =
    if up_case c || low_case c
    then char_of_int (int_of_char c lxor (key mod 26))
    else c
  in String.map shift_fun src_str

let rec ft_crypt (src_str: string) func = 
  match func with
  | h :: t -> ft_crypt (h src_str) t
  | [] -> src_str

let main () =
  print_endline("CASE 1");
  print_endline(rot42 "abcde1");
  print_endline(caesar 1 "abcde1");
  print_endline(xor 1 "abcde1");
  print_endline(rot42 (caesar 1 (xor 1 "abcde")));
  let func_list = [xor 1;caesar 1;rot42] in
  print_endline (ft_crypt "abcde" func_list);
  print_endline("CASE 2");
  print_endline(rot42 "XfRdE23");
  print_endline(caesar 42 "XfRdE23");
  print_endline(xor 21 "XfRdE23");
  print_endline(rot42 (caesar 42 (xor 21 "XfRdE23")));
  let func_list = [xor 21;caesar 42;rot42] in
  print_endline (ft_crypt "XfRdE23" func_list)

let _ = main()