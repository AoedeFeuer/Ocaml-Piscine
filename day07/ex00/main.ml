let () =
  let doctor = new People.people ("doctor") in
  print_endline doctor#to_string;
  doctor#talk;
  doctor#die