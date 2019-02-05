package sample

fun max(n:Int, vararg ints: Int): Int{
    var max = n
    for(i in ints){
        if(max<i){max = i}
    }

    return max
}