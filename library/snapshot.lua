---@meta


---
---Use the Snapshot methods to view, load, and save snapshots in the running design.
---
---[Open in Browser](https://help.qsys.com/q-sys_9.10/#Control_Scripting/Using_Lua_in_Q-Sys/Snapshot.htm)
---
---@class Snapshot
Snapshot = {}


---
---Returns a table of snapshots in the design.
---
---@return string[]
function Snapshot.GetNames() end


---
---Loads a snapshot with the provided name and bank with an optional ramp time.
---
---@param name string
---@param bank number
---@param ramp? number
function Snapshot.Load(name, bank, ramp) end


---
---Saves a snapshot with a provided name and bank.
---
---@param name string
---@param bank number
function Snapshot.Save(name, bank) end


return Snapshot
