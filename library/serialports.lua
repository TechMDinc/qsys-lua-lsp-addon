---@meta


---
---Serial port communication is supported via the RS-232 ports on some Q-SYS devices.
---
---[Open in Browser](https://help.qsys.com/Index.htm#Control_Scripting/Using_Lua_in_Q-Sys/SerialPorts.htm)
---
---@class SerialPorts
---@field [number] SerialPort
SerialPorts = {}


---@enum SerialPorts.Events
SerialPorts.Events = {
  Connected = "CONNECTED",
  Reconnect = "RECONNECT",
  Data = "DATA",
  Closed = "CLOSED",
  Error = "ERROR",
  Timeout = "TIMEOUT",
}


---@enum SerialPorts.EOL
SerialPorts.EOL = {
  Any = 0,
  CrLf = 1,
  CrLfStrict = 2,
  Lf = 3,
  Null = 4,
  Custom = 5,
}


---@class SerialPort
---@field IsOpen boolean
---@field BufferLength number
---@field EventHandler fun(port: SerialPort, event: SerialPorts.Events): nil
---@field Connected fun(port: SerialPort): nil
---@field Reconnect fun(port: SerialPort): nil
---@field Data fun(port:SerialPort): nil
---@field Closed fun(port:SerialPort): nil
---@field Error fun(port:SerialPort, err: string): nil
---@field Timeout fun(port:SerialPort, err: string): nil
local SerialPort = {}


---@alias Parity
---| "N" None, default
---| "E" Even
---| "O" Odd


---
---Attempts to open the serial port with the specified baud rate (up to 230400 bits per second)
---
---@param baudRate number
---@param dataBits? number
---@param parity? Parity
function SerialPort:Open(baudRate, dataBits, parity) end


---
---Closes the serial port.
---
function SerialPort:Close() end


---
---Writes specified data to the serial port. Raises error if port is not open.
---
---@param data string
function SerialPort:Write(data) end


---
---Attempts to read up the 'length' bytes from serial buffer. Data is removed from serial buffer.
---
---@param length number
---@return string|nil
function SerialPort:Read(length) end


---
---Attempts to read a 'line' from the serial buffer. Supported line endings are defined in SerialPorts.EOL.
---'<custom>' is an optional string only used by EOL.Custom.
---
---@param eol SerialPorts.EOL The end-of-line character(s)
---@param custom? string
---@return string|nil
function SerialPort:ReadLine(eol, custom) end


---
---Searches the serial buffer for string 'str' (starting at integer 'start_pos') and returns the index
---of where 'str' is found. 'start_pos' defaults to 1.
---
---@param searchString string
---@param startPos? number
---@return number|nil
function SerialPort:Search(searchString, startPos) end


return SerialPorts
