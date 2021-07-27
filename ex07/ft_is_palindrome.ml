let ft_is_palindrome s =
    let endi = String.length s - 1 in
    let mid = (endi / 2) in
    let beg = 0 in
    let rec loop beg mid endi = 
        if beg > mid || endi < 0
        then true
        else
            if (String.get s beg) <> (String.get s endi)
            then false 
            else loop (beg + 1) mid (endi - 1)
    in
    loop beg mid endi
    
let main () =
    if ft_is_palindrome "radar"
    then print_endline "true"
    else print_endline "false";
    if ft_is_palindrome "madam"
    then print_endline "true"
    else print_endline "false";
    if ft_is_palindrome "car"
    then print_endline "true"
    else print_endline "false";
    if ft_is_palindrome ""
    then print_endline "true"
    else print_endline "false";
    if ft_is_palindrome "mappp  pppam"
    then print_endline "true"
    else print_endline "false"

let () = main ()