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

using Serialization

io = IOBuffer()

t = [1, 2, 3]

serialize(io, t)

byteArr = take!(io)

println(byteArr)

t2 = deserialize(IOBuffer(byteArr))

println(t2)

# run shell script
cmd = `echo hello world`
run(cmd)
ls = `ls -l`
run(ls)

# module
include("myModule.jl")

using Main.MyModule

exportedMethod()
MyModule.notExportedMethod()