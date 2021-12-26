charX = 'x'

# Char
println(typeof(charX))

# UTF-8 encoding
fruit = "banana"
# index starts by 1
letterFirst = fruit[1]
letterSecond = fruit[2]
# index end
letterEnd = fruit[end]
# baa
println(letterFirst, letterSecond, letterEnd)

korean = "한글임"

println("length : ", length(korean))
println("sizeof : ", sizeof(korean))

# 문자열의 인덱스는 문자열을 구성하는 각 문자가 시작하는 바이트 자리를 의미 (인코딩되어 보이는 문자열의 각 문자 위치가 아님)
# UTF-8 은 현재 한 문자당 최소 1바이트에서 많게는 4바이트 까지 가변적으로 사용
# 따라서 문자열의 인덱스는 항상 1부터 시작하지만, 그 이후로는 반드시 2, 3, 4 의 순서로 간다는 보장이 없음
letterKoreanFirst = korean[1]

# 영문이었다면 문자 하다당 1바이트만 사용하므로 유효하지만, 한글은 문자당 3바이트를 사용하므로 아래의 코드는 익셉션 발생
# letterKoreanSecond = korean[2]

# 문자열의 각 문자의 '바이트-인덱스' 를 반환하는 함수
koreansSecondStringIndex = nextind(korean, 1)
# 4
println("String korean's second index : ", koreansSecondStringIndex)

letterKoreanSecond = korean[4]
letterKoreanLast = korean[end]

println(letterKoreanFirst, letterKoreanSecond, letterKoreanLast)

index = firstindex(fruit)
while index <= sizeof(fruit)
  letter = fruit[index]
  println(letter)
  global index = nextind(fruit, index)
end

for letter in fruit
  println(letter)
end

# slice string by byte-index
sliced = fruit[2:3]
println(sliced)
println(fruit[:])

# $ for eval
oneString = "1"
println("$(oneString) + 2 = $(1 + 2)")

println(findnext("na", fruit, 4))

# ∈ (same as 'in') is boolean operator
booleanResult = 'a' ∈ fruit
booleanResult2 = 'b' in fruit
println(booleanResult, booleanResult2)

# 문자열 비교는 일반적인 비교연산자를 사용한다
bool3 = fruit == "banana"
println(bool3)
bool4 = fruit <= "abc"
println(bool4)