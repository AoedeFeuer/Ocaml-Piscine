let () =
  let mo = new Atom.molybdaenum in
  let c = new Atom.carbon in
  let sc = new Atom.scandium in
  let si = new Atom.silicium in
  let u = new Atom.uranium in
  let o = new Atom.oxygen in
  print_endline (sc#to_string);
  print_endline (o#to_string);
  print_endline (c#to_string);
  print_endline (sc#name ^ " is equal to " ^ u#name ^ " ? " ^ string_of_bool (sc#equals u));
  print_endline (sc#name ^ " is equal to " ^ mo#name ^ " ? " ^ string_of_bool (sc#equals mo));
  print_endline (sc#name ^ " is equal to " ^ si#name ^ " ? " ^ string_of_bool (sc#equals si));
  let sca = new Atom.scandium in
  print_endline (sc#name ^ " is equal to " ^ sca#name ^ " ? " ^ string_of_bool (sc#equals sca))