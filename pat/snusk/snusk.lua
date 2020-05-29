local initbutsexy = init
local updatebutsexy = update

function init()
	initbutsexy()
	
	self.snuskTimer = math.random(120, 300)
	
	script.setUpdateDelta(5)
end

function update(dt)
	updatebutsexy(dt)
	
	self.snuskTimer = math.max(0, self.snuskTimer - dt)
	
	if self.snuskTimer == 0 then
		self.snuskTimer = math.random(240, 600)
		if math.random(1, 1000) == 1 then
			player.radioMessage("pat_snusk")
		end
	end
end