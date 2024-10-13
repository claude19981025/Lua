string1='string1'
string2="string2"
string3=[[string3]]

print(string1, string2, string3)

print("\'\n\"")

print("page 1 \fpage2")

print("\101")
print("\x41")

-- format
print(string.format("%c",68))
print(string.format("%6.6d",68.0000))
--6: 6 digit wide
--.5: only display 5 digit
print(string.format("%o",8))

print(string.format("%8.6s","Hello"))

test="hello"
test_len=#test
print("test length: ",test_len)

print(string.find("Hello world", "orl"))

print(string.rep("one",3))

print("string1".."string2")

print("a > b", 4 > 4)

print("true and false", true and false)
