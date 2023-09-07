-- MuteYakVendors
-- Made by Sharpedge_Gaming
-- v1.1 - 10.1.7


local soundKitIDs = {
    640336, 640338, 640340,
    640314, 640316, 640318, 640320,
    640180, 640182, 640184,
    640158, 640160, 640162, 640164
}

local frame = CreateFrame("Frame")

frame:RegisterEvent("PLAYER_LOGIN")
frame:SetScript("OnEvent", function(self, event, ...)
    if event == "PLAYER_LOGIN" then
        for _, id in ipairs(soundKitIDs) do
            MuteSoundFile(id)
        end
    end
end)


