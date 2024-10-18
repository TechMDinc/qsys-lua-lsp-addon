---@meta


---
---Use the QRCode library to generate a QR code graphic that links to a specified URL. For example,
---you could generate a QR code for a UCI button that, when scanned with a smartphone, takes the user
---to a website that provides instructions for using a conference room.
---
---[Open in Browser](https://help.qsys.com/Index.htm#Control_Scripting/Using_Lua_in_Q-Sys/QRCode.htm)
---
---@class QRCode
QRCode = {}


---@alias QRCodeMode
---| "low"
---| "medium"
---| "quartile"
---| "high"


---
---Generate a QR code SVG graphic.
---
---@param url string
---@param mode? QRCodeMode Optional error correction mode. Defaults to 'medium'.
---@return string
function QRCode.GenerateSVG(url, mode) end
