t = 'a', 'b', 'c', 'd'
t2 = ('a', 'b', 'c', 'd')
println(typeof(t), "->", t)
println(typeof(t2), "->", t2)

t1 = (1,)
notTuple = (1)
println(typeof(t1))
println(typeof(notTuple))

# tuple constructor
t3 = tuple(1, 'v', pi)
println(t3)

println((0,1,2) < (0,2,1))
println((0,1,20000) <= (0,2,0))
println((0,1,2) == (0,1,2))

tu0 = (0,1,2)
tu1 = (0,1,2)
# tuple 은 문자열처럼 불변객체이기 때문에 같은 자료이면 같은 참조값을 가진다. 따라서 true
# true
println(tu1 === tu1)

arr0 = [1, 2, 3]
arr1 = [1, 2, 3]
# array is mutable
# false
println(arr0 === arr1)

# tuple assignment
a = "a"
b = "b"
a, b = b, a
# ba
println(a, b)

# tuple assignment
(ta, ta1) = (1, 2, 3)
println(ta)
println(ta1)

# tuple assignment
addr = "dohp.kim@gmail.com"
uname, domain = split(addr, "@")
println("uname : $(uname) / domain : $(domain)")

# tuple assignment
fool, correct = (0 > 10), (4 <= 7)
println(fool, " ", correct)

# tuple as a return-value for function
function minMax(t)
  minimum(t), maximum(t)
end

minMaxTuple = minMax([1,2])
minV, maxV = minMax([3,4])

println(minMaxTuple)
println(minV, " ", maxV)

function minMax2(t)
  return minimum(t), maximum(t)
end

println(minMax2([5,44]))

function minMax3(t)
  return (minimum(t), maximum(t))
end

println(minMax3([3, 333]))

# 가변인자
function printAll(args...)
  println(args)
end

printAll(1, 3.4, "haha")

numsTp = (1, 3, 4)
println(max(numsTp...))

# Zip object
ss = "abc"
ar = [1, 2, 3]
for pair in zip(ss, ar)
  println("$(typeof(pair)) : $(pair)")
end

# tuple assignment in for-loop
for (letter, number) in zip(ss, ar)
  println(number, " ", letter)
end

# multiple tuple assignment
for (index, (letter, number)) in enumerate(zip(ss, ar))
  println(index, " : ", letter, " ", number)
end

# tuple and dictionary
d1 = Dict([("a", 10), ("b", 20), ("c", 30)])
println(d1)

d2 = Dict(zip("abc", [10, 20, 30]))
println(d2)

# array, tuple, dictionary and multiple tuple assignment
nameTpArr = [("Nick", "Kim"), ("Milly", "Cat"), ("Sully", "Kim")]
phoneArr = ["334-3534", "344-1113", "053-343-1134"]
d3 = Dict(zip(nameTpArr, phoneArr))
for (index, ((last, first), phone)) in enumerate(d3)
  println("index:$(index) -> $(last) $(first) : $(phone)")
end