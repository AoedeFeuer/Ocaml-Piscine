let eu_dist (a: float array) (b: float array) =
  let n = Array.length a in
  let sum = ref 0. in
  for i = 0 to (n - 1) do
    sum := !sum +. (a.(i) -. b.(i)) ** 2.
  done ;
  sqrt !sum

let main () =
  print_float (eu_dist [|1.; 1.; 1.; 1.|] [|2.; 2.; 2.; 2.|]);
  print_char '\n';
  print_float (eu_dist [|1.; 1.; 1.; 1.|] [|1.; 1.; 1.; 1.|]);
  print_char '\n';
  print_float (eu_dist [|4.; (-0.5)|] [| 2.; (-0.5)|]);
  print_char '\n'

let () = main ()