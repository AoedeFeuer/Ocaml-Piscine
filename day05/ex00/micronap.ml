let my_sleep () =  Unix.sleep 1 (*unix.cmxa*)

let micronap av = 
  for i = 1 to (int_of_string av) do
    my_sleep ()
  done

let main argc argv =
  if argc <> 2 then () else
  try micronap argv.(1) with
  | _ -> ()

let () = 
  let argv = Sys.argv in
  main (Array.length argv) argv