let main () =
  let card1 = Card.newCard King Spade in
  let card2 = Card.newCard T3 Diamond in
  let card3 = Card.newCard T6 Heart in
  let card4 = Card.newCard Queen Club in
  let spade = Card.allSpades in
  let heart = Card.allHearts in
  let club = Card.allClubs in
  let diamond = Card.allDiamonds in
  let allcard = Card.all in
  let list_card = [card1; card2; card3; card4] in
  List.iter (function x -> Printf.printf "%s\n" (Card.toStringVerbose x)) spade;
  List.iter (function x -> Printf.printf "%s\n" (Card.toStringVerbose x)) club;
  List.iter (function x -> Printf.printf "%s\n" (Card.toStringVerbose x)) diamond;
  List.iter (function x -> Printf.printf "%s\n" (Card.toStringVerbose x)) heart;
  List.iter (function x -> print_endline (Card.toStringVerbose x)) allcard;
  Printf.printf ("%s %s\n") (Card.toString card1) (Card.toStringVerbose card1);
  Printf.printf ("%s %s\n") (Card.toString card2) (Card.toStringVerbose card2);
  Printf.printf ("%s %s\n") (Card.toString card3) (Card.toStringVerbose card3);
  Printf.printf ("%s %s\n") (Card.toString card4) (Card.toStringVerbose card4);
  Printf.printf("compare %d\n") (compare card1 card2);
  Printf.printf("%d\n") (compare card2 card3);
  Printf.printf("%d\n") (compare card1 card4);
  Printf.printf("%d\n") (compare card4 card4);
  Printf.printf ("max = %s; min = %s;\n") (Card.toStringVerbose (max card1 card2)) (Card.toStringVerbose  (min card1 card2));
  Printf.printf ("max = %s; min = %s;\n") (Card.toStringVerbose (max card3 card1)) (Card.toStringVerbose  (min card3 card1));
  Printf.printf ("max = %s; min = %s;\n") (Card.toStringVerbose (max card4 card2)) (Card.toStringVerbose  (min card4 card2));
  if (Card.isHeart card1) then Printf.printf ("yes\n") else  Printf.printf ("no\n");
  if (Card.isDiamond card2) then Printf.printf ("yes\n") else  Printf.printf ("no\n");
  if (Card.isClub card3) then Printf.printf ("yes\n") else  Printf.printf ("no\n");
  if (Card.isClub card4) then Printf.printf ("yes\n") else  Printf.printf ("no\n");
  if (Card.isOf card1 Spade) then Printf.printf ("yes\n") else  Printf.printf ("no\n");
  if (Card.isOf card4 Heart) then Printf.printf ("yes\n") else  Printf.printf ("no\n");
  Printf.printf("Value card: %s\n") (Card.Value.toStringVerbose (Card.getValue card1));
  Printf.printf("Color card: %s\n") (Card.Color.toStringVerbose (Card.getColor card1));
  Printf.printf("Best card: %s\n") (Card.toStringVerbose (Card.best list_card));
  Printf.printf("Best card: %s\n") (Card.toStringVerbose (Card.best []))

let () = main ()