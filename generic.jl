try
  (1 + 2)::Float64  
catch e
  # type error
  println(e)
end

i3 = (1 + 2)::Int64
println(typeof(i3), " ", i3)

function typing()
  # type declarations on global var are not yet supported
  x::Float64 = 123
  # 123.0 not 123
  println(x)
end
typing()

struct UrTime
  h::Int64
  m::Int64
  s::Int64

  # 디폴트 파라미터를 모두 지정하였으므로, 이 객체는 총 4개의 생성자를 가진다
  # UrTime()
  # UrTime(h::Int64 = 0)
  # UrTime(h::Int64 = 0, m::Int64 = 0)
  # UrTime(h::Int64 = 0, m::Int64 = 0, s::Int64 = 0)
  function UrTime(h::Int64 = 0, m::Int64 = 0, s::Int64 = 0)
    @assert(0 <= h < 24, "hour should be between 0 and 24")
    @assert(0 <= m < 60, "minute should be between 0 and 60")
    @assert(0 <= s < 60, "second should be between 0 and 60")
    new(h, m, s)
  end
end

println(UrTime())
println(UrTime(3))
println(UrTime(3, 24))
println(UrTime(3, 24, 30))

function toSeconds(time::UrTime)::Int128
  seconds::Int = time.s + time.m * 60 + time.h * 3600
  if seconds < 0
    0
  end
  seconds
end

durationSec = toSeconds(UrTime(13, 33, 12))
println(typeof(durationSec), " ", durationSec)

# 구조체의 식별자와 똑같은 이름의 함수를 구조체 외부에서 선언할 수 있다
function UrTime(time::UrTime)
  UrTime(time.h, time.m, time.s)
end

originTime = UrTime(0, 1, 2)
copiedTime = UrTime(originTime)

println(originTime, " ", copiedTime, " ", originTime == copiedTime)

# it is the same purpose as java: Object.toString()
function Base.show(io::IO, time::UrTime)
  print(io, "$(time.h) hour : $(time.m) minute : $(time.s) second")
end
# it is overrode method
println(originTime)

# operator overloading
import Base.+
function +(t1::UrTime, t2::UrTime)
  UrTime(t1.h + t2.h, t1.m + t2.m, t1.s + t2.s)
end

println(originTime + copiedTime)
# 객체 UrTime 에 대하여 연산자 '+' 를 오버로딩 하였으므로, sum() 같은 표준함수에 인자로도 전달 가능하다
println(sum([originTime, copiedTime, UrTime(10, 10, 10)]))