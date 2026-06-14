# ldd - Lua Decompiler Detector

I want to make a tool that detects what decompiler was used on a given output, but I'm lazy so for now I'm just going to start writing down some facts about decompilers.

Note that decompilers can have extensive customizability and unless otherwise stated each fact pertains to the default settings.

When describing a 'format', a lua pattern will be used (a leading ^ and a trailing $ is usually implied).

## [Oracle](https://oracle.mshq.dev/)
* output is very accurate to the compiled bytecode
* extensive customizability so take with a grain of salt
* supports Luau v? - v11, PUC-Rio Lua 4.0 - 5.5 (v2 docs says it only supports 5.1 but I doubt that...), LuaJIT
* can output if expressions and compound assigments if configured (both default to true in Luau, but it will emit them for other versions if so desired)
* variables follow the format \[vtu]%d (I'm not sure whether or not you can find any one of these alone, but I have not encountered them EXCEPT for n which can be a for loop variable)
  * n%d is used when the variable is declared as a number (`local n1 = 40`)
  * t%d is used when the variable is declared as a table (`local t2 = { 1 }`)
  * u%d is used for variables that get used as upvalues (and do NOT already fit any of the above formats)
  * v%d is used in other cases
* function names follow the format follow v%d
* function parameters follow the format p%d (not always starting at 1)
* _ and __ are omitted for unused variables (__ seems to be used in for loops and function parameters while _ is used for general variables such as `local _ = (function()end)() + 1`[^o1])
  * this holds true for for loop variables
* dynamic table output:
  * empty tables will be on one line (`local t3 = {}`)
  * lists with one item will be on one line with the value surrounded by spaces (`local t2 = { globalfunction() }`)
  * other types of tables span multiple lines and are separated with a comma (except for the last element) and a new line. this includes tables such as { \[2] = 10 } despite having arguably "only one element"
  * examples:
```luau
print({ 1 })
print({ superlongglobalfunctionname1234567890() })
print({
	[2] = 100
})
```
* for loop variables follow the format \[ijkn]%d?
  * i, j, and k are used in that order for each nested loop
  * upon reaching 4 nested loops, variables start using n (when applicable) then n%d
* for step is omitted if it's 1
* function bodies always have a new line even when empty
* function comments look like -- line: %d (newline) -- upvalues: var (copy|ref), ...
* global function definitions look like: function name() ...
* variable renaming:
  * :GetService(str) results become str (the object is irrelevant)
  * var.index results become index if the string is a valid identifier, otherwise fallback to normal variable renaming. duplicates follow index%d
  * :FindFirstChild and :WaitForChild(str) results become str (same rules as above)
  * :Connect results follow the format connection%d?
  * transformations: results of `a:func(var)` become var_2 then var_3 and so on. if var already looks like var_%d (has underscore or maybe just is a result of this process? I'm unsure) then this won't happen
    * NOTE: only works on object:FindFirstChild and object:WaitForChild (maybe other functions exist but they're case sensitive and it has to be a namecall, etc.)
* frequent use of new lines for readability
  * example:
```luau
local v1 = if not foo() then baz else bar

g_var = v1

return v1
```
* usage of `do ... end` to scope variables (I imagine to combat limits)
[^o1]: (Oracle) not a real output (empty functions have a newline)

## [lua.expert](https://lua.expert)
* supports Luau v? - v9, maybe more? (lua 5.1 failed and I'm not gonna test any other)
* no customizability, yay!
* variables follow the format \[vt]%d?
  * t%d? is used when the variable is declared as a table (`local t = { 1 }`, `local t2 = {}`)
  * v%d is used in other cases
* function names follow the format f%d
* function parameters follow the format p%d (always starting at 1)
* unused variables follow the format _%d? (yes it is an incrementing count for whatever reason)
  * unused function parameters and for loop variables undergo NO change
* dynamic table output (see Oracle)
* for loop variables follow the format \[ikjnm]%d?
  * i, j, k, n, and m are used in that order for each nested loop
  * upon reaching 6 nested loops, variables start using i%d (starting at 2)
* for step is omitted if it's 1
* functions with empty bodies are kept on one line
* function comments look like --\[\[ Line: %d, Upvalues: var (copy|ref), ... ]]
* global function definitions look like: function name() ...
* variable renaming:
  * :GetService(str) results become str (the object is irrelevant)
  * var.index results become index if the string is a valid identifier, otherwise fallback to normal variable renaming. duplicates follow index%d
  * :FindFirstChild and :WaitForChild(str) results become str (same rules as above)
* similar newline usage to oracle but at a lower frequency
* usage of `do ... end` to scope variables, also at a lower frequency than Oracle

## [medal](https://github.com/shrimp-nz/medal)
* outputs are commonly broken and some inputs don't work
* supports PUC-Rio Lua 5.1, Luau v4 - v6
* no customizability, yay!
* variables follow the format v%d
  * variables used as upvalues follow the format v_u_%d
* function names follow the format v%d
* function parameters follow the format p%d
* unused variables and parameters become _
  * unused for loop variables undergo NO change
* dynamic table output (see Oracle)
* for loop variables use the same format as normal variables (minus unused of course)
* for step is omitted if it's 1
* functions with empty bodies are kept on one line
* function comments look like (at the top of the body) --upvalues: (copy|ref) v_u_%d, ...
* no variable renaming
* no extra newlines
