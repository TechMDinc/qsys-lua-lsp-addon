---@meta


---
---The TcpSocket object allows Q-SYS cores to make client TCP/IP connections to devices on the network.
---
---[Open in Browser](https://help.qsys.com/q-sys_9.10/#Control_Scripting/Using_Lua_in_Q-Sys/TcpSocket.htm)
---
---@class TcpSocket
TcpSocket = {}


---@enum TcpSocket.EOL
TcpSocket.EOL = {
  Any = 0,
  CrLf = 1,
  CfLfStrict = 2,
  Lf = 3,
  Null = 4,
  Custom = 5,
}


---@enum TcpSocket.Events
TcpSocket.Events = {
  Connected = "CONNECTED",
  Reconnect = "RECONNECT",
  Data = "DATA",
  Closed = "EOF",
  Error = "ERROR",
  Timeout = "TIMEOUT",
}


---
---Creates a new TcpSocket instance.
---
---@return tcp_socket
function TcpSocket.New() end


---@class tcp_socket
---@field ReadTimeout number
---@field WriteTimeout number
---@field ReconnectTimeout number
---@field IsConnected boolean
---@field BufferLength number
---@field PeerAddress string
---@field EventHandler fun(socket: tcp_socket, event: TcpSocket.Events, err: string): nil
---@field Connected fun(tcpTable: tcp_socket): nil
---@field Reconnect fun(tcpTable: tcp_socket): nil
---@field Data fun(tcpTable: tcp_socket): nil
---@field Closed fun(tcpTable: tcp_socket): nil
---@field Error fun(tcpTable: tcp_socket, err: string): nil
---@field Timeout fun(tcpTable: tcp_socket, err: string): nil
local tcp_socket = {}


---
---Attempts to connect to the specified ip/host name and port, 'ipAddress/hostname' is string,
---'port' is integer. The Connect() function should be considered as a means to start the process
---to open a socket.
---
---@param ipAddress string
---@param port number
function tcp_socket:Connect(ipAddress, port) end


---
---Disconnects the socket.
---
function tcp_socket:Disconnect() end


---
---Writes specified data to the socket. Calling Write() should be avoided until the socket triggers
---its "Connected" event. Raises error if socket is not connected.
---
---@param data string
function tcp_socket:Write(data) end


---
---Attempts to read up to 'length' bytes from socket. These bytes are removed from the buffer,
---leaving any remaining bytes beyond the 'length' specified. 'length' is positive integer.
---
---@param length number
---@return string|nil
function tcp_socket:Read(length) end


---
---Attempts to read a 'line' from the socket buffer. 'EOL' is defined in the TcpSocket.EOL table.
---'custom' is an optional string only used by 'EOL.Custom'.
---
---@param eol TcpSocket.EOL
---@param custom? string
---@return string|nil
function tcp_socket:ReadLine(eol, custom) end


---
---Searches the socket buffer for string 'str' (starting at integer 'start_pos' ) and returns
---the index of where 'str' is found.
---
---@param searchStr string
---@param startPos number
---@return number|nil
function tcp_socket:Search(searchStr, startPos) end


return TcpSocket
