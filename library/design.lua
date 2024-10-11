---@meta


---
---Use the Design functions to return design status and inventory information.
---
---[Open in Browser](https://help.qsys.com/Index.htm#Control_Scripting/Using_Lua_in_Q-Sys/Design.htm)
---
---@class Design
Design = {}


---@class DesignStatus
---@field DesignName string
---@field Platform string
---@field IsRedundant boolean
---@field DesignCode string


---@class InventoryItem
---@field Name string
---@field Type string
---@field Location string
---@field Model string
---@field Status InventoryItemStatus


---@class InventoryItemStatus
---@field Message string
---@field Code number


---
---Return a status table containing design information.
---
---@return DesignStatus status
function Design.GetStatus() end


---
---Return a table of design inventory information, and the details for each inventory item.
---
---@return InventoryItem[] items
function Design.GetInventory() end


return Design
