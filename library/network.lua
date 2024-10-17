---@meta


---
---Use the Network commands to return the full host name and IP address of a specified host,
---or obtain a table of network interface names and their IP addresses.
---
---[Open in Browser](https://help.qsys.com/Index.htm#Control_Scripting/Using_Lua_in_Q-Sys/Network.htm)
---
---@class Network
Network = {}


---@class HostInformation
---@field name string
---@field addresses string[]


---
---Return an object with the name (.name) and addresses (.addresses) of a specified host,
---where .addresses is a table of strings.
---
---@param hostname string
---@return HostInformation
function Network.GetHostByName(hostname) end


---@class NetworkInterface
---@field Interface string
---@field MACAddress string
---@field BroadcastAddress string
---@field Gateway string
---@field Netmask string


---
---Return a table of network interface names (.Interface) and the IP address (.Address),
---MAC address (.MACAddress), broadcast address (.BroadcastAddress), gateway (.Gateway),
---and netmask (.Netmask) for each.
---
---@return NetworkInterface[]
function Network.Interfaces() end
