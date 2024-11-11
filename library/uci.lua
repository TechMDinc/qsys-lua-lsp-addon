---@meta


---
---Use the Uci functions to manipulate user control interfaces in Q-SYS.
---
---[Open in Browser](https://help.qsys.com/q-sys_9.10/#Control_Scripting/Using_Lua_in_Q-Sys/Uci.htm)
---
---@class Uci
Uci = {}


---
---Display a dialog in a UCI that contains a title, message, and button selection list.
---
---@param uciName string The name of the UCI to display the dialog on
---@param dialogTable dialog_table
function Uci.ShowDialog(uciName, dialogTable) end


---@class dialog_table
---@field Title string The title of the dialog popup
---@field Message string The message text of the dialog popup
---@field Buttons string[] A list of button names for the dialog popup
---@field Handler fun(buttonIdx: number): nil Callback function that receives the index of the button pressed


---
---Set the screen status of a TSC touchscreen controller or UCI Viewer.
---
---@param tscName string The name of the TSC touchscreen or UCI Viewer
---@param state tsc_state
function Uci.SetScreen(tscName, state) end


---@alias tsc_state
---| "On"
---| "Off"
---| "Dim"


---
---Set which UCI to display on a TSC touchscreen controller or UCI Viewer.
---
---@param tscName string The name of the TSC touchscreen or UCI Viewer
---@param uciName string The name of the UCI
function Uci.SetUCI(tscName, uciName) end


---
---Set which UCI page to display on a TSC touchscreen controller or UCI Viewer.
---
---@param tscName string The name of the TSC touchscreen or UCI Viewer
---@param uciPageName string The UCI page to show
function Uci.SetPage(tscName, uciPageName) end


---
---Set whether and how a layer is made visible within a specified UCI name and page.
---
---@param uciName string The name of the UCI
---@param pageName string The name of the page on the UCI
---@param layerName string The name of the layer to set visibility for
---@param visibility boolean
---@param transition uci_transition
function Uci.SetLayerVisibility(uciName, pageName, layerName, visibility, transition) end


---@alias uci_transition
---| "none"
---| "fade"
---| "left"
---| "right"
---| "bottom"
---| "top"


---
---Set whether and how a shared layer is made visible within a specified UCI name and page.
---
---@param uciName string The name of the UCI
---@param layerName string The name of the shared UCI layer
---@param visibility boolean
---@param transition uci_transition
function Uci.SetSharedLayerVisibility(uciName, layerName, visibility, transition) end


---
---Enable the ability to log off from a specified TSC touchscreen controller or UCI Viewer.
---Requires that PIN security is enabled in Q-Sys Core Manager.
---
---@param tscName string The name of the TSC touchscreen or UCI Viewer
function Uci.LogOff(tscName) end


return Uci
