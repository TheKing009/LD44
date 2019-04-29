local M = {}

local TOUCH = hash("touch")

function M.create(self)
	local instance = {}

	function instance.change_anim(self, anim)
		if self.anim ~= anim then
			self.anim = anim
			sprite.play_flipbook("#sprite", anim)
		end
	end
	
	function instance.update(self, dt)
		if vmath.length(self.velocity) ~= 0 then
			instance.change_anim(self, hash("walk"))
		else
			instance.change_anim(self, hash("idle1"))
		end
	end

	function instance.on_input(self, action_id, action)
		
	end
	
	return instance
end

return M