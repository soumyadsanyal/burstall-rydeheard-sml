datatype Num  = zero | succ of Num

fun add(x:Num, y:Num):Num = case y of
    zero => x
    | (succ z) => succ (add(x,z))

fun times(x:Num, y:Num):Num = case y of
    zero => zero
    | (succ zero) => x
    | (succ z) => add(x,times(x,z))

fun interpretNum(x:Num):int = case x of
    zero => 0
    | succ(z) => 1+interpretNum(z)

val numPrint = interpretNum
