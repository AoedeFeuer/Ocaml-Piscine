let ft_print_alphabet () =
    let actual_letter = int_of_char 'a' in 
    let last_letter = int_of_char 'z' in 
    let rec printing_loop actual_letter = 
        print_char (char_of_int actual_letter);
        if (actual_letter <> last_letter)
        then printing_loop (actual_letter + 1)
    in printing_loop actual_letter;
    print_char '\n'

let main () =
    ft_print_alphabet ()

let () = main ()