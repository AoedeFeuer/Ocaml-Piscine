let main () =

  let deck = Deck.newDeck () in
  let deck1 = Deck.newDeck () in
  print_endline "String List:";
  List.iter (fun x -> print_string (x ^ " ")) (Deck.toStringList deck);
  print_endline "\n";
  List.iter (fun x -> print_string (x ^ " ")) (Deck.toStringList deck1);
  print_endline "\n";
  print_endline "String List Verbose:";
  List.iter (fun x -> print_string (x ^ " ")) (Deck.toStringListVerbose deck);
  print_endline "\n";
  List.iter (fun x -> print_string (x ^ " ")) (Deck.toStringListVerbose deck1);
  print_endline "\n";
  print_endline "Show Cards:";
  let rec show_card = function
    (card, rest) -> try print_endline (Deck.Card.toStringVerbose card); show_card (Deck.drawCard rest)
            with Failure e -> print_endline ("DRAWING STOP! " ^ e)
          in show_card (Deck.drawCard (Deck.newDeck ()))

let () = main ()