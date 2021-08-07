let jokes filename =
    let lines = ref [] in
    let chan = open_in filename in
    try while true; do
      lines := input_line chan :: !lines
    done;
  with End_of_file -> 
      seek_in chan 0;
      let len = ref (List.length !lines) in
      let array = Array.make (List.length !lines) "" in
      let i = ref 0 in
      try while i <> len do
        Array.set array !i (input_line chan);
        incr i
      done;
      Random.self_init ();
      print_endline array.(Random.int !len)
    with End_of_file -> 
      print_endline "End of file";
  close_in chan

let main argc argv =
  if argc <> 2 then () else
  try jokes argv.(1) with
  | _ -> ()

let () = 
  let argv = Sys.argv in
  main (Array.length argv) argv