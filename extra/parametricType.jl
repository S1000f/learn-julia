
# java: generic class
# class Point<T extends Real>
struct Point{T <: Real}
  x::T
  y::T
  Point{T}(x, y) where {T <: Real} = new(x, y);
  Point(x::T, y::T) where {T <: Real} = Point{T}(x, y);
end

println(Point{Float64}(33.33, 55.55))
println(Point(2.0, 3.0))
println(Point(2, 3))

# generic methods
# public <T extends Real> boolean isIntPoint(Point<T> p);
isIntPoint(p::Point{T}) where {T <: Real} = (T === Int64)
p = Point(2.0, 1.1)
println(isIntPoint(p))

# functor
(p::Point)(dx) = println("new X : $(p.x + dx), new Y : $(p.y + dx)")
p(4)

# functor with closure and currying
(p::Point)(dx) = (f) -> (p.x + f(dx), p.y + f(dx))
closure = p(4)
println(closure(x -> x * 2))

# Union is an abstract parametric type
IntOrString = Union{Int64, String}
println(110::IntOrString, " :", typeof(110::IntOrString))
println("Julia"::IntOrString, " :", typeof("Julia"::IntOrString))

