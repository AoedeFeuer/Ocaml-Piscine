let main () =
  let rec loop colors = 
    match colors with
    | [] -> ()
    | h :: t -> print_endline ("toString : " ^ Color.toString h);
                print_endline ("toStringVerbose : " ^ Color.toStringVerbose h);
                loop t
  in loop Color.all

let () = main ()