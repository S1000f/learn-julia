emptyArray = []
stringArray = ["banana", "apple"]
mixedArray = ["Spam", 4, 5.0, true]

println(typeof(emptyArray), typeof(stringArray), typeof(mixedArray))

# array is a mutable container
stringArray[1] = "pineapple"
println(stringArray)

# in operator with an array object
println("apple" ∈ stringArray)

# classical for-each
for item in stringArray
  println(item)
end

# eachindex method
for i in eachindex(stringArray)
  println(stringArray[i])
end

# [:] operator as copy()
copyOf = stringArray[:]
copyTwo = copy(stringArray)
push!(copyOf, "peach")
insert!(copyTwo, 2, "melon")

println("copied stringArray and pushed a new element in it -> $(copyOf)")
println(copyTwo)
println("original stringArray is safe and sound -> $(stringArray)")

# methods with ! manipulates the target object
append!(stringArray, ["orange", "berry"])
println(stringArray)

# dot syntax
println([1, 2, 3].^2)
println(uppercase.(stringArray))

# equals()
a = "a"
b = "a"
println(a === b)