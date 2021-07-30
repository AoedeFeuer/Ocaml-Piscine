let rever list =
  let rec aux acc = function
    | [] -> acc
    | h :: t -> aux (h :: acc) t in
  aux [] list

let encode list =
  let rec count num data = function
    | [] -> []
    | [x] -> (num + 1, x) :: data
    | a :: (b :: _ as t) -> if a = b then count (num + 1) data t
                            else count 0 ((num + 1, a) :: data) t in
rever (count 0 [] list)

let rec ft_print_str =
  function
  | [] -> print_char('\n')
  | (a, b) :: rest ->
    print_char('(');
    print_int(a);
    print_string(": ");
    print_string(b);
    print_string(") ");
    ft_print_str rest 

let rec ft_print_num =
  function
  | [] -> print_char('\n')
  | (a, b) :: rest ->
    print_char('(');
    print_int(a);
    print_string(": ");
    print_int(b);
    print_string(") ");
    ft_print_num rest 

let main() =
  ft_print_str (encode ["a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "e"; "e"; "e"; "e"]);
  ft_print_str (encode ["toto"; "toto"; "toto"; "pepe"; "toto"; "pepe"; "pepe"]);
  ft_print_num (encode [1; 1; 1; 2; 8; 8; 8; 8])

let () = main ()