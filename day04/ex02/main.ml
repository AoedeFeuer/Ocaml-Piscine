let main () =
  let card = Card.newCard Value.King Color.Spade in
  print_endline (Card.toString card)
(**  let rec loop values = 
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
  in loop Value.all*)

let () = main ()