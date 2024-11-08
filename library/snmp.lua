---@meta


---
---Use the SNMP library in Lua to monitor OIDs obtained from an SNMP-enabled device's MIB file.
---
---[Open in Browser](https://help.qsys.com/q-sys_9.10/#Control_Scripting/Using_Lua_in_Q-Sys/SNMP.htm)
---
---@class SNMPSession
SNMPSession = {}


---@class SNMP
SNMP = {}

---@enum SNMP.SessionType
SNMP.SessionType = {
  v2c = 0,
  v3 = 1,
}

---@enum SNMP.AuthType
SNMP.AuthType = {
  NoAuth = 0,
  AuthNoPriv = 1,
  AuthPriv = 2,
}

---@enum SNMP.AuthProtocol
SNMP.AuthProtocol = {
  NoAuth = 0,
  MD5 = 1,
  SHA = 2,
}

---@enum SNMP.PrivProtocol
SNMP.PrivProtocol = {
  NoPriv = 0,
  AES = 1,
  DES = 2,
}

---@enum SNMP.SNMPDataType
SNMP.SNMPDataType = {
  unknown = 0,
  integer32 = 1,
  unsigned32 = 2,
  unsigned_integer32 = 3,
  timeticks = 4,
  ip_address = 5,
  object_id = 6,
  octet_string = 7,
  hex = 8,
  decimal = 9,
  bit_string = 10,
  integer64 = 11,
  unsigned64 = 12,
  float32 = 13,
  double64 = 14,
}


---
---Create a new SNMP session.
---
---@param sessionType SNMP.SessionType
---@return snmp_session
function SNMPSession.New(sessionType) end


---@class snmp_response
---@field RequestID number The request ID
---@field OID string The object ID for the response
---@field Value string The value for the object ID in string representation
---@field HostName string The host name the response came from


---@class snmp_error
---@field Error snmp_error_string


---@alias snmp_error_string
---| '"Time Out"'
---| '"Send Failed"'
---| '"Sec Error"'
---| '"SNMP Error"'
---| '"No Such Instance"'
---| '"No Such Object"'


---@class snmp_session
---@field EventHandler fun(response: snmp_response): nil
---@field ErrorHandler fun(response: snmp_error): nil
local snmp_session = {}


---
---Specify the host to which to connect.
---
---@param hostname string
function snmp_session:setHostName(hostname) end


---
---For SNMP v3 only, set the authorization type for the session.
---
---@param authType SNMP.AuthType
function snmp_session:setAuthType(authType) end


---
---For SNMP v3 only, set the authorization protocol for the session.
---
---@param protocol SNMP.AuthProtocol
function snmp_session:setAuthProt(protocol) end


---
---For SNMP v3 only, set the privacy protocol for the session.
---
---@param protocol SNMP.PrivProtocol
function snmp_session:setPriveProt(protocol) end


---
---For SNMP v3 only, set the user name for the session.
---
---@param username string
function snmp_session:setUserName(username) end


---
---For SNMP v3 only, set the authorization pass phrase for the session.
---
---@param passphrase string
function snmp_session:setPassPhrase(passphrase) end


---
---For SNMP v3 only, set the privacy pass phrase for the session.
---
---@param privpass string
function snmp_session:setPrivPassPhrase(privpass) end


---
---For SNMP v2 sessions only, set the community name for the session.
---
---@param community string
function snmp_session:setCommunity(community) end


---
---Initiate the connection to the corresponding session.
---
function snmp_session:startSession() end


---
---Request an object ID (OID) and pass the response to a Lua callback.
---
---@param oid string
---@param callback fun(data: table): nil
function snmp_session:getRequest(oid, callback) end


---
---Set a new value for a specified OID.
---
---@param oid string
---@param value string
---@param valueType SNMP.SNMPDataType
---@param callback fun(data: table): nil
function snmp_session:setRequest(oid, value, valueType, callback) end


return SNMPSession
