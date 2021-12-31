struct Point
  x
  y
end

p = Point(3.0, 5.0)
println(p)
println(p.x)

mutable struct MuPoint
  x
  y
end

"""
represents a rectangle.

fields: width, height, corner
"""
struct Rectangle
  width
  height
  corner
end

origin = MuPoint(0.0, 0.0)
box = Rectangle(100.0, 200.0, origin)
println(box)

p1 = MuPoint(1, 2)
p2 = deepcopy(p1)

println(p1 ≡ p2)
println(p1 == p2)

"""
represents the time of day.

fields: hour, minute, second
"""
struct MyTime
  hour
  minute
  second
end

function isafter(t1, t2)
  (t1.hour, t1.minute, t1.second) > (t2.hour, t2.minute, t2.second)
end

println(isafter(MyTime(3, 0, 59), MyTime(13, 29, 44)))

