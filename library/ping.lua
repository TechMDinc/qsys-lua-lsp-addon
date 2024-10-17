---@meta


---
---Use the Ping library in Lua to check whether a device is reachable on the network.
---
---[Open in Browser](https://help.qsys.com/Index.htm#Control_Scripting/Using_Lua_in_Q-Sys/Ping.htm)
---
---@class Ping
Ping = {}


---@class PingResponse
---@field ElapsedTime number Amount of time for the ping, in microseconds.
---@field HostName string The hostname that was pinged.


---@class PingError
---@field Error string Description of the error.
---@field HostName string The hostname that was pinged.


---@class PingObject
---@field EventHandler fun(response: PingResponse): nil
---@field ErrorHandler fun(err: PingError): nil
local PingObject = {}


---
---Create a new ping object.
---
---@param targetHost string
---@return PingObject
function Ping.New(targetHost) end


---
---Begin the ping session.
---
---@param singleShot boolean Set to true for a single ping attempt.
function PingObject:start(singleShot) end


---
---Stop the ping session.
---
function PingObject:stop() end


---
---Set the timeout for waiting for a ping response.
---
---@param interval number The timeout duration, in seconds.
function PingObject:setTimeoutInterval(interval) end


---
---Set the interval for retrying after a ping request.
---
---@param interval number The ping interval duration, in seconds.
function PingObject:setPingInterval(interval) end


return Ping
