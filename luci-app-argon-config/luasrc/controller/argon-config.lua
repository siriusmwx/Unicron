--[[
luci-app-argon-config
]]--

module("luci.controller.argon-config", package.seeall)

function index()
	if not nixio.fs.access('/www/luci-static/argon/css/cascade.css') then
		return
	end

	entry({"admin", "control", "argon-config"}, form("argon-config"), _("Argon Config"), 90)
end
