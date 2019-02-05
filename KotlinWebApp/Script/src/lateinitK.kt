package sample

import kotlin.reflect.KProperty

fun main(args:Array<String>){

    class LazyInitialization<T>(val initializer:() -> T){
        private var value: T? = null

        operator fun getValue(thisRef:Any?, property: KProperty<*>):T{
            println("${thisRef}, ${property.name}にアクセスがありました")
            if(value == null){
                println("${property.name}を初期化します")
                value = initializer()
            }
            return value!!
        }
    }

    class Foo{
        val hoge: String by LazyInitialization({ "foo" })
    }

    val foo = Foo()
    foo.hoge
    val got = foo.hoge
    println(got)
}

