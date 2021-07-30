let contain data list =
  let rec search data = function
    | [] -> false
    | h :: t -> if h = data then h = data else search data t
in search data list

let rec crossover list1 list2 =
  match list1 with
    | [] -> []
    | h :: t -> if contain h list2 then h :: crossover t list2
                                else crossover t list2

let rec ft_print_list list = 
  match list with
  | [] -> print_char('\n')
  | h :: t -> print_string(h ^ " ");
              ft_print_list t

let rec ft_print_list_num list = 
  match list with
  | [] -> print_char('\n')
  | h :: t -> print_int(h);
              print_char(' ');
              ft_print_list_num t

let main() =
  ft_print_list (crossover ["a"; "b"; "c"; "d"; "e"; "x"] ["c"; "a"; "f"; "d"; "y"]); (* a c d *)
  ft_print_list (crossover [] ["c"; "a"; "f"; "d"; "y"]);
  ft_print_list (crossover ["c"; "a"; "f"; "d"; "y"] []);
  ft_print_list (crossover [] []);
  ft_print_list_num (crossover [21; 42; 2; 1; 4; 2] [9; 8; 1; 42; 21; 42]);
  ft_print_list (crossover ["toto"; "pipi"; "toto"; "pepe"; "popo"; "pepe"; "pepe"] ["toto"; "toto"; "pepe"; "toto"; "pepe"; "pepe"])

let () = main ()