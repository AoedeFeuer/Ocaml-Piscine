let () =
  let doctor = new Doctor.doctor "doctor" 760 (new People.people ("doctor")) in
  print_endline doctor#to_string;
  doctor#talk;
  doctor#travel_in_time 1963 2021;
  print_endline doctor#to_string;
  doctor#use_sonic_screwdriver;
  doctor#regenerate
  