---@meta


---
---Use the Log object to write messages and errors to the Q-SYS Core processor's system log file.
---
---[Open in Browser](https://help.qsys.com/Index.htm#Control_Scripting/Using_Lua_in_Q-Sys/Log.htm)
---
---@class Log
Log = {}


---
---Write a log message to the Core's log file.
---
---@param logMsg string
function Log.Message(logMsg) end


---
---Write an error message to the Core's log file.
---
---@param errorMsg string
function Log.Error(errorMsg) end


return Log
