function distance(x1, y1, x2, y2)
  dx = x2 - x1
  dy = y2 - y1
  di = dx^2 + dy^2
  @show di
  sqrt(di)
end

answer = distance(1, 2, 4, 6)

println(answer)

function countdown(n)
  while n > 0
    print(n, " ")
    n = n - 1
  end
  println("Blastoff!")
end

countdown(5)

function newtonSqrtRoot(a, x)
  while true
    println(x)
    y = (x + a / x) / 2
    if abs(y - x) < 0.00000000001
      break
    end
    x = y
  end
end

newtonSqrtRoot(4, 3)