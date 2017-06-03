local respuestas = require 'assets/scripts/respuestas'

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
	--[[elseif key == 'a' then
		escribir = escribir .. 'a'
	elseif key == 'b' then
		escribir = escribir .. 'b'
	elseif key == 'c' then
		escribir = escribir .. 'c'
	elseif key == 'd' then
		escribir = escribir .. 'd'
	elseif key == 'e' then
		escribir = escribir .. 'e'
	elseif key == 'f' then
		escribir = escribir .. 'f'
	elseif key == 'g' then
		escribir = escribir .. 'g'
	elseif key == 'h' then
		escribir = escribir .. 'h'
	elseif key == 'i' then
		escribir = escribir .. 'i'
	elseif key == 'j' then
		escribir = escribir .. 'j'
	elseif key == 'k' then
		escribir = escribir .. 'k'
	elseif key == 'l' then
		escribir = escribir .. 'l'
	elseif key == 'm' then
		escribir = escribir .. 'm'
	elseif key == 'n' then
		escribir = escribir .. 'n'
	elseif key == 'o' then
		escribir = escribir .. 'o'
	elseif key == 'p' then
		escribir = escribir .. 'p'
	elseif key == 'q' then
		escribir = escribir .. 'q'
	elseif key == 'r' then
		escribir = escribir .. 'r'
	elseif key == 's' then
		escribir = escribir .. 's'
	elseif key == 't' then
		escribir = escribir .. 't'
	elseif key == 'u' then
		escribir = escribir .. 'u'
	elseif key == 'v' then
		escribir = escribir .. 'v'
	elseif key == 'w' then
		escribir = escribir .. 'w'
	elseif key == 'x' then
		escribir = escribir .. 'x'
	elseif key == 'y' then
		escribir = escribir .. 'y'
	elseif key == 'z' then
		escribir = escribir .. 'z']]
	elseif key == 'space' then
		escribir = escribir .. ' '
	end	
end

function teclado.keyreleased(key, scancode)
	--acciones cuando se suelta el boton
end

return teclado
