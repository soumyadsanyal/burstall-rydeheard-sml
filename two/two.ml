fun sign(x:int) = if (x=0) then 0 else (if (x>0) then 1 else (~1))

fun absvalue(x:int):int = if (x<0) then ~x else x

fun max(x:int, y:int):int = if (x<y) then y else x

val or = fn (a:bool, b:bool) => not (not a andalso not b)
infix or

fun fibonacci(n:int):int = if (n=0 or n=1) then 1 else (fibonacci(n-1) +
        fibonacci(n-2))

