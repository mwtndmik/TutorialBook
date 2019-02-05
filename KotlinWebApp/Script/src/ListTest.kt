package sample

fun main(args: Array<String>) {
    val a: MutableList<Int> = mutableListOf(1, 2, 3)
    val b: List<Int> = a //MutableListはListのサブタイプ
    val c: List<Int> = listOf(1,2,3)

    println(b)
    println("""
        ${b is MutableList<Int>}
        ${a is List<Int>}
        ${c is MutableList<Int>}
    """.trimIndent())


    a.add(4)
    println(a)

    println(b)
}