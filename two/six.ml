datatype 'a BinTree = leaf of 'a | node of ('a BinTree)*('a BinTree)

fun numLeafs(t:('a BinTree)) =

foldl f acc Leaf = acc
foldl f acc Node l r =  
