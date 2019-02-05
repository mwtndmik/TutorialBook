package sample

fun main(args: Array<String>){
    val numberMap: MutableMap<String, Int> = mutableMapOf("one" to 1)
    val nMap: Map<String, Int> = numberMap

    println(nMap)

    numberMap["two"] = 2

    println("""
        $numberMap
        $nMap
    """.trimIndent())
}