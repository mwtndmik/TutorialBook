package sample

fun main(args: Array<String>){
    val whiteList = listOf("Blue", "Yellow", "Brown")
    println("""
        ${listOf("Red", "Green", "Blue").filter({whiteList.contains(it)})}
        ${listOf("Red", "Green", "Blue").filter(whiteList::contains)}
    """.trimIndent())
}