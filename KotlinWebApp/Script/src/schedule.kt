package sample

fun main(args: Array<String>){
    val time:Array<String> = arrayOf("14:45〜16:15", "16:30〜18:00","18:15〜19:45" )
    val day:Array<String> = arrayOf("月", "火","水", "木", "金" )

    for(d in day){
        for(t in time){
            println("$d $t")
        }
    }
}