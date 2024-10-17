---@meta


---
---The methods in NamedControl are used to read or set the values of Named Controls.
---
---[Open in Browser](https://help.qsys.com/Index.htm#Control_Scripting/Using_Lua_in_Q-Sys/NamedControl.htm)
---
---@class NamedControl
NamedControl = {}


---
---Sets control with specified Control name to specified string value.
---If Control name does not exist an error is raised.
---
---@param name string
---@param str string
function NamedControl.SetString(name, str) end


---
---Returns string of control with specified Control name.
---If Control name does not exist an error is raised.
---
---@param name string
---@return string
function NamedControl.GetString(name) end


---
---Sets control with specified Control name to specified position.
---The ramp time is optional, and is in seconds. If Control name
---does not exist an error is raised.
---
---@param name string
---@param position number
---@param ramp? number
function NamedControl.SetPosition(name, position, ramp) end


---
---Returns position of control with specified Control name.
---If Control name does not exist an error is raised.
---
---@param name string
---@return number
function NamedControl.GetPosition(name) end


---
---Sets control with specified Control name to specified value.
---The ramp time is optional, and is in seconds. If Control name
---does not exist an error is raised.
---
---@param name string
---@param value number
---@param ramp? number
function NamedControl.SetValue(name, value, ramp) end


---
---Returns value of control with specified Control name.
---If Control name does not exist an error is raised.
---
---@param name string
---@return number
function NamedControl.GetValue(name) end


---
---Triggers control with specified Control name.
---If Control name does not exist an error is raised.
---
---@param name string
function NamedControl.Trigger(name) end


return NamedControl
