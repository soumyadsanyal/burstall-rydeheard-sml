(*helper functions*)

fun range(x:int, y:int):int list = if y<x then [] else (x::(range((x+1),y)))

fun indicesWithStart(l:('a list), start:int) = case l of
    [] => []
    | (b::bs) => (b,start)::(indicesWithStart(bs,(start+1)))

val indices = fn (l:'a list) => indicesWithStart(l,0)

(* definitions*)

fun maxList(l:(int list)):int = foldl (fn (x,acc) => if (acc>x) then acc else x) (hd l) l

fun sumList(l:(int list)):int = foldl (fn (x,acc) => acc+x) 0 l



