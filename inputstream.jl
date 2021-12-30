input = open("words.txt")

firstLine = readline(input)
secondLine = readline(input)

println(firstLine, secondLine)

for line in eachline(input)
  println(line)
end

close(input)

alice = open("alice.txt")

function extractWords(txt)
  collected = []
  for line in eachline(txt)
    chunk = split(line, " ")
    append!(collected, chunk)
  end
  words = []
  for letter in collected
    if letter == ""
      continue
    end

    marker = true
    for oneChar in letter
      if !isletter(oneChar)
        marker = false
        break
      end
    end
    if marker
      push!(words, lowercase(letter))
    end
  end
  words
end

result = extractWords(alice)
println(result)

close(alice)