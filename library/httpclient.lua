---@meta


---
---Use the following methods to add URL references to your Lua script.
---Transfer data over a secure HTTP connection, or encode and decode a URL, parameters, and string data into a valid ASCII format without spaces.
---
---[Open in Browser](https://help.qsys.com/Index.htm#Control_Scripting/Using_Lua_in_Q-Sys/HttpClient.htm)
---
---@class HttpClient
HttpClient = {}


---@class HttpTable
---@field Url string
---@field Headers? table
---@field User? string
---@field Password? string
---@field Auth? "any"|"basic"|"digest"
---@field Timeout? number
---@field Data? string
---@field Method? "POST"|"PUT"|"PATCH"
---@field EventHandler fun(httpTable: HttpTable, code: number, data: string, error: string, headers: table): nil


---
---Specify a URL from which to download data.
---
---@param httpTable HttpTable
function HttpClient.Download(httpTable) end


---
---Specify a URL to which to upload data.
---
---@param httpTable HttpTable
function HttpClient.Upload(httpTable) end


---@class HttpUrl
---@field Host string
---@field Port number
---@field Path string
---@field Query table


---
---Combine URL components into a complete encoded URL string.
---
---@param httpUrl HttpUrl
---@return string
function HttpClient.CreateUrl(httpUrl) end


---
---Specify a comma-separated list of parameters to encode.
---
---@param listToEncode table
---@return string[]
function HttpClient.EncodeParams(listToEncode) end


---
---Specify a string to encode.
---
---@param stringToEncode string
---@return string
function HttpClient.EncodeStrings(stringToEncode) end


---
---Specify an encoded string to decode.
---
---@param stringToDecode string
---@return string
function HttpClient.DecodeString(stringToDecode) end


---
---Retrieves data from the URL specified in <table> using the GET request method.
---
---@param getRequest HttpTable
function HttpClient.Get(getRequest) end


---
---Transfers data to the URL specified in <table> using the PUT request method.
---
---@param putRequest HttpTable
function HttpClient.Put(putRequest) end


---
---Transfers data to the URL specified in <table> using the POST request method.
---
---@param postRequest HttpTable
function HttpClient.Post(postRequest) end


---
---Modifies data at the URL specified in <table> using the PATCH request method.
---
---@param patchRequest HttpTable
function HttpClient.Patch(patchRequest) end


---
---Modifies data at the URL specified in <table> using the DELETE request method.
---
---@param deleteRequest HttpTable
function HttpClient.Delete(deleteRequest) end


return HttpClient
