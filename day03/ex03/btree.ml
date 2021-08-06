type 'a binary_tree =
  | Nil
  | Node of 'a * 'a binary_tree * 'a binary_tree

(*let is_bst tree = 
  let rec checking tree min max = 
    match tree with
    | [] -> true
    | Node (par, Nil, Nil) -> par >= min && par <= max
    | Node (par, ch1, ch2) -> 
      begin
       if par < min || par > max then false else
        let node1 = checking ch1 min par in
        let node2 = checking ch2 par max in
        if node1 && node2 then true else false
      end
    in tree (-4611686018427387904) 4611686018427387903*)

let rec search_bst key = function
  | Nil -> false
  | Node (par, ch_left, ch_right) -> if key < par then search_bst key ch_left else 
    if key = par then true else search_bst key ch_right

let rec add_bst key = function
  | Nil -> Node (key, Nil, Nil)
  | Node (par, ch_left, ch_right) -> 
    begin
      if key < par 
      then Node (par, (add_bst key ch_left), ch_right)
      else Node (par, ch_left, (add_bst key ch_right))
    end

let rec is_perfect tree =
  match tree with
  | Node (par, Nil, Nil) -> true
  | Node (par, ch_left, ch_right) -> ch_left <> Nil && ch_right <> Nil && is_perfect ch_right && is_perfect ch_left
  | Nil -> true

(*let is_balanced

let delete_bst*)

let main () =
  if((search_bst 8 (Node (21, Node (11, Nil, Nil), Node (42, Nil, Node (45, Nil, Nil))))) = true)
    then print_endline "search_bst: True"
    else print_endline "search_bst: False";
  if((search_bst 42 (Node (21, Node (11, Nil, Nil), Node (42, Nil, Node (45, Nil, Nil))))) = true)
      then print_endline "search_bst: True"
      else print_endline "search_bst: False";
  if(is_perfect Nil = true)
    then print_endline "is_perfect: True"
    else print_endline "is_perfect: False";
  if(is_perfect (Node (21, Node (20, Node (19, Node (18, Nil, Nil), Nil), Nil), Nil)) = true)
    then print_endline "is_perfect: True"
    else print_endline "is_perfect: False";
  if(is_perfect (Node (21, Node (20, Node (19, Node (18, Nil, Nil), Node (20, Nil, Nil)), Node (21, Nil, Nil)), Node (18, Nil, Nil))) = true)
    then print_endline "is_perfect: True"
    else print_endline "is_perfect: False"
    
  
  
(*  if(( is_bst (
    Node (20,
      Node (8, 
        Node (4,
          Nil,
          Nil
        ),
        Node (12,
          Node (10, Nil, Nil),
          Node (19, Nil, Nil)
        )
      ),
      Node (22, Nil, Nil)
    )
  )) = true)
    then print_endline "is_bst: True"
    else print_endline "is_bst: False";*)
  

let () = main ()