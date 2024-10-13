counter = 1
while(counter < 10)
do
	print(counter)
	counter = counter +1
end

print(string.format("\n\n"))

for num=0, 8, 1 do
	print(num)
end

Table = {"A", "B", "C", "D"}

for index,value in ipairs(Table) do
	print(index, value)
end

num = 0
repeat
	print(num)
	num = num + 1
until(num > 10)

