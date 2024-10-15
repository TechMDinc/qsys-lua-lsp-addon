---@meta


---
---The Email library allows creation of emails directly from a Lua script.
---Messages can be a maximum of 16 KB in size.
---
---[Open in Browser](https://help.qsys.com/Index.htm#Control_Scripting/Using_Lua_in_Q-Sys/Email.htm)
---
---@class Email
Email = {}


---@class EmailTable
---@field From string
---@field Subject string
---@field Body string
---@field To string[]
---@field CC string[]
---@field Server string
---@field Username? string
---@field Password string
---@field EventHandler fun(eTable: EmailTable, err: string): nil


---
---Send an email using specified parameters.
---
---@param sendTable EmailTable
function Email.Send(sendTable) end
