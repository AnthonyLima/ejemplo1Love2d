local informacion = require 'assets/scripts/informacion'

local respuestas = {}

local function responderEntrega(dato,ubicacion)
	if dato == 'hola' then
		return 'hola,como estas?'
	elseif dato == 'bien' then
		return 'me alegro por ti'
	elseif string.find(dato,"ir ") ~= nil then
		return informacion.descripcion(dato)
	else
		return ''
	end
end

respuestas.envio = responderEntrega

return respuestas