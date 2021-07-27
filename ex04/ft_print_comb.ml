let ft_print_comb () =
    let fir = 0 in 
    let sec = fir + 1 in 
    let thi = sec + 1 in 
    let rec print_f first second third = 
        if (first < 8)
        then
            if (second < 9)
            then
                if (third <= 10)
                then begin
                    if (third < 10)
                    then begin
                        print_int first;
                        print_int second;
                        print_int third;
                        if (first = 7) && (second = 8) && (third = 9)
                        then ()
                        else print_string ", ";
                        print_f first second (third + 1)
                        end
                    else print_f first (second + 1) (second + 2)
                end
            else
                if (second < 9)
                then print_f first (second + 1) (second + 2)
                else print_f (first + 1) (first + 2) (first + 3)
        else
            if (first < 8) && (second >= 9) && (third >= 10)
            then print_f (first + 1) (first + 2) (first + 3)
            else ()
    in 
    print_f fir sec thi;
    print_string "\n"

let main () =
    ft_print_comb ()

let () = main ()