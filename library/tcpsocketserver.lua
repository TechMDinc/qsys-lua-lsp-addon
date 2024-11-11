---@meta


---
---The TcpServer object allows Q-SYS Core processors to accept client TCP/IP connections from
---devices on the network.
---
---[Open in Browser](https://help.qsys.com/q-sys_9.10/#Control_Scripting/Using_Lua_in_Q-Sys/TcpSocketServer.htm)
---
---@class TcpSocketServer
TcpSocketServer = {}


---
---Creates a new instance of a TcpServer.
---
---@return tcp_server
function TcpSocketServer.New() end


---@class tcp_server
---@field EventHandler fun(tcpClient: tcp_socket): nil
local tcp_server = {}


---
---Opens the TcpServer on the specified TCP port on all network interfaces.
---
---@param port number
function tcp_server:Listen(port) end


---
---Closes the TcpServer / disconnects the socket.
---
function tcp_server:Close() end


return TcpSocketServer
