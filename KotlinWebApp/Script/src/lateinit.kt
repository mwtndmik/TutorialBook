package sample

fun main (args: Array<String>){

    class Foo{
        private var _hoge:String? = null

        val hoge:String
            get(){
                println("hogeにアクセスがありました")
                if(_hoge == null){
                    println("_hogeを初期化します")
                    _hoge = "foo"
                }
                return _hoge!!
            }
    }

    val foo = Foo()
    foo.hoge
    val got = foo.hoge
    println(got)
}