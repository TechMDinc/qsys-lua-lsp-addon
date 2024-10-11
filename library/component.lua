---@meta


---
---Component objects allow access to Named Components in the design.
---
---[Open in Browser](https://help.qsys.com/Index.htm#Control_Scripting/Using_Lua_in_Q-Sys/Component.htm)
---
---@class Component
Component = {}


---@alias component userdata


---@class NamedComponent
---@field ID string
---@field Name string
---@field Type string
---@field Properties ComponentProperty[]


---@class ComponentProperty
---@field Name string
---@field Value number|string
---@field PrettyName string


---@class ComponentControl
---@field Name string
---@field Value number|boolean
---@field String string
---@field Position number
---@field Type string
---@field Direction string
---@field MinValue number
---@field MaxValue number
---@field MinString string
---@field MaxString string


---
---Create a Named Component reference in your script.
---
---
---@param name string The Code Name for the Named Component
---@return component # The Named Component reference
function Component.New(name) end


---
---Get all Named Components in a design.
---
---@return NamedComponent[] # A table of Named Components
function Component.GetComponents() end


---
---Get all controls on a given Named Component
---
---@param component component The reference to the Named Component
---@return ComponentControl[] # A table of all controls on the Named Component
function Component.GetControls(component) end


return Component
