--[[
    EXOTIC HUB - GitHub Loader
    Loads the full script with premium bypass
]]

-- Setup G parameter
local G = {
    IsPremium = function() return true end,
    IsPro = function() return true end,
    IsHeadless = function() return false end,
    RegisterReset = function(func) return true end,
    Library = nil,
    Window = nil
}

_G.G = G
_G.exoprov = true
_G.IsPremium = function() return true end
_G.is_premium = function() return true end

print("[LOADER] G parameter set, loading script...")

-- Load the full script from GitHub
local success, content = pcall(function()
    return game:HttpGet("https://raw.githubusercontent.com/DezNutzHecker/exotic-hub-loader/main/script.lua")
end)

if success and content and #content > 100 then
    local func, err = loadstring(content)
    if func then
        print("[LOADER] Script loaded, executing...")
        pcall(func)
    else
        print("[LOADER] Compile error: " .. tostring(err))
    end
else
    print("[LOADER] Failed to fetch script")
end
