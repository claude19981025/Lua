table = {}
table.book = "Java"

metatable = {}
metatable["__index"] = function()
  print("Warning !! Invalid Index")
end
metatable["__call"] = function(self, a, b, c)
  print("This method doesn't exist")
  return a + b + c
end

metatable["__newindex"] = function()
  print("Assign a value to a missing index!")
end

setmetatable(table, metatable)

print(table.code)

print(table(1,2,3))

table[book2]="Perl"
