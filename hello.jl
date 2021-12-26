println("Hello world!")

ratio = 200 / 10;
decibels = 10 * log10(ratio)

println(decibels)

radians = 1

height = sin(radians)

degrees = 45
radian = degrees / 180 * pi
println(sin(radian))

x = sin(degrees / 360 * 2 * pi)
println(x)

xx = exp(log(x + 1))
println(xx)

function repeatlyrics()
  printlyrics()
  printlyrics()
end

function printlyrics()
  println("I am a lumberjack, and I'm okay")
  println("I sleep all night and I work all day")
end

nothingResult = repeatlyrics()

show(nothingResult)

"""
this is docstring
"""
function doTwice(f, text)
  f(text)
  f(text)
end

function printSpam(text)
  println(text^2)
end

doTwice(printSpam, "Spam!")
doTwice(printSpam, 4)

x = 30
y = 10
if x > y
  println("x > y")
elseif x < y
  println("x < y")
else
  println("x = y")
end

if 0 < x <= 30
  println("0 < x <= 30")
end

function area(radius)
  a = pi * radius^2
  return a
end

# 리턴문이 없더라도 함수에서 가장 마지막에 평가된 식의 값이 반환된다
function areaSame(radius)
  pi * radius^2
end

println(area(2))
println(areaSame(2))

