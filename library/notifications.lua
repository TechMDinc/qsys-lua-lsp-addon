---@meta


---
---Use the following methods to subscribe to a notification, publish a notification
---with specified data, and unsubscribe from a notification. This allows scripts running
---within the same Core to communicate with each other using control wiring or Component.
---
---[Open in Browser](https://help.qsys.com/Index.htm#Control_Scripting/Using_Lua_in_Q-Sys/Notifications.htm)
---
---@class Notifications
Notifications = {}


---
---Subscribe to a notification with a given name.
---
---@param name string
---@param callback fun(name: string, data: string|table): nil
---@return number
function Notifications.Subscribe(name, callback) end


---
---Publish a named notification with given data. The data can be either a Lua table or a string.
---You cannot call the Notifications.Publish() method inside a Notifications.Subscribe() callback.
---This will raise a Lua error.
---
---@param name string
---@param data string|table
function Notifications.Publish(name, data) end


---
---Unsubscribe from a notification with the specified noteid.
---
---@param id number
function Notifications.Unsubscribe(id) end
