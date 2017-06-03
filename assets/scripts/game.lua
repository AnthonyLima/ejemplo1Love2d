local game = {}

function game.load()
	game.window = {} --tamaño de la ventana
	game.window.width = 800
	game.window.height = 600
	love.window.setMode(game.window.width, game.window.height)
end

return game