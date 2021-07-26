let rec ft_countdown x =
    if (x > 0)
    then
        begin
            print_int x;
            print_char '\n';
            ft_countdown (x - 1)
        end
    else
        begin
            print_int 0;
            print_char '\n'
        end

let main () =
    ft_countdown 3;
    ft_countdown 0;
    ft_countdown (-3)

let () = main ()