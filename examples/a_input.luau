local n = 100
shared.a, shared.b = n, n

local function a()

end
shared.b123 = a
shared.a123 = a

local v = glob()
glob1, glob2 = v, v

local function func123(a, b, c, ...)
    return a - c
end
func123()

local var = 72 + 1
_G.a = var
for a = 1, 100 do
  for b = a, 100 do
    for c = b, 100 do
      for d = 4, 100 do
        for e = 5, 100 do
          for f = e, 100 do
            for g = f, 100 do
              print(g + f - var)
            end
          end
        end
      end
    end
  end
end

for a,b,c,d in foo do
  glob(a, c)
  glob2 = function()
    return a
  end
  glob3 = function() end
end

local a,b,c,d,e = (function()return 1,2,3;end)()

a = nil

print(b + 3)

local var2 = foo()
print(var2 - 3)

print{1}
print{fowersfewrwewewerewrwerrwwrwrrwwr3322qweruqiweriuqweiurwerqwerqweryuiqweriuqweriuqweuirqwuierw3()}
print{[2] = 100}
print{1,2,3,4,5,6,7,8,23432432414432,23423414324242424}

local sum = (function()end)()
local asum = sum + 0

local table1 = {}
local b = {}
glob = table1
glob2 = table1
glob3 = b
glob4 = b

local a2 = function() return 1 end
glob5 = a2
glob6 = a2

local a = game:WaitForChild("goodcharacters")
shared.a, shared.b = a, a
local b = game:WaitForChild("bad characters")
shared.a, shared.b = b, b
local b = game:WaitForChild("bad-characters")
shared.a, shared.b = b, b
local b = game:WaitForChild("1badcharacters")
shared.a, shared.b = b, b

local function func(p1)
  local first = game:FindFirstChild(p1)
  local t = game:FindFirstChild(p1)
  local second = game:WaitForChild(p2)

  local secondv2 = first:WaitForChild("700")
  local dummy = second:WaitForChild(t)
  local dummy2 = secondv2:WaitForChild()

  return first, second, secondv2, dummy, dummy2, t
end

func(workspace)
local a = workspace:GetService("Testinglol")
print(a)
shared.a = a
local a = (100):GetService("fakeservice123")
print(a)
shared.a = a
-- local a = (100):getService("fakeservice123")
-- print(a)
-- shared.a = a
-- local a = (100):service("fakeservice123")
-- print(a)
-- shared.a = a
local a = (100):FindFirstChild("fakeservice123")
print(a)
shared.a = a

game:WaitForChild({
	[setmetatable({}, {
		__metatable = "The metatable is locked",
		__tostring = function() --[[ __tostring ]] -- line: 107
			-- upvalues: v375 (copy)
			for i = 1, 15 do
				if not pcall(function() -- line: 107
					-- upvalues: i (copy), v375 (copy)
					if getfenv(i).script ~= script  and b then
						b = 1
						table1 = 30
						v375[1][v375[3]] = "Namecall Detected"
					end
				end) then
					return
				end
			end
		end
	})] = ""
}, 1)


local a = game.somethingcool
shared.a = a
shared.b = a

local b = game.somethingcool
shared.a = b
shared.b = b

print(if foo() then bar else baz)

shared.a += 141; shared.b -= 41

local n = 10
for i = 1, 10 do
	if i == 1 then
		n += 1
	end
end
