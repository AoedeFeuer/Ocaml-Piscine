let rec ft_power x y =
    if x = 0 then 0
    else if y = 0 then 1
    else if y > 1 then x * (ft_power x (y - 1))
    else x

let main () =
    print_int(ft_power 2 4);
    print_char '\n';
    print_int(ft_power 3 0);
    print_char '\n';
    print_int(ft_power 0 5);
    print_char '\n';
    print_int(ft_power 0 0);
    print_char '\n';
    print_int(ft_power 3 1);
    print_char '\n';
    print_int(ft_power 1 3);
    print_char '\n';
    print_int(ft_power (-3) (-2));
    print_char '\n';
    print_int(ft_power 1 (-3));
    print_char '\n'

let () = main ()