type 'a binary_tree =
    | Nil
    | Node of 'a * 'a binary_tree * 'a binary_tree





let main () =
  Graphics.open_graph "800x600";
  draw_square(300 400 20)

let _ = main()