type 'a ft_ref = { mutable contents : 'a }
let get x = x.contents
let return x = { contents = x}
let set x y = x.contents <- y
let bind x f:'b ft_ref = f (get x)

let () =
  let tmp = return "This is test" in
  print_endline (get tmp);
  ignore (set tmp "No test");
  print_endline (get tmp);
  let tmp_nb = return 0 in
  print_int (get tmp_nb);
  print_endline "";
  ignore (set tmp_nb 42);
  print_int (get tmp_nb);
  print_endline ""