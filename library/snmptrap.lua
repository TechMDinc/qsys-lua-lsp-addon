---@meta


---
---Use the SNMPTrap library in Lua to receive trap notifications from an SNMP-enabled device.
---
---[Open in Browser](https://help.qsys.com/q-sys_9.10/#Control_Scripting/Using_Lua_in_Q-Sys/SNMPTrap.htm)
---
---@class SNMPTrap
SNMPTrap = {}


---@class snmp_trap
---@field EventHandler fun(response: snmp_response): nil Assign a Lua callback for successful SNMP events.
---@field ErrorHandler fun(response: snmp_error): nil Assign a Lua callback for SNMP error events.
local snmp_trap = {}


---
---Begin a trap listening session.
---
function snmp_trap:startSession() end


---
---Create a new SNMP trap listener.
---
---@param trapName string
---@return snmp_trap
function SNMPTrap.New(trapName) end


return SNMPTrap
