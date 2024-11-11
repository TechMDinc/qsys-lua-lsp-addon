---@meta


---
---Use the UdpSocket commands to send and receive data over a UdpSocket connection.
---
---[Open in Browser](https://help.qsys.com/q-sys_9.10/#Control_Scripting/Using_Lua_in_Q-Sys/UdpSocket.htm)
---
---@class UdpSocket
UdpSocket = {}


---
---Creates a new UDP socket.
---
---@return udp_socket
function UdpSocket.New() end


---@class udp_socket
---@field MulticastTtl number The multicast time-to-live value
---@field EventHandler fun(socket: udp_socket, data: udp_data): nil
---@field Data fun(socket: udp_socket, data: udp_data): nil
local udp_socket = {}


---@class udp_data
---@field Address string
---@field Port number
---@field Data string


---
---Opens the UdpSocket. Optionally bind to a local IP and Port (either or both).
---
---@param ipAddress? string|nil
---@param port? number
function udp_socket:Open(ipAddress, port) end


---
---Closes an open UdpSocket on a specified port.
---
function udp_socket:Close() end


---
---Sends data to IP Address and port.
---
---@param ipAddress string The IP address to send to
---@param port number The port to send on
---@param data string The data to send
function udp_socket:Send(ipAddress, port, data) end


---
---Joins the multicast address, binding to local IP.-
---
---@param multicastIp string The multicast IP address to receive packets from
---@param localIp? string The local IP address to bind to. Only required for multi-NIC systems.
function udp_socket:JoinMulticast(multicastIp, localIp) end


return UdpSocket
