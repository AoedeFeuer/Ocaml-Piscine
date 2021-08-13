class virtual atom name symbol atomic_number =
  object (this)
    val _name:string = name
    val _symbol:string = symbol
    val _atomic_number:int = atomic_number

    method name = _name
    method symbol = _symbol
    method atomic_number = _atomic_number

    method to_string = "This atom has name: " ^ _name ^ ", with atomic number: " ^ (string_of_int (_atomic_number)) ^ " and its symbol is: " ^ _symbol

    method equals (that: atom) = (this#name = that#name) && (this#symbol = that#symbol) && (this#atomic_number = that#atomic_number)

  end

class hydrogen =
object
  inherit atom "hydrogenium" "H" 1
end

class carbon =
object
  inherit atom "carboneum" "c" 6
end

class oxygen =
object
  inherit atom "oxygenium" "o" 8
end

class silicium =
object
  inherit atom "silicium" "si" 14
end

class dysprosium =
object
  inherit atom "dysprosium" "dy" 66
end

class hydrargyrum =
object
  inherit atom "hydrargyrum" "hg" 80
end

class uranium =
object
  inherit atom "uranium" "u" 92
end

class curium =
object
  inherit atom "curium" "cm" 96
end

class scandium =
object
  inherit atom "scandium" "sc" 21
end

class molybdaenum =
object
  inherit atom "molybdaenum" "mo" 42
end