let open_fd filename = 
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
      let curr_string = input_line chan in
      let split_num = String.split_on_char ',' curr_string in
      let float_vector = List.map float_of_string (String.split_delim split_num)
      Array.set array !i (input_line chan);
      incr i
    done;
  with End_of_file -> 
    print_endline "End of file";
close_in chan

let main argc argv =
  if argc <> 2 then () else
  try open_fd argv.(1) with
  | _ -> ()

let () = 
  let argv = Sys.argv in
  main (Array.length argv) argv