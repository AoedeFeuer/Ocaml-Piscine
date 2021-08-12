class ['a] army (members: 'a list)  =
  object
    val mutable _members = members

    method add mem = _members <- (mem::_members)
    method delete = _members <- match _members with
    | h::t -> t
    | _ -> []
    method len = print_string "Army Lenght: " ; print_int (List.length _members) ; print_endline "" ;
  end
