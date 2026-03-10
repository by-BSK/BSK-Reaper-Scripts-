-- Stop recording only if currently recording
local playState = reaper.GetPlayState()
if playState == 4 or playState == 5 then
    reaper.Main_OnCommand(1016, 0) -- Transport: Stop
end
