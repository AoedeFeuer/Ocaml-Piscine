let print_prev t = 
  if Value.toInt t <> 1
  then print_endline ("previous : " ^ Value.toString (Value.previous t))
  else print_endline ("previous : No previous")

let print_next t = 
  if Value.toInt t <> 13
  then print_endline ("next : " ^ Value.toString (Value.next t))
  else print_endline ("next : No next")

let main () =
  let rec loop values = 
    match values with
    | [] -> ()
    | h :: t -> print_string "toInt : ";
                print_int (Value.toInt h);
                print_endline "";
                print_endline ("toString : " ^ Value.toString h);
                print_endline ("toStringVerbose : " ^ Value.toStringVerbose h);
                print_prev h; 
                print_next h;
                loop t
  in loop Value.all

let () = main ()