---@meta


---
---The WebSocket Protocol enables two-way communication between a client running code in a controlled
---environment to a remote host that has opted-in to communications from that code. The security model
---used for this is the origin based security model commonly used by web browsers. The protocol consists
---of an opening handshake followed by basic message framing, layered over TCP. The goal of this technology
---is to provide a mechanism for browser-based applications that need two-way communication with servers
---that does not rely on opening multiple HTTP connections.
---
---[Open in Browser](https://help.qsys.com/q-sys_9.10/#Control_Scripting/Using_Lua_in_Q-Sys/lua_web_socket.htm)
---
---@class WebSocket
WebSocket = {}


---@class websocket
---@field Connected fun(ws: websocket): nil
---@field Data fun(ws: websocket, data: string): nil
---@field Error fun(ws: websocket, err: string): nil
---@field Closed fun(ws: websocket): nil
local websocket = {}


---
---Creates a new WebSocket.
---
---@return websocket
function WebSocket.New() end


---@alias websocket_protocol
---| "ws"
---| "wss"


---
---Connect to host with given protocol (ws or wss) to URL and port with optional sub-protocol.
---
---@param protocol websocket_protocol
---@param host string
---@param port number
---@param subprotocol? string|nil
---@param headers? table
function websocket:Connect(protocol, host, port, subprotocol, headers) end


---
---Sends message to the server.
---
---@param message string
---@param isBinary boolean If true, the write will be binary. If false, it will be ASCII.
function websocket:Write(message, isBinary) end


---
---Closes the WebSocket connection.
---
function websocket:Close() end


---
---Ping is used to keep a WebSocket connection alive.
---
function websocket:Ping() end


return WebSocket
