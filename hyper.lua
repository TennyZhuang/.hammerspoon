hs.hotkey.bind({"ctrl"}, "space", function()
  hyper = hs.application.find('hyper')
  if hyper then
    awin = hyper:mainWindow()
  end
  if awin and hyper and hyper:isFrontmost() then
    hyper:hide()
  else
    hs.application.launchOrFocus("/Applications/Hyper.app")
    local hyper = hs.application.find('hyper')
    hyper.setFrontmost(hyper)
    hyper.activate(hyper)
  end
end)
