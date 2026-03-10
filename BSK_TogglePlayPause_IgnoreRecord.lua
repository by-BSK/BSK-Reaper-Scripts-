-- Toggle play/pause only if not recording
local playState = reaper.GetPlayState()
if playState ~= 4 and playState ~= 5 then
    reaper.Main_OnCommand(1007, 0) -- Transport: Play/Pause
end
