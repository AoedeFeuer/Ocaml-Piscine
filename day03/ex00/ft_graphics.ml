type 'a binary_tree =
    | Nil
    | Node of 'a * 'a binary_tree * 'a binary_tree

let draw_square x y z =
  Graphics.moveto (x - z / 2) (y + z / 2);
  Graphics.lineto ((x - z / 2) + z) (y + z / 2);
  Graphics.moveto (x - z / 2) (y - z / 2);
  Graphics.lineto ((x - z / 2) + z) (y - z / 2);
  Graphics.moveto (x + z / 2) (y + z / 2);
  Graphics.lineto (x + z / 2) ((y + z / 2) + z);
  Graphics.moveto (x + z / 2) (y - z / 2);
  Graphics.lineto (x + z / 2) ((y - z / 2) + z)

let draw_tree_node node = function
  | [] -> []
  | h :: t -> 
  draw_square 300 300 100;
  draw_square 600 400 100;
  draw_square 600 500 100;
  Graphics.moveto (300 + 100 / 2) (300 + 100 / 2);
  Graphics.lineto (600 - 100 / 2) (400 - z / 2);
  Graphics.moveto (300 + 100 / 2) (300 + 100 / 2);
  Graphics.lineto (500 - 100 / 2) (500 - z / 2);
  Graphics.moveto 300 300;
  Graphics.draw_string(h);
  Graphics.moveto 600 400;
  Graphics.draw_string("Nil");
  Graphics.moveto 600 500;
  Graphics.draw_string("Nil")


let main () =
  Graphics.open_graph "800x600";
  draw_square(300 400 20)

let _ = main()