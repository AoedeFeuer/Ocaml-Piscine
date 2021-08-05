(*ocamlfind ocamlc -linkpkg -package graphics ft_graphics.ml*)
type 'a binary_tree =
    | Nil
    | Node of 'a * 'a binary_tree * 'a binary_tree

let draw_square x y z =
  Graphics.moveto (x - z / 2) (y + z / 2);
  Graphics.lineto ((x - z / 2) + z) (y + z / 2);
  Graphics.moveto (x - z / 2) (y - z / 2);
  Graphics.lineto ((x - z / 2) + z) (y - z / 2);
  Graphics.moveto (x - z / 2) (y - z / 2);
  Graphics.lineto (x - z / 2) ((y - z / 2) + z);
  Graphics.moveto (x + z / 2) (y - z / 2);
  Graphics.lineto (x + z / 2) ((y - z / 2) + z)

let draw_tree_node tree start_x start_y start_z = 
  let rec drawning_node node x y z =
    match node with
    | Nil -> Graphics.moveto x y; Graphics.draw_string "Nil"; draw_square x y z
    | Node (par, ch1, ch2) ->
      begin
        Graphics.moveto x y; Graphics.draw_string par; draw_square x y z;
        drawning_node ch1 (x + z * 2) (y + z) z;
        Graphics.moveto (x + z / 2) y; Graphics.lineto (x + z + z / 2) (y + z);
        drawning_node ch2 (x + z * 2) (y - z) z;
        Graphics.moveto (x + z / 2) y; Graphics.lineto (x + z + z / 2) (y - z)
      end
    in drawning_node tree start_x start_y start_z

let height tree = 
  let node_height = 0 in
  let rec check_size from_node node_height =
    match from_node with
    | Nil -> node_height
    | Node (par, ch1, ch2) -> begin
        let node1 = check_size ch1 (node_height + 1) in
        let node2 = check_size ch2 (node_height + 1) in
        if node1 < node2 then node2 else node1
    end
  in check_size tree node_height

let rec size tree = 
  match tree with
  | Nil -> 0 
  | Node (par, ch1, ch2) -> 1 + size ch1 + size ch2



let main () =
  Graphics.open_graph " 800x600";

  draw_tree_node (Node("Hello", Nil, Node("Ocaml", Node("World", Nil, Nil), Nil))) 100 300 100;
  Printf.printf "Size: %d\n" (size (Node("42", Nil, Nil)));
  Printf.printf "Height: %d\n" (height (Node("42", Nil, Nil)));
  Printf.printf "Size: %d\n" (size (Node("42", Node("21", Nil, Nil), Nil)));
  Printf.printf "Height: %d\n" (height (Node("42", Node("21", Nil, Nil), Nil)));
  Printf.printf "Size: %d\n" (size (Node("Hello", Nil, Node("Ocaml", Node("World", Nil, Nil), Nil))));
  Printf.printf "Height: %d\n" (height (Node("Hello", Nil, Node("Ocaml", Node("World", Nil, Nil), Nil))));
  Printf.printf "Size: %d\n" (size (Node("Hello", Node("World", Nil, Nil), Node("Ocaml", Node("World", Nil, Node("World", Nil, Nil)), Nil))));
  Printf.printf "Height: %d\n" (height (Node("Hello", Node("World", Nil, Nil), Node("Ocaml", Node("World", Nil, Node("World", Nil, Nil)), Nil))));
  Graphics.read_key ()

let _ = main()