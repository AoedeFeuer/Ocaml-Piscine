let rand () =
  Random.self_init();
  let rec r i s =
    if i > 0
    then r (i - 1) (s ^ (String.make 1 (char_of_int (97 + (Random.int 26)))))
    else s
  in r 3 ""

class dalek =
  object
    val _name:string = "Dalek" ^ rand()
    val _hp = 100
    val mutable _shield:bool = true

    method to_string = "New person has name: " ^ _name ^ ", with hp: " ^ string_of_int _hp ^ ", with shield: " ^ string_of_bool _shield

    method talk = Random.self_init();
    match Random.int 3 with
    | 0 -> print_endline "Explain! Explain!" 
    | 1 -> print_endline "Exterminate! Exterminate!" 
    | 2 -> print_endline "I obey!" 
    | 3 -> print_endline "You are the Doctor! You are the enemy of the Daleks!"
    | _ -> print_endline "Impossibe" 
    
    method exterminate (t:People.people) = t#die; _shield <- not _shield

    method die = print_endline "Emergency Temporal Shift!"
  end
