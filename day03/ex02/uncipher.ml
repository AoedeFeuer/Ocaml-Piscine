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
      then char_of_int (int_of_char 'a' + ((int_of_char c - int_of_char 'a' - x) mod 26))
      else char_of_int (int_of_char 'A' + ((int_of_char c - int_of_char 'A' - x) mod 26))
      end
    else c
  in String.map shift_fun rot_str

let xor key src_str =
  String.map (function x -> char_of_int ((int_of_char x )lxor key)) src_str

let rec ft_uncrypt src_str func = 
  match func with
  | h :: t -> ft_uncrypt (h src_str) t
  | [] -> "End"

let main () =
  print_endline(unrot42 "abcde");
  print_endline(uncaesar 1 "abcde");
  print_endline(xor 1 "abcde")


let _ = main()