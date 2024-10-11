---@meta


---
---Use the Crypto commands to encode and decode ASCII text strings to and from Base64, as well as obtain CRC16, HMAC, and MD5 values for specified strings.
---
---[Open in Browser](https://help.qsys.com/Index.htm#Control_Scripting/Using_Lua_in_Q-Sys/Crypto.htm)
---
---@class Crypto
Crypto = {}


---
---Compute the Base64 of a specified string.
---
---@param value string The value to encode to Base64
---@param pad? boolean If true, the output is padded with '=' signs. Default is true.
---@return string
function Crypto.Base64Encode(value, pad) end


---
---Convert the Base64 of a specified value to a string.
---
---@param value string The Base64 value to decode
---@return string
function Crypto.Base64Decode(value) end


---
---Compute the CRC16 of a specified value.
---
---@param value string The value used to generate the CRC16
---@return string
function Crypto.CRC16Compute(value) end

---@enum Crypto.Cipher
Crypto.Cipher = {
  AES_128_CBC = "aes_128_cbc",
  AES_128_ECB = "aes_128_ebc",
  AES_256_CBC = "aes_256_cbc",
  AES_256_ECB = "aes_256_ecb",
}


---
---Block-based decryption. Will raise error on failure.
---
---@param cipher Crypto.Cipher A value from the Crypto.Ciphers table
---@param key string The encryption key
---@param iv string The initialization value
---@param cipher_text string The text to be decrypted
---@return string
function Crypto.Decrypt(cipher, key, iv, cipher_text) end


---@alias DigestAlgorithm
---| "md5"
---| "sha1"
---| "sha256"
---| "sha512"


---
---Compute the message digest of specified data using a specified hashing algorithm.
---
---@param algorithm DigestAlgorithm The digest algorithm to use
---@param data string The data to compute the digest for
---@return string
function Crypto.Digest(algorithm, data) end


---
---Block-based encryption. Will raise error on failure.
---
---@param cipher Crypto.Cipher A value from the Crypto.Ciphers table
---@param key string The encryption key
---@param iv string The initialization value
---@param message string The text to be encrypted
---@param padding? boolean If true, adds padding to make the message a multiple of block size. Default is true.
---@return string
function Crypto.Encrypt(cipher, key, iv, message, padding) end


---
---Create a series of random bytes.
---
---@param count number The number of bytes to generate
---@return string
function Crypto.GetRandomBytes(count) end


---@enum Crypto.Hash
Crypto.Hash = {
  MD5 = "md5",
  SHA1 = "sha1",
  SHA256 = "sha256",
  SHA512 = "sha512",
}


---
---Compute the message authentication code of specified data using a specified hashing algorithm and key.
---
---@param algorithm DigestAlgorithm
---@param key string The secret key for computing the message authentication code
---@param data string The data for which to compute the message authentication code
---@return string
function Crypto.HMAC(algorithm, key, data) end


---
---Compute the MD5 hash of a given value.
---
---@param value string The value for which to compute the MD5 hash.
---@return string
function Crypto.MD5Compute(value) end


---@alias PDBKDF2Digest
---| "sha1"
---| "sha256"
---| "sha512"


---
---Implementation of Password-Based Key Derivation Function 2. Will raise error on failure.
---
---@param password string
---@param salt string
---@param iterations number
---@param keylen number
---@param digest PDBKDF2Digest
---@return string
function Crypto.PBKDF2(password, salt, iterations, keylen, digest) end


return Crypto
