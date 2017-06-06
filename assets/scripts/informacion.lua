local informacion  = {}

local function descripcion(dato,ubicacion)
	--aqui se pone ayuda para saber como jugar
	--tambien se pone la ubicacion por que en el futuro la ayuda tambien
	--puede ser referente a donde te encuentres
	if string.find(dato," comandos") == 6 then
		return 'comandos: ir, usar, examinar(tanto objetos como lugares).'
	elseif string.find(dato," juego") == 6 then
		return 'Hola, este es un juego de texto donde practico mis conocimientos en Lua, no hay mucho que decir.'
	else
		return ''
	end
end

informacion.descripcion = descripcion

return informacion