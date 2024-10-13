myTable={"A","B"}
table.insert(myTable, 1, "C")

myTable["value"] = 10

for index, value in pairs(myTable) do
	print("Index",index,"Value",value)
end
print(string.format("\n"))

table.remove(myTable, 2)

for index, value in pairs(myTable) do
	print("Index",index,"Value",value)
end

print(string.format("\n"))

table.sort(myTable)
for index, value in pairs(myTable) do
	print("Index",index,"Value",value)
end

-- access table element
print("myTable.value", myTable.value)

myTable.value2 = 20
function myTable:testFunction()
	print("testFunction")
end
print("myTable.value2", myTable.value2)
myTable:testFunction()
