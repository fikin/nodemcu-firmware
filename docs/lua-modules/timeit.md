# TimeIT Module

| Since  | Origin / Contributor  | Maintainer  | Source  |
| :----- | :-------------------- | :---------- | :------ |
| 2020-01-20 | [fikin](https://github.com/fikin) | [fikin](https://github.com/fikin) | [timeit.lua](../../lua_modules/timeit/timeit.lua) |

This Lua module offers methods for timing execution of Lua functions.

## Require

```lua
ti = require("timeit")
```

## Release

```lua
ti = nil
```

## timeit.timeIt()

Times given function.

### Syntax

`timeit.timeIt(function()end, [repetitions])`

### Parameters

- `function` A lua function to time
- `repetitions` Aggregate function time over that many calls. Default value is 1000.

### Returns

- `cpu ticks` function time in CPU ticks
- `us` function time in micro seconds

## timeit.luaOverheadCallingC()

What is the overhead of calling C method from Lua?

### Syntax

`timeit.luaOverheadCallingC()`

### Parameters

`nil`

### Returns

- `cpu ticks` function time in CPU ticks
- `us` function time in micro seconds

## timeit.cOverheadCallingLua()

What is the overhead of calling Lua from C method?

### Syntax

`timeit.cOverheadCallingLua()`

### Parameters

`nil`

### Returns

- `cpu ticks` function time in CPU ticks
- `us` function time in micro seconds
