---@meta


---
---The Ssh object allows Q-SYS cores to make secure client connections to devices on the network. It is
---very similar to TcpSocket, but requires additional connection arguments (host, port, user, password).
---Unlike TcpSocket, a standard, unified event handler function is not supported. Additionally, compared
---to TcpSocket, there is a LoginFailed event handler that is called if login credentials are incorrect.
---
---[Open in Browser](https://help.qsys.com/q-sys_9.10/#Control_Scripting/Using_Lua_in_Q-Sys/Ssh.htm)
---
---@class Ssh
Ssh = {}


---
---Creates a new SSH instance.
---
---@return ssh_instance
function Ssh.New() end


---@class ssh_instance
---@field PublicKey string for PKI authentication, must be in SSH format
---@field PrivateKey string for PKI authentication, must be in OpenSSL PEM format
---@field PrivateKeyPassword string for PKI authentication
---@field Certificate string use for certificate-based access
---@field ReadTimeout number
---@field WriteTimeout number
---@field ReconnectTimeout number
---@field IsConnected boolean
---@field IsInteractive boolean
---@field BufferLength number
---@field LoginFailed fun(tcpTable: ssh_instance): nil
---@field Connected fun(tcpTable: ssh_instance): nil
---@field Reconnect fun(tcpTable: ssh_instance): nil
---@field Data fun(tcpTable: ssh_instance): nil
---@field Closed fun(tcpTable: ssh_instance): nil
---@field Error fun(tcpTable: ssh_instance, err: string): nil
---@field Timeout fun(tcpTable: ssh_instance, err: string): nil
local ssh_instance = {}


---
---Attempts to connect using the specified host address, port, and credentials.
---
---@param host string
---@param port number
---@param username string
---@param password string
function ssh_instance:Connect(host, port, username, password) end


---
---Disconnects the socket.
---
function ssh_instance:Disconnect() end


---
---Writes specified data to the socket. Raises error if socket is not connected.
---
---@param data string
function ssh_instance:Write(data) end


---
---Attempts to read up to 'length' bytes from socket. These bytes are removed from the buffer,
---leaving any remaining bytes beyond the 'length' specified.
---
---@param length number
---@return string|nil
function ssh_instance:Read(length) end


---
---Attempts to read a 'line' from the socket buffer.
---
---@param eol TcpSocket.EOL
---@param custom? string A string literal of the custom line ending to TcpSocket.EOL.Custom
---@return string|nil Returns nil if EOL was not found, otherwise returns string up to EOL
function ssh_instance:ReadLine(eol, custom) end


---
---Searches the socket buffer for string 'str' (starting at integer 'start_pos') and returns the
---index of where 'str' is found. 'start_pos' defaults to 1.
---
---@param search_str string
---@param start_pos number
---@return number|nil
function ssh_instance:Search(search_str, start_pos) end


return Ssh
