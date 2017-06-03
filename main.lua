--es un simple juego que hace uso del teclado del equipo
--practicas para un juego mas avanzado

--bibliotecas
local game = require 'assets/scripts/game'
local teclado = require 'assets/scripts/teclado'

function love.load()
	game.load()
	teclado.load()
end

function love.update(dt)
	teclado.update(dt)
end

function love.draw()
	teclado.draw()
end

--eventos para las teclas presionadas
function love.keypressed(key, scancode, isrepeat)
	teclado.keypressed(key, scancode, isrepeat)
end

function love.keyreleased(key, scancode)
	teclado.keyreleased(key, scancode)
end