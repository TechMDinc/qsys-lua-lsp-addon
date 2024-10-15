---@meta


---
---The Dante API (DAPI) consists of two modules for communicating with a Dante device's GPIO interface from a Q-SYS Lua script.
---
---[Open in Browser](https://help.qsys.com/Index.htm#Control_Scripting/Using_Lua_in_Q-Sys/Dante.htm)
---
---@class DanteBrowser
DanteBrowser = {}


---@class DanteBrowserClass
---@field Browse fun(name: string, event: "ADDED"|"REMOVED"): nil



---
---Creates a browser object that discovers Dante devices on the network. This is useful for knowing whether a device exists on the network.
---
---@return DanteBrowserClass
function DanteBrowser.New() end


---@class DanteDevice
DanteDevice = {}


---@class DanteGpio
---@field TriggerMask number
---@field InputMask number
---@field InputValue number
---@field OutputMask number
---@field OutputValue number


---@class DanteDeviceClass
---@field Gpio fun(gpio: DanteGpio): nil
---@field Response fun(SetID: number, errorString: string): nil
local DanteDeviceClass = {}


---
---Creates an object that gives access to a specific device on the network. It allows the script to set the GPIO state of the device (for example, turn on LEDs) as well as receive GPIO events (for example, when a button is pressed on the device).
---
---@param deviceName string
---@return DanteDeviceClass
function DanteDevice.New(deviceName) end


---
---Sets the GPIO state on the device. Value and mask are integers. Returns a numeric ID for the call.
---
---@param value number
---@param mask number
---@return number id
function DanteDeviceClass:SetGpio(value, mask) end


---
---Requests the current state of the GPIO. Returns a numeric ID for the call.
---
---@return number id
function DanteDeviceClass:GetGpio() end
