using HTTP

HTTP.listen() do http::HTTP.Stream
  @show HTTP.header(http, "Content-Type")
  while !eof(http)
    println("body data: ", String(readavailable(http)))
  end
  HTTP.setstatus(http, 200)
  HTTP.setheader(http, "Content-Type" => "text/html")
  HTTP.startwrite(http)
  write(http, "<h1>Hello world!</h1></br>")
  write(http, "<h3>Julia HTTP</h3>")
end

