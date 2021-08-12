class people name =
  object
    initializer print_endline ("Object [ " ^ name ^ " ] is ready!")
    val _name:string = name
    val _hp = 100

    method to_string = "New person has name: " ^ _name ^ ", with hp: " ^ string_of_int _hp 
    method talk = print_endline ("I’m " ^ _name ^ " ! Do you know the Doctor?")
    method die = print_endline "Aaaarghh!"

  end
