function hello(name)
  print("hello".." "..name)
  return true
end

function addString(...)
	print("We got ", select("#",...), "arguments")
	string = ""
	for index, value in ipairs{...}do
		string = string..value
	end
	return string
end

print(hello("mom"))
print(addString("I ", "am ", "Claude"))

-- anonymous function
var = function(arg)
  return arg
end

print(var(100))

function newFunc(num, fun)
	print(num)
	print("From anonymous function", fun())
end

newFunc(10, function() return 100 end)
