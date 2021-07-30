let gray n =
  let rec next i j =
    if i < n
    then let ()



let main () =
  print_endline(gray 1);
  print_endline(gray 2);
  print_endline(gray 3);
  print_endline(gray 0)

let () = main ()

let gray n =
  let rec gray_next_level k l =
    if k < n then
      (* This is the core part of the Gray code construction.
       * first_half is reversed and has a "0" attached to every element.
       * Second part is reversed (it must be reversed for correct gray code).
       * Every element has "1" attached to the front.*)
      let (first_half,second_half) =
        List.fold_left (fun (acc1,acc2) x ->
            (("0" ^ x) :: acc1, ("1" ^ x) :: acc2)) ([], []) l
      in
      (* List.rev_append turns first_half around and attaches it to second_half.
       * The result is the modified first_half in correct order attached to
       * the second_half modified in reversed order.*)
      gray_next_level (k + 1) (List.rev_append first_half second_half)
    else l
  in
    gray_next_level 1 ["0"; "1"];;

let rec max_list smallest lst = match lst with 
    | []   -> smallest
    | h::t -> max_list (max smallest h) t


List.fold_left (fun (acc1,acc2) x -> (("0" ^ x) :: acc1, ("1" ^ x) :: acc2)) ([], []) l

let max_list smallest lst =
    List.fold_left (fun acc x -> max acc x) smallest lst