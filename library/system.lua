---@meta


---
---Use the System functions to return Q-SYS environment information.
---
---[Open in Browser](https://help.qsys.com/q-sys_9.10/#Control_Scripting/Using_Lua_in_Q-Sys/System.htm)
---
---@class System
---@field MajorVersion string Returns the major version number of Q-SYS environment.
---@field MinorVersion string Returns the minor version number of Q-SYS environment.
---@field BuildVersion string Returns the build version number of Q-SYS environment.
---@field Version string Returns the complete version number of Q-SYS environment.
---@field LockingId string Returns the Q-SYS Core's Locking ID, used for Q-SYS feature license activation.
---@field IsEmulating boolean Indicates whether the design is emulating or running on a Core.
System = {}


return System
