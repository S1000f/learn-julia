input = open("words.txt")

firstLine = readline(input)
secondLine = readline(input)

println(firstLine, secondLine)

for line in eachline(input)
  println(line)
end


close(input)