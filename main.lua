function love.load()
	love.keyboard.setKeyRepeat(true)
	x = 50
end
 
function love.keypressed(key, isrepeat)
	if key == "right" then
		x = (x + 10) % love.graphics.getWidth()
	elseif key == "left" then
		x = (x - 10) % love.graphics.getWidth()
	end
end
 
function love.draw()
	love.graphics.circle("fill", x, 100, 32)
end
