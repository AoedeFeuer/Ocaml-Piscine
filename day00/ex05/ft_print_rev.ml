let ft_print_rev rev_str =
    let len = (String.length rev_str) - 1 in
    let rec loop_str len = 
        if len >= 0
        then begin
            print_char (String.get rev_str len);
            loop_str (len - 1)
        end
    in loop_str len;
    print_char '\n'

let main () =
    ft_print_rev "Hello world !";
    ft_print_rev "";
    ft_print_rev "1234567890"

let () = main ()