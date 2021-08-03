type 'a ft_ref = { contents : 'a }
let get x = x.contents
let return x = { contents = x}
let set x y = x.contents <- y
let bind x f:'b ft_ref = f (get x)
