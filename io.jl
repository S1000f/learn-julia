fout = open("output.txt", "w")

line1 = "This here's the wattle!,\n"
result = write(fout, line1)
println(result)

name = "Milly"
println(fout, "I got you, $name")

write(fout, string(14440, "\n"))

close(fout)

try
  fopen = open("notExist.txt")
catch e
  println(e)
finally
  println("finally")
end

println(pwd())
println(abspath("output.txt"))
println(ispath("output.txt"))
println(isdir("output.txt"))
println(isfile("output.txt"))
println(readdir(pwd()))