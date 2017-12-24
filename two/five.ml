(*helper functions*)

fun range(x:int, y:int):int list = if y<x then [] else (x::(range((x+1),y)))

fun indicesWithStart(l:('a list), start:int) = case l of
    [] => []
    | (b::bs) => (b,start)::(indicesWithStart(bs,(start+1)))

val indices = fn (l:'a list) => indicesWithStart(l,0)

fun pow(b:int, exp:int):int = case exp of
    0 => 1
    | WILD => b*pow(b,exp-1)

fun powlist(b:int, l:(int list)):(int list) = map((fn y => pow(b,y)))(l)

fun innerprod(l:(int list), l':(int list)):int = case (l,l') of
    (_, []) => 0
    | ([], _) => 0
    | (x::xs, y::ys) => x*y + innerprod(xs,ys)

exception empty_list

fun append(s:('a list), t:('a list)):('a list) = hd(s)::append(tl(s),t) handle Empty => t

(* definitions*)

fun maxList(l:(int list)):int = foldl (fn (x,acc) => if (acc>x) then acc else x) (hd l) l

fun sumList(l:(int list)):int = foldl (fn (x,acc) => acc+x) 0 l

fun poly(coeffs:(int list), b:int):int = innerprod(coeffs,powlist(b, range(0,length(coeffs)-1)))

fun revList(l:('a list)):('a list) = foldl (fn (x,acc) => append([x], acc)) [] l

fun mapList(f:'a -> 'b, l:('a list)) = case l of [] => [] | (b::bs) => (f(b))::(mapList(f, bs))

fun myfoldl = foldl




