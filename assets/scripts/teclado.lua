local respuestas = require 'assets/scripts/respuestas'
local mapa = require 'assets/scripts/mapa'

local teclado = {}
local escribir = ''
local r = ''

function teclado.load()
	teclado.x = 10
	teclado.y = 10
	teclado.palabra = ''
	teclado.img = {}
	teclado.ubi = 1 --ubicacion del personaje en el mapa guarda un numero para saber donde esta

	
end

function teclado.update(dt)
	--r = respuestas.envio(teclado.palabra)
	--if teclado.palabra ~= '' then
	r = respuestas.envio(teclado.palabra,teclado.ubi)
	--end
end

function teclado.draw()
	if r ~= '' then
		love.graphics.print(r,80,540)
	end
	love.graphics.print('respuesta: ',5,540)
	---------
	love.graphics.print('entrada: ',5,520)
	love.graphics.print(teclado.palabra,65,520) --muestra lo que escribiste hasta poner enter
	---------
	love.graphics.print('>',10,560) --usado para saber donde estas escribiendo
	love.graphics.print(escribir,20,560) --dibuja cada vez que tecleas una tecla
end

function teclado.keypressed(key, scancode, isrepeat)
	--acciones a realizar cuando se presione un boton
	if key == 'return' then
		teclado.palabra = escribir
		escribir = ''
	elseif string.find('abcdefghijklmnopqrstuvwxyz',key) ~= nil then
		escribir = escribir .. key
	elseif key == 'space' then
		escribir = escribir .. ' '
	end	
end

function teclado.keyreleased(key, scancode)
	--acciones cuando se suelta el boton
end

return teclado
