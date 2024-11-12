# Q-Sys Addon for the Lua Language Server
This addon contains support for the [Q-Sys Extensions to Lua](https://help.qsys.com/Index.htm#Control_Scripting/Using_Lua_in_Q-Sys/Q-SYS_Extensions_to_Lua.htm).

## Enabling this addon in VSCode
After cloning or downloading this addon, add the following to the settings.json file located .vscode folder for your project (most likely a Q-Sys plugin if you're using this):
```json
{
...
	"Lua.workspace.library": [
		"_location/of/this/addon/after/download_/qsys/library"
	]
...
}
```

The Lua Language Server may need to be restarted after adding this addon.

## Lua Language Server Addon
This addon was created using the [Lua Language Server Addon Template](https://github.com/LuaLS/addon-template).
