trinium = {}
local insecure = assert(minetest.request_insecure_environment(), "This subgame\nrequires insecure environment. Add trinium to trusted mods in config or\ndisable ModSecurity (not recommended).")

local path = minetest.get_modpath("trinium")

assert(loadfile(path.."/code/init.lua"))(insecure, path.."/code")
dofile(path.."/test.lua")