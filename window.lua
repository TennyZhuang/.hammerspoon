local resize = {"cmd", "alt"}

hs.hotkey.bind(resize, "Left", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()
  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

hs.hotkey.bind(resize, "Right", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()
  f.x = max.w / 2
  f.y = max.y
  f.w = max.w
  f.h = max.h
  win:setFrame(f)
end)

hs.hotkey.bind(resize, "Up", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()
  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h / 2
  win:setFrame(f)
end)

hs.hotkey.bind(resize, "Down", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()
  f.x = max.x
  f.y = max.h / 2
  f.w = max.w
  f.h = max.h
  win:setFrame(f)
end)

hs.hotkey.bind(resize, "Return", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()
  if f.x == max.x and f.y == max.y and f.w == max.w and f.h == max.h then
    f.x = max.w / 8
    f.y = max.h / 8
    f.w = max.w / 4 * 3
    f.h = max.h / 4 * 3
  else
    f.x = max.x
    f.y = max.y
    f.w = max.w
    f.h = max.h
  end
  win:setFrame(f)
end)
