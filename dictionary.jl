eng2sp = Dict()
eng2sp["one"] = "uno"
println(eng2sp)

eng2spanish = Dict("one" => "uno", "two" => "dos", "three" => "tres")
println(eng2spanish)

# keySet()
keyset = keys(eng2spanish)
# keys returns Base.KeySet not an array
println(typeof(keyset))
# values()
valuesSet = values(eng2spanish)
println(keyset)
println(valuesSet)

# java: getOrDefault()
println(get(eng2sp, "two", "dos"))

alphabet = Dict("a" => 3, "c" => 44, "b" => 2)
# use collect() to convert Base.KeySet into array object
for key in sort(collect(keys(alphabet)))
  println("$(key) : $(alphabet[key])")
end

known = Dict(0 => 0, 1 => 1)
function fibonacci(n)
  if n in keys(known)
    return known[n]
  end
  res = fibonacci(n - 1) + fibonacci(n - 2)
  known[n] = res
  return res
end

println(fibonacci(4))