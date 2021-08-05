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

let draw_tree_node tree  = 
  let rec drawning_node node x y z =
    match node with
    | Nil -> Graphics.moveto x y; Graphics.draw_string "Nil"; draw_square x y z
    | Node (par, ch1, ch2) ->
      begin
        Graphics.moveto x y; Graphics.draw_string par; draw_square x y z;
        drawning_node ch1 (x + z * 2) (y + z) z;
        Graphics.moveto (x + z) (y - z / 2); Graphics.lineto (x + z) (y + z);
        drawning_node ch2 (x + z * 2) (y - z) z;
        Graphics.moveto (x + z) (y - z / 2)); Graphics.lineto (x + z) (y - z)
      end
    in drawning_node tree 300 400 100

let main () =
  Graphics.open_graph " 800x600";
  draw_tree_node (Node ("42", Nil, Nil));
(*  draw_square 300 400 100;
  Graphics.moveto 400 300;
  Graphics.draw_string "42";*)
  Graphics.read_key ()

let _ = main()