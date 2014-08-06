-- refers to grid.lua in this directory, taken from the Hydra wiki: https://github.com/sdegutis/hydra/wiki/Useful-Hydra-libraries
require "grid"

hydra.alert "Hydra, at your service."

pathwatcher.new(os.getenv("HOME") .. "/.hydra/", hydra.reload):start()
autolaunch.set(true)

menu.show(function()
    return {
      {title = "About Hydra", fn = hydra.showabout},
      {title = "-"},
      {title = "Quit", fn = os.exit},
    }
end)

local mash = {"cmd", "alt", "ctrl"}
local mashshift = {"cmd", "alt", "shift"}

local function opendictionary()
  hydra.alert("Lexicon, at your service.", 0.75)
  application.launchorfocus("Dictionary")
end

local function round(num, idp)
  local mult = 10^(idp or 0)
  return math.floor(num * mult + 0.5) / mult
end

-- maximizes window
hotkey.bind(mash, 'UP', function () 
    local win = window.focusedwindow()
    local winframe = win:frame()
    local screenframe = win:screen():frame_without_dock_or_menu()
    -- if it's already maximized vertically, then split it
    if (winframe.y==screenframe.y and winframe.x==screenframe.x and winframe.w==screenframe.w and winframe.h==screenframe.h) then
        win:setframe({
            x = screenframe.x,
            y = screenframe.y,
            w = screenframe.w,
            h = round(screenframe.h / 2),
        })
    else
        win:setframe({
            x = screenframe.x,
            y = screenframe.y,
            w = screenframe.w,
            h = screenframe.h,
        })
    end
end)

-- maximizes window
hotkey.bind(mash, 'DOWN', function () 
    local win = window.focusedwindow()
    local winframe = win:frame()
    local screenframe = win:screen():frame_without_dock_or_menu()
    -- if it's already maximized vertically, then split it
    if (winframe.y==screenframe.y and winframe.x==screenframe.x and winframe.w==screenframe.w and winframe.h==screenframe.h) then
        win:setframe({
            x = screenframe.x,
            y = screenframe.y + round(screenframe.h / 2),
            w = screenframe.w,
            h = round(screenframe.h / 2),
        })
    else
        win:setframe({
            x = screenframe.x,
            y = screenframe.y,
            w = screenframe.w,
            h = screenframe.h,
        })
    end
end)

-- moves window to the left. If it's already on the left, it'll jump to prev screen
hotkey.bind(mash, 'LEFT', function ()
    local win = window.focusedwindow()
    local screen = win:screen()
    local screenframe = screen:frame_without_dock_or_menu()
    local winframe = win:frame()
    local winx2 = winframe.x + winframe.w
    local winy2 = winframe.h + winframe.y
    if winframe.x<=0 and winframe.w<=screenframe.w/2 then
        if win:screen():previous()~=win:screen() then
            ext.grid.pushwindow_prevscreen()
        end
    else
        local newframe = {
            x = screenframe.x,
            y = screenframe.y,
            h = screenframe.h,
            w = round(screenframe.w / 2),
        }
        win:setframe(newframe)
    end
end)
-- moves window to the right. If it's already on the right, it'll jump to next screen
hotkey.bind(mash, 'RIGHT', function ()
    local win = window.focusedwindow()
    local screen = win:screen()
    local screenframe = screen:frame_without_dock_or_menu()
    local winframe = win:frame()
    local winx2 = winframe.x + winframe.w
    local winy2 = winframe.h + winframe.y
    if winx2>=screenframe.w + screenframe.x and winframe.w<=screenframe.w/2 then
        if screen:next()~=screen then
            ext.grid.pushwindow_nextscreen()
        end
    else
        local newframe = {
            x = round(screenframe.w / 2) + screenframe.x,
            y = screenframe.y,
            h = screenframe.h,
            w = round(screenframe.w / 2),
        }
        win:setframe(newframe)
    end
end)

hotkey.bind(mash, 'X', logger.show)
hotkey.bind(mash, "R", repl.open)

updates.check()