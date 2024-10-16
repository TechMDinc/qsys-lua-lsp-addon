---@meta


---
---[Open in Browser](https://help.qsys.com/Index.htm#Control_Scripting/Using_Lua_in_Q-Sys/Controls_IO.htm)
---


---@class Control
---@field Value number
---@field Values number[]
---@field Position number
---@field String string
---@field Boolean boolean
---@field Legend string
---@field RampTime number
---@field Index number
---@field IsInvisible boolean
---@field IsDisabled boolean
---@field IsIndeterminate boolean
---@field Color string
---@field Choices string[]
---@field CssClass string
---@field EventHandler fun(ctrl: Control): nil


---@class Controls
---@field Inputs Control[]
---@field Outputs Control[]
---@field [string] Control
Controls = {}


return Controls
