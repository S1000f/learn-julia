
# two ways to create Expr object
meta = Meta.parse("1 + 2")
meta1 = :(1 + 2)
println(meta, " is ", typeof(meta))
println(meta1, " is ", typeof(meta1))

lambda = :(x -> x * 10)
println(lambda, " is ", typeof(lambda))

println(eval(meta))
println(eval(lambda)(2))

macro showAt(element, position)
  return esc(
    :(println("at ", $position, " => ", $element[$position])))
end
letters = ["aa", "bb", "cc"]
@showAt letters 2


