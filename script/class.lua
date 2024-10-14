myClass = {
  property1 = 10,
  show_property = function(self)
    print("property1 is"..self.property1) 
  end,
  property2 = 2,
}

myClass.__index = myclass

-----------------------------------------------------
Person = {} -- Person declared as a global table 
function Person:new(name, age) -- pass Person itself into the function by using :
	local instance = {}
	setmetatable(instance, self) -- set the metatable of Jen
	self.__index = self -- Person.__index = Person
	-- so when Jen got unknown index, will look for meta
	instance.name = name
	instance.age = age
	return instance
end

function Person:greet() -- table has a method
	print("Hello, my name is "..self.name)
end

function Person:showAge()
	print(self.name.." is "..self.age.." years old")	
end


-- perform inheritance
Soldier = Person:new()
-- an instance is actually create by the same mechamism as inheritance
function Soldier:new(name, age, rank)
	local instance = Person:new(name, age)	
	setmetatable(instance, self) -- set Soldier as metatable for this instance
	-- soldier is instance's metatable, 
	self.__index = self
	-- instance will look for Soldier
	-- Soldier got Person as its metatable, will look for Person
	instance.rank = rank
	return instance
end

function Soldier:greet()
	print("Hello, my name is "..self.name.." my rank is "..self.rank)
end


local p1 = Person:new("Tina", 22)
p1:greet()

local me = Soldier:new("Claude", 20, "Private")
me:greet()
me:showAge()
-----------------------------------------------------
--[[
House = {height = 0}
function House:size()
	print("The height is 100 meters")
	print("The height is"..House.height.."feet")
end
House.__index = House
function House:constructor(meter)
	self.meter = meter
	self.height = meter * 3.2808399
	instance = {}
	setmetatable(instance, House)
	return instance
end
myHouse = House:constructor(nil, 100)
myHouse:size()
]]--
