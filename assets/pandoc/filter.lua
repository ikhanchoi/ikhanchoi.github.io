function Math (elem)
	elem.text = elem.text:gsub("<","&lt;")
	elem.text = elem.text:gsub("|","&#124;")
	elem.text = elem.text:gsub("\\qedhere","")
	if elem.mathtype == 'DisplayMath' then
		return {
			pandoc.Str('\n\n'),
			elem,
			pandoc.Str('\n\n'),
		}
	else
		elem.text = elem.text:gsub("\\{","\\\\{")
		elem.text = elem.text:gsub("\\}","\\\\}")
		elem.text = elem.text:gsub("_","\\_")
		return elem
	end
end

function Header (elem)
	if elem.classes[1] == 'unnumbered' then
		return {
			pandoc.Plain('(tagopen)center(tagclose)(tagopen)b(tagclose)'),
			pandoc.Plain(elem.content),
			pandoc.Plain('(tagopen)/b(tagclose)(tagopen)/center(tagclose)')
		}
	else
		return elem
	end
end