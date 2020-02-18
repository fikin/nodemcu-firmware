local function timeIt(fnc, cnt)
  local function loopIt(f2)
    local t0 = tmr.ccount()
    for i = 1, cnt do
      f2()
    end
    local t1 = tmr.ccount()
    return math.ceil((t1 - t0) / cnt)
  end
  assert(type(fnc) == "function", "function to test missing")
  cnt = cnt or 1000
  local emptyTime =
    loopIt(
    function()
    end
  )
  local deltaCPUTicks = math.abs(loopIt(fnc) - emptyTime)
  local deltaUS = math.ceil(deltaCPUTicks / node.getcpufreq())
  return deltaCPUTicks, deltaUS
end

local function luaOverheadCallingC()
  return timeIt(
    function()
      benchmark.call_empty()
    end
  )
end

local function cOverheadCallingLua()
  local ticks =
    benchmark.bench_lua_func(
    function()
    end
  )
  return ticks, math.ceil(ticks / node.getcpufreq())
end

return {
  timeIt = timeIt,
  luaOverheadCallingC = luaOverheadCallingC,
  cOverheadCallingLua = cOverheadCallingLua
}
