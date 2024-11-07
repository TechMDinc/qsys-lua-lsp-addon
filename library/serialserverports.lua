---@meta


---
---Use the SerialServerPorts library to emulate the functionality of Q-SYS hardware Serial Port components,
---while internally redirecting connection state and data bidirectionally to and from a remote serial server
---device. SerialServerPorts allows you to bridge the gap between serial wiring and Lua TcpSocket library
---paradigms.
---
---[Open in Browser](https://help.qsys.com/q-sys_9.10/#Control_Scripting/Using_Lua_in_Q-Sys/SerialServerPorts.htm)
---
---@class SerialServerPorts
---@field [number] SerialServerPort
SerialServerPorts = {}


---@class SerialServerPort
---@field OnOpen fun(baudRate: number, dataBits: number, parity: Parity): nil
---@field OnClose fun(): nil
---@field Data fun(): nil
local SerialServerPort = {}


---
---Trigger an EventHandler in the associated serial “client script’s” serial EventHandler logic.
---
---@param event SerialPorts.Events
---@param err? string
function SerialServerPort:Event(event, err) end


---
---Writes data to the socket. Raises error if serial port is not open or device hosting serial port
---is disconnected from network.
---
---@param data string
function SerialServerPort:Write(data) end


---
---Attempts to read up to 'length' bytes from serial buffer. Any bytes read are removed from the buffer.
---
---@param length number
---@return string|nil
function SerialServerPort:Read(length) end


---
---Attempts to read a 'line' from the serial buffer. Retrieved data is removed from the buffer.
---
---@param eol SerialPorts.EOL
---@return string|nil
function SerialServerPort:ReadLine(eol) end


---
---Searches the serial buffer for string 'str' (starting at 'start_pos') and returns the index of where
---str is found.
---
---@param str string
---@param start number
---@return number|nil
function SerialServerPort:Search(str, start) end


return SerialServerPorts
