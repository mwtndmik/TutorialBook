package sample


fun main(args: Array<String>){
    val name: String by lazy {
        println("初期化")
        "world"
    }

    println("Hello, $name!")
    println("Hello, $name!")
}