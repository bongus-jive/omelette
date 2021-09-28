function init()
	local list = player.collectables("cooking")
	local omelette = false
	
	for _,v in ipairs(list) do
		if v == "omelette" then
			omelette = true
			break
		end
	end
	
	if not omelette then
		player.interact("ScriptPane", "/pat/omelette/omelette.config")
	else
		player.interact("ScriptPane", "/pat/omelette/omelette2.config")
	end
end