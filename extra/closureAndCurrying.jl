fn(x, y) = x^2 + y

x -> x^2 + 2x - 1

function (x)
  x^2 + x + 1
end

println(fn(3, 4))

# closure
foo(x) = () -> x
closure = foo(3)
println(closure())

# closure
bar(x) = function (y)
  x + y
end
closure2 = bar(3)
println(closure2(2))

# currying
compose(x) = (func) -> func(x + 1)
# curr = (func) -> func(3 + 1)
# func = x -> x * 2
# thus, when x = 3 ==> (3 + 1) * 2 ==> 8
curr = compose(3)
println(curr(x -> x * 2))