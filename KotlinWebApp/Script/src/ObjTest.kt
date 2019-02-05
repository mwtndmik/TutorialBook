package sample

fun main(args: Array<String>){
    val myObject = object{
        override fun toString(): String ="MyObject"
    }

    println(myObject)
}