x, y, z = -1, -1, -1;

# create let block; it has own isolated scope
let x = 1, z
  z = 2
  # x is block var, init by 1 only in let block
  # y is global var
  # z is block var, init by 2 only in let block
  @show x y z;
end
# global var is safe
@show x y z;

# try-with-resource
open("output.txt") do fout
  println(readline(fout))
end

