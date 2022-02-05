mutex = true

function example()
  if !mutex
    return
  end
  println("before job mutex : $(mutex)")
  # use global keyword for assignment
  global mutex = false
  println("lock mutex : $(mutex)")
  println("do something...")
  global mutex = true
  println("unlock mutex : $(mutex)")
end

example()

# const such as final keyword
const finalVariable = "final"
# finalVariable = "warning"

const array1 = [1, 2, 3]
function doit()
  # can manipulate a container even though it has const keyword
  push!(array1, 4)
  # but this fails
  # global array1 = []
end

doit()
println(array1)

