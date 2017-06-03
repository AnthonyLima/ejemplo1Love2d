local informacion  = {}

local function descripcion(dato,ubicacion)
	--aqui se podra agregar mas contenido referente a donde quieres ir y la ubicacion actual
	if string.find(dato," norte") == 3 then
		return 'parece no haber nada'
	elseif string.find(dato," sur") == 3 then
		return 'si haces eso te puedes caer'
	elseif string.find(dato," este") == 3 then
		return 'este? este quien?'
	elseif string.find(dato," oeste") == 3 then
		return 'alli solo van los vaqueros'
	else
		return ''
	end
end

informacion.descripcion = descripcion

return informacion