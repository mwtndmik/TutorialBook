import spark.Spark.get
import spark.Spark.port

fun main(args: Array<String>){
    get("/hello"){request, response ->
        val name: String? = request.queryParams("name")
        "Hello ${request ?: "request"}, ${response ?: "response"}" +
                " ${name ?: "can't get name"}"
    }
}