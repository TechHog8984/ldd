-- https://lua.expert/
local v1 = 100
local v2 = shared
local v3 = shared

v2.a = v1
v3.b = v1

local function f4() --[[ Line: 4 ]] end

shared.b123 = f4
shared.a123 = f4

local v5 = glob()

glob1 = v5
glob2 = v5;
(function(p1, p2, p3, ...) --[[ Line: 13 ]]
	return p1 - p3
end)()

local v6 = 73

_G.a = v6

for i = 1, 100 do
	for j = i, 100 do
		for k = j, 100 do
			for n = 4, 100 do
				for m = 5, 100 do
					for i2 = m, 100 do
						for i3 = i2, 100 do
							print(i3 + i2 - v6)
						end
					end
				end
			end
		end
	end
end

for v7, v8, v9, v10 in foo do
	glob(v7, v9)
	function glob2() --[[ Line: 38 | Upvalues: v7 (copy) ]]
		return v7
	end
	function glob3() --[[ Line: 41 ]] end
end

local _, v11, _2, _3, _4 = (function() --[[ Line: 44 ]]
	return 1, 2, 3
end)()

print(v11 + 3)
print(foo() - 3)
print({ 1 })
print({ fowersfewrwewewerewrwerrwwrwrrwwr3322qweruqiweriuqweiurwerqwerqweryuiqweriuqweriuqweuirqwuierw3() })
print({
	[2] = 100
})
print({
	1,
	2,
	3,
	4,
	5,
	6,
	7,
	8,
	23432432414432,
	2.3423414324242424e16
})

local _5 = (function() --[[ Line: 58 ]] end)() + 0
local t = {}
local t2 = {}

glob = t
glob2 = t
glob3 = t2
glob4 = t2

local function f13() --[[ Line: 68 ]]
	return 1
end

glob5 = f13
glob6 = f13

local goodcharacters = game:WaitForChild("goodcharacters")
local v14 = shared
local v15 = shared

v14.a = goodcharacters
v15.b = goodcharacters

local v16 = game:WaitForChild("bad characters")
local v17 = shared
local v18 = shared

v17.a = v16
v18.b = v16

local v19 = game:WaitForChild("bad-characters")
local v20 = shared
local v21 = shared

v20.a = v19
v21.b = v19

local v22 = game:WaitForChild("1badcharacters")
local v23 = shared
local v24 = shared

v23.a = v22
v24.b = v22;
(function(p1) --[[ Line: 81 ]]
	local v1 = game:FindFirstChild(p1)
	local v2 = game:FindFirstChild(p1)
	local v3 = game:WaitForChild(p2)
	local v4 = v1:WaitForChild("700")

	return v1, v3, v4, v3:WaitForChild(v2), v4:WaitForChild(), v2
end)(workspace)

local Testinglol = workspace:GetService("Testinglol")

print(Testinglol)
shared.a = Testinglol

local fakeservice123 = (100):GetService("fakeservice123")

print(fakeservice123)
shared.a = fakeservice123

local fakeservice1232 = (100):FindFirstChild("fakeservice123")

print(fakeservice1232)
shared.a = fakeservice1232
game:WaitForChild({
	[setmetatable({}, {
		__metatable = "The metatable is locked",
		__tostring = function() --[[ Line: 113 | Upvalues: v22 (ref), t (ref) ]]
			for i = 1, 15 do
				if not pcall(function() --[[ Line: 116 | Upvalues: i (copy), v22 (ref), t (ref) ]]
					if getfenv(i).script == script or not v22 then
						return
					end

					v22 = 1
					t = 30
					v375[1][v375[3]] = "Namecall Detected"
				end) then
					break
				end
			end
		end
	})] = ""
}, 1)

local somethingcool = game.somethingcool

shared.a = somethingcool
shared.b = somethingcool

local somethingcool2 = game.somethingcool

shared.a = somethingcool2
shared.b = somethingcool2
print(if foo() then bar else baz)

local v27 = shared

v27.a = v27.a + 141

local v28 = shared

v28.b = v28.b - 41

local count = 10

for i = 1, 10 do
	if i == 1 then
		count = count + 1
	end
end
