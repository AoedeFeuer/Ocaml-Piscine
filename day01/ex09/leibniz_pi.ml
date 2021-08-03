let ft_sum funct i_lower i_upper = 
  let delta = 4 * atan 1 in
  if (i_lower > i_upper) then nan else
    begin
    let rec summing funct i_lower i_upper res = 
      if (i_lower > i_upper)
      then res
      else summing funct (i_lower + 1) i_upper (res +. (funct i_lower))
    in summing funct i_lower i_upper 0.0
  end

let main() =
  print_float(ft_sum (fun i -> float_of_int (i * i)) 1 10);
  print_char('\n');
  print_float(ft_sum (fun i -> float_of_int (i * i)) 1 5);
  print_char('\n');
  print_float(ft_sum (fun i -> float_of_int (i * i)) 10 1);
  print_char('\n')

let () = main ()