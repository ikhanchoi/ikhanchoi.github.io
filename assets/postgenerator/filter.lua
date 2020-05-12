function Math (elem)
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