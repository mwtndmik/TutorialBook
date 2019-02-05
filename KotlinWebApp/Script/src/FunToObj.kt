package sample

fun succ(n:Int):Int = n+1

fun main(args: Array<String>){
    val myFunction = ::succ
    val got = myFunction(5)
    println(got) //6 と出力
}