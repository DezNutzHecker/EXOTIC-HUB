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

local success, content = pcall(function()
    return game:HttpGet("https://raw.githubusercontent.com/DezNutzHecker/exotic-hub-loader/main/script.lua")
end)

if success and content and #content > 100 then
    local func = loadstring(content)
    if func then pcall(func) end
end
