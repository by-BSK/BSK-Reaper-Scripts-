-- Start recording only if not already recording
local playState = reaper.GetPlayState()
-- playState values:
-- 0 = stopped
-- 1 = playing
-- 2 = paused
-- 4 = recording
-- 5 = recording + playing
if playState ~= 4 and playState ~= 5 then
    reaper.Main_OnCommand(1013, 0) -- Transport: Record
end
