# Q-Sys Addon for the Lua Language Server
This addon adds support for the [Q-Sys Extensions to Lua](https://help.qsys.com/Index.htm#Control_Scripting/Using_Lua_in_Q-Sys/Q-SYS_Extensions_to_Lua.htm).

## Adding this addon in VSCode
After cloning or downloading this addon, add the following to the settings.json file located .vscode folder for your project (most likely a Q-Sys plugin if you're using this):
```json
//...
	"Lua.workspace.library": [
		"_location/of/this/addon/after/download_/qsys/library"
	]
//...
```

The Lua Language Server may need to be restarted after adding this addon.

# Lua Language Server Addon Template
This is a template for an [addon](https://github.com/LuaLS/lua-language-server/wiki/Addons) that can be used by the [Lua Language Server](https://github.com/LuaLS/lua-language-server).

## Publishing to Addon Manager
The [addon manager](https://github.com/LuaLS/lua-language-server/discussions/1965) for VS Code allows users to easily install and manage their addons. The addons are pulled from [LLS-Addons](https://github.com/LuaLS/LLS-Addons).

To add your addon to the addon manager, please read the [README for LLS-Addons](https://github.com/LuaLS/LLS-Addons#readme).
