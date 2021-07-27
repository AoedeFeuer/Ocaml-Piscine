let ft_print_comb2 () =
	let a = 0 in
	let b = 1 in
	let rec loop a b = 
		if a < 100
		then 
			if b < 100
			then 
				if a <> b
				then
					if a > 9
					then if b > 9
						then begin
							print_int a ; print_char ' ' ; print_int b; 
							if a = 98 && b = 99
							then ()
							else begin
								print_char ',' ; print_char ' ';
								loop a (b + 1)
							end
						end
						else begin
							print_int a ; print_char ' ' ; print_int 0 ; print_int b ; print_char ',' ; print_char ' ';
							loop a (b + 1)
						end
					else
						if b < 9
						then begin
							print_int 0 ; print_int a ; print_char ' ' ; print_int 0 ; print_int b ; print_char ',' ; print_char ' ';
							loop a (b + 1)
						end
						else begin
							print_int 0 ; print_int a ; print_char ' ' ; print_int b ; print_char ',' ; print_char ' ';
							loop a (b + 1)
						end
				else loop a (b + 1)
			else loop (a + 1) (a + 2)
		else ()
	in loop a b;
	print_char '\n'
		
let main () =
	ft_print_comb2 ()

let () = main ()