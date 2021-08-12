let () =
  let doc1 = new People.people ("Doc") in
  let doctor = new Doctor.doctor "The Who" 760 doc1 in
  let dalek = new Dalek.dalek in
  print_endline dalek#to_string;
  print_endline doctor#to_string;
  print_endline doc1#to_string;
  dalek#talk;
  doc1#talk;
  dalek#exterminate doc1;
  print_endline dalek#to_string;
  doctor#talk;
  dalek#talk;
  doctor#use_sonic_screwdriver;
  dalek#die;
  print_endline doctor#to_string;
  doctor#travel_in_time 1963 2021;
  print_endline doctor#to_string;
  doctor#talk