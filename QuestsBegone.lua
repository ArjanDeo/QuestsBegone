local f = CreateFrame("Frame")

function f:OnEvent(event, ...)
	self[event](self, event, ...)
end

function f:PLAYER_REGEN_DISABLED()
	ObjectiveTrackerFrame:Hide()
end

function f:PLAYER_REGEN_ENABLED()
	ObjectiveTrackerFrame:Show()
end


f:RegisterEvent("PLAYER_REGEN_DISABLED")
f:RegisterEvent("PLAYER_REGEN_ENABLED")
f:SetScript("OnEvent", f.OnEvent)