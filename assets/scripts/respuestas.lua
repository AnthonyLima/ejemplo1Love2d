local informacion = require 'assets/scripts/informacion'

local respuestas = {}

local function responderEntrega(dato,ubicacion)
	if string.find(dato,"ir ") ~= nil then
		return informacion.descripcion(dato,ubicacion)
	else
		return ''
	end
end

respuestas.envio = responderEntrega

return respuestas