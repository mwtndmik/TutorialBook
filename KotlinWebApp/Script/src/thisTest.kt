package sample

interface Greeter{
    fun introduceMyself()
}

fun main(args: Array<String>){
    class Foo{
        override fun toString(): String = "Foo"
        fun run(){
            val greeter = object :Greeter{
                override fun toString(): String = "FooGreeter"
                override fun introduceMyself() {
                    println("I am $this")
                }
            }
            greeter.introduceMyself()
        }
    }

    println(Foo().run())
}