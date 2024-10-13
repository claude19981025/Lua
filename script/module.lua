local module = {} -- define a module

module.var1 = 10

module.greet = function(name) -- anonymous function member
  return "Hello, "..name
end

module.add = function(var1, var2)
  return var1 + var2
end

return module

