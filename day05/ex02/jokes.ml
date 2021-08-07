let jokes () =
  let array = Array.make 5 "" in
  Array.set array 0 "— Доктор, как мои анализы? — Плохие у вас анализы, кал — вообще говно";
  Array.set array 1 "Олимпийская сборная по бегу из Беларуси";
  Array.set array 2 "Оказывается у Брюса Ли был родной брат, и он был веганом. Его звали Броко Ли";
  Array.set array 3 "Еврейский атлет толкнул ядро на 300% дороже, чем на прошлой олимпиаде";
  Array.set array 4 "Жил—был царь. И было у него косоглазие. Пошёл он однажды куда глаза глядят и порвался";
  Random.self_init ();
  print_endline array.(Random.int 5)

let main () =
  jokes ()

let () = main ()