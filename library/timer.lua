---@meta


---
---The Timer object is used to create delays or trigger events after a defined elapsed time.
---It should be used instead of Lua's native delay and time functions.
---
---[Open in Browser](https://help.qsys.com/q-sys_9.10/#Control_Scripting/Using_Lua_in_Q-Sys/Timer.htm)
---
---@class Timer
Timer = {}


---
---Creates a simple timer that calls a named function after a specified delay time.
---
---@param callback function
---@param delay number
function Timer.CallAfter(callback, delay) end


---
---Creates a named timer using Start and Stop methods.
---
---@return timer
function Timer.New() end


---@class timer
---@field EventHandler fun(timer: timer): nil
local timer = {}


---
---Starts the timer.
---
---@param interval number
function timer:Start(interval) end


---
---Stops the timer.
---
function timer:Stop() end


---
---Returns true if the timer is running.
---
---@return boolean
function timer:IsRunning() end


return Timer
