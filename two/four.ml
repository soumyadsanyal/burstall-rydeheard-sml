fun evaluate(f:('a ->'b), x:'a) = f(x)

fun apply(f:('a -> 'b)) = fn x:'a => evaluate(f,x)
(* most general type is ('a -> 'b) -> ('a -> 'b)*)

fun compose(g:('b -> 'c), f:('a -> 'b)):('a -> 'c) = fn x:'a => g(f(x))
(* most general type is ('b -> 'c) * ('a -> 'b) -> ('a -> 'c) *)



