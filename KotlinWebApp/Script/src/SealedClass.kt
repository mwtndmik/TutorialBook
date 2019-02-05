package sample

sealed class Option<out T :Any>
object None:Option<Nothing>()
data class Some<out T :Any>(val value:T):Option<T>()

fun main (args: Array<String>){
    val name :Option<String> = Some("Sealed Class")
    val message = when(name){
        is Some -> "Hello, ${name.value}"
        is None -> "Hello!"
    }
    println(message)
}