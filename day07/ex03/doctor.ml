class doctor name age sidekick =
  object
    initializer print_endline ("Object [ " ^ name ^ " ] is ready!")
    val _name:string = name
    val mutable _age:int = age
    val _sidekick:People.people = sidekick
    val mutable _hp = 100

    method to_string = "New person has name: " ^ _name ^ ", with age: " ^ string_of_int _age ^ ", with hp: " ^ string_of_int _hp 
    method talk = print_endline ("Hi! I’m the Doctor!")
    method travel_in_time start arrival = _age <- (_age + (arrival - start));
    print_endline ("\n
    _______(_@_)_______\n
    | POLICE      BOX |\n
    |_________________|\n
     | _____ | _____ |\n
     | |###| | |###| |\n
     | |###| | |###| |\n
     | _____ | _____ |\n
     | || || | || || |\n
     | ||_|| | ||_|| |\n
     | _____ |$_____ |\n
     | || || | || || |\n
     | ||_|| | ||_|| |\n
     | _____ | _____ |\n
     | || || | || || |\n
     | ||_|| | ||_|| |\n
     |       |       |\n
     *****************")
    method use_sonic_screwdriver = print_endline "Whiiiiwhiiiwhiii Whiiiiwhiiiwhiii Whiiiiwhiiiwhiii"
    method regenerate = _hp <- 100
  end
