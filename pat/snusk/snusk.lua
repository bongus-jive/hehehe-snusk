local snuskTimer = math.random(120, 300)

function update(dt)
	snuskTimer = math.max(0, snuskTimer - dt)
	
	if snuskTimer == 0 then
		snuskTimer = math.random(240, 600)
		if math.random(1, 800) == 1 then
			player.radioMessage("pat_snusk")
		end
	end
end