let ft_string_all func string =
    let len = (String.length string) - 1 in
    let rec loop_str len = 
        if len < 0
        then false
        else if len = 0
            then func (String.get string len)
            else
                if func (String.get string len) != true
                then func (String.get string len)
                else loop_str (len - 1)
    in loop_str len

let is_digit c = 
    c >= '0' && c <= '9'

let main () =
    if ft_string_all is_digit "0123456789"
    then print_endline "true"
    else print_endline "false";
    if ft_string_all is_digit "O12EAS67B9"
    then print_endline "true"
    else print_endline "false";
    if ft_string_all is_digit ""
    then print_endline "true"
    else print_endline "false";
    if ft_string_all is_digit "1"
    then print_endline "true"
    else print_endline "false";
    if ft_string_all is_digit "a"
    then print_endline "true"
    else print_endline "false"


let () = main ()