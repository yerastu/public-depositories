local ShigarakiKeys = {}
function GetData()
	local Config = {
		Name = "LuaU",
		Version = "1.0.0",
		Author = "Yera"
	}
end

-- ── keyword ───────────────────────────────────────
local keywordColor = Color3.fromRGB(160, 155, 150)
ShigarakiKeys["and"] = { type = "keyword", color = keywordColor }
ShigarakiKeys["do"] = { type = "keyword", color = keywordColor }
ShigarakiKeys["end"] = { type = "keyword", color = keywordColor }
ShigarakiKeys["export"] = { type = "keyword", color = keywordColor }
ShigarakiKeys["function"] = { type = "keyword", color = keywordColor }
ShigarakiKeys["in"] = { type = "keyword", color = keywordColor }
ShigarakiKeys["inf"] = { type = "keyword", color = keywordColor }
ShigarakiKeys["local"] = { type = "keyword", color = keywordColor }
ShigarakiKeys["not"] = { type = "keyword", color = keywordColor }
ShigarakiKeys["or"] = { type = "keyword", color = keywordColor }
ShigarakiKeys["then"] = { type = "keyword", color = keywordColor }
ShigarakiKeys["type"] = { type = "keyword", color = keywordColor }
ShigarakiKeys["self"] = { type = "keyword", color = keywordColor }

-- ── flow ──────────────────────────────────────────
local flowColor = Color3.fromRGB(160, 155, 150)
ShigarakiKeys["break"] = { type = "flow", color = flowColor }
ShigarakiKeys["continue"] = { type = "flow", color = flowColor }
ShigarakiKeys["else"] = { type = "flow", color = flowColor }
ShigarakiKeys["elseif"] = { type = "flow", color = flowColor }
ShigarakiKeys["for"] = { type = "flow", color = flowColor }
ShigarakiKeys["if"] = { type = "flow", color = flowColor }
ShigarakiKeys["repeat"] = { type = "flow", color = flowColor }
ShigarakiKeys["return"] = { type = "flow", color = flowColor }
ShigarakiKeys["until"] = { type = "flow", color = flowColor }
ShigarakiKeys["while"] = { type = "flow", color = flowColor }

-- ── literal ───────────────────────────────────────
local literalColor = Color3.fromRGB(225, 190, 160)
ShigarakiKeys["false"] = { type = "literal", color = literalColor }
ShigarakiKeys["nil"] = { type = "literal", color = literalColor }
ShigarakiKeys["true"] = { type = "literal", color = literalColor }

-- ── operator ──────────────────────────────────────
local operatorColor = Color3.fromRGB(140, 138, 135)
ShigarakiKeys["op_add"] = { type = "operator", color = operatorColor }
ShigarakiKeys["op_assign"] = { type = "operator", color = operatorColor }
ShigarakiKeys["op_concat"] = { type = "operator", color = operatorColor }
ShigarakiKeys["op_div"] = { type = "operator", color = operatorColor }
ShigarakiKeys["op_eq"] = { type = "operator", color = operatorColor }
ShigarakiKeys["op_floordiv"] = { type = "operator", color = operatorColor }
ShigarakiKeys["op_ge"] = { type = "operator", color = operatorColor }
ShigarakiKeys["op_gt"] = { type = "operator", color = operatorColor }
ShigarakiKeys["op_le"] = { type = "operator", color = operatorColor }
ShigarakiKeys["op_len"] = { type = "operator", color = operatorColor }
ShigarakiKeys["op_lt"] = { type = "operator", color = operatorColor }
ShigarakiKeys["op_mod"] = { type = "operator", color = operatorColor }
ShigarakiKeys["op_mul"] = { type = "operator", color = operatorColor }
ShigarakiKeys["op_neq"] = { type = "operator", color = operatorColor }
ShigarakiKeys["op_pow"] = { type = "operator", color = operatorColor }
ShigarakiKeys["op_sub"] = { type = "operator", color = operatorColor }
ShigarakiKeys["op_unm"] = { type = "operator", color = operatorColor }

-- ── type_annotation ───────────────────────────────
local typeColor = Color3.fromRGB(120, 115, 110)
ShigarakiKeys["op_ampersand"] = { type = "type_annotation", color = typeColor }
ShigarakiKeys["op_arrow"] = { type = "type_annotation", color = typeColor }
ShigarakiKeys["op_colon"] = { type = "type_annotation", color = typeColor }
ShigarakiKeys["op_pipe"] = { type = "type_annotation", color = typeColor }
ShigarakiKeys["op_question"] = { type = "type_annotation", color = typeColor }
ShigarakiKeys["op_typecast"] = { type = "type_annotation", color = typeColor }
ShigarakiKeys["typeof"] = { type = "type_annotation", color = typeColor }

-- ── builtin ───────────────────────────────────────
local builtinColor = Color3.fromRGB(175, 165, 155)
ShigarakiKeys["assert"] = { type = "builtin", color = builtinColor }
ShigarakiKeys["collectgarbage"] = { type = "builtin", color = builtinColor }
ShigarakiKeys["error"] = { type = "builtin", color = builtinColor }
ShigarakiKeys["gcinfo"] = { type = "builtin", color = builtinColor }
ShigarakiKeys["getfenv"] = { type = "builtin", color = builtinColor }
ShigarakiKeys["getmetatable"] = { type = "builtin", color = builtinColor }
ShigarakiKeys["ipairs"] = { type = "builtin", color = builtinColor }
ShigarakiKeys["loadstring"] = { type = "builtin", color = builtinColor }
ShigarakiKeys["newproxy"] = { type = "builtin", color = builtinColor }
ShigarakiKeys["next"] = { type = "builtin", color = builtinColor }
ShigarakiKeys["pairs"] = { type = "builtin", color = builtinColor }
ShigarakiKeys["pcall"] = { type = "builtin", color = builtinColor }
ShigarakiKeys["print"] = { type = "builtin", color = builtinColor }
ShigarakiKeys["rawequal"] = { type = "builtin", color = builtinColor }
ShigarakiKeys["rawget"] = { type = "builtin", color = builtinColor }
ShigarakiKeys["rawlen"] = { type = "builtin", color = builtinColor }
ShigarakiKeys["rawset"] = { type = "builtin", color = builtinColor }
ShigarakiKeys["require"] = { type = "builtin", color = builtinColor }
ShigarakiKeys["select"] = { type = "builtin", color = builtinColor }
ShigarakiKeys["setfenv"] = { type = "builtin", color = builtinColor }
ShigarakiKeys["setmetatable"] = { type = "builtin", color = builtinColor }
ShigarakiKeys["tonumber"] = { type = "builtin", color = builtinColor }
ShigarakiKeys["tostring"] = { type = "builtin", color = builtinColor }
ShigarakiKeys["unpack"] = { type = "builtin", color = builtinColor }
ShigarakiKeys["warn"] = { type = "builtin", color = builtinColor }
ShigarakiKeys["xpcall"] = { type = "builtin", color = builtinColor }

-- ── global ────────────────────────────────────────
local globalColor = Color3.fromRGB(148, 143, 138)
ShigarakiKeys["_G"] = { type = "global", color = globalColor }
ShigarakiKeys["_VERSION"] = { type = "global", color = globalColor }
ShigarakiKeys["bit32"] = { type = "global", color = globalColor }
ShigarakiKeys["buffer"] = { type = "global", color = globalColor }
ShigarakiKeys["coroutine"] = { type = "global", color = globalColor }
ShigarakiKeys["debug"] = { type = "global", color = globalColor }
ShigarakiKeys["game"] = { type = "global", color = globalColor }
ShigarakiKeys["math"] = { type = "global", color = globalColor }
ShigarakiKeys["os"] = { type = "global", color = globalColor }
ShigarakiKeys["plugin"] = { type = "global", color = globalColor }
ShigarakiKeys["script"] = { type = "global", color = globalColor }
ShigarakiKeys["shared"] = { type = "global", color = globalColor }
ShigarakiKeys["string"] = { type = "global", color = globalColor }
ShigarakiKeys["table"] = { type = "global", color = globalColor }
ShigarakiKeys["task"] = { type = "global", color = globalColor }
ShigarakiKeys["utf8"] = { type = "global", color = globalColor }
ShigarakiKeys["vector"] = { type = "global", color = globalColor }
ShigarakiKeys["workspace"] = { type = "global", color = globalColor }

-- ── type ──────────────────────────────────────────
local dataTypeColor = Color3.fromRGB(120, 115, 110)
ShigarakiKeys["Axes"] = { type = "type", color = dataTypeColor }
ShigarakiKeys["BrickColor"] = { type = "type", color = dataTypeColor }
ShigarakiKeys["CFrame"] = { type = "type", color = dataTypeColor }
ShigarakiKeys["CatalogSearchParams"] = { type = "type", color = dataTypeColor }
ShigarakiKeys["Color3"] = { type = "type", color = dataTypeColor }
ShigarakiKeys["ColorSequence"] = { type = "type", color = dataTypeColor }
ShigarakiKeys["ColorSequenceKeypoint"] = { type = "type", color = dataTypeColor }
ShigarakiKeys["DateTime"] = { type = "type", color = dataTypeColor }
ShigarakiKeys["DockWidgetPluginGuiInfo"] = { type = "type", color = dataTypeColor }
ShigarakiKeys["Enum"] = { type = "type", color = dataTypeColor }
ShigarakiKeys["EnumItem"] = { type = "type", color = dataTypeColor }
ShigarakiKeys["Faces"] = { type = "type", color = dataTypeColor }
ShigarakiKeys["FloatCurveKey"] = { type = "type", color = dataTypeColor }
ShigarakiKeys["Font"] = { type = "type", color = dataTypeColor }
ShigarakiKeys["Instance"] = { type = "type", color = dataTypeColor }
ShigarakiKeys["NumberRange"] = { type = "type", color = dataTypeColor }
ShigarakiKeys["NumberSequence"] = { type = "type", color = dataTypeColor }
ShigarakiKeys["NumberSequenceKeypoint"] = { type = "type", color = dataTypeColor }
ShigarakiKeys["OverlapParams"] = { type = "type", color = dataTypeColor }
ShigarakiKeys["PathWaypoint"] = { type = "type", color = dataTypeColor }
ShigarakiKeys["PhysicalProperties"] = { type = "type", color = dataTypeColor }
ShigarakiKeys["Ray"] = { type = "type", color = dataTypeColor }
ShigarakiKeys["RaycastParams"] = { type = "type", color = dataTypeColor }
ShigarakiKeys["RaycastResult"] = { type = "type", color = dataTypeColor }
ShigarakiKeys["Rect"] = { type = "type", color = dataTypeColor }
ShigarakiKeys["Region3"] = { type = "type", color = dataTypeColor }
ShigarakiKeys["Region3int16"] = { type = "type", color = dataTypeColor }
ShigarakiKeys["RotationCurveKey"] = { type = "type", color = dataTypeColor }
ShigarakiKeys["SharedTable"] = { type = "type", color = dataTypeColor }
ShigarakiKeys["TweenInfo"] = { type = "type", color = dataTypeColor }
ShigarakiKeys["UDim"] = { type = "type", color = dataTypeColor }
ShigarakiKeys["UDim2"] = { type = "type", color = dataTypeColor }
ShigarakiKeys["Vector2"] = { type = "type", color = dataTypeColor }
ShigarakiKeys["Vector2int16"] = { type = "type", color = dataTypeColor }
ShigarakiKeys["Vector3"] = { type = "type", color = dataTypeColor }
ShigarakiKeys["Vector3int16"] = { type = "type", color = dataTypeColor }
ShigarakiKeys["any"] = { type = "type", color = dataTypeColor }
ShigarakiKeys["boolean"] = { type = "type", color = dataTypeColor }
ShigarakiKeys["never"] = { type = "type", color = dataTypeColor }
ShigarakiKeys["number"] = { type = "type", color = dataTypeColor }
ShigarakiKeys["thread"] = { type = "type", color = dataTypeColor }
ShigarakiKeys["unknown"] = { type = "type", color = dataTypeColor }
ShigarakiKeys["userdata"] = { type = "type", color = dataTypeColor }
ShigarakiKeys["void"] = { type = "type", color = dataTypeColor }

-- ── metamethod ────────────────────────────────────
local metamethodColor = Color3.fromRGB(215, 180, 150)
ShigarakiKeys["__add"] = { type = "metamethod", color = metamethodColor }
ShigarakiKeys["__band"] = { type = "metamethod", color = metamethodColor }
ShigarakiKeys["__bnot"] = { type = "metamethod", color = metamethodColor }
ShigarakiKeys["__bor"] = { type = "metamethod", color = metamethodColor }
ShigarakiKeys["__bxor"] = { type = "metamethod", color = metamethodColor }
ShigarakiKeys["__call"] = { type = "metamethod", color = metamethodColor }
ShigarakiKeys["__concat"] = { type = "metamethod", color = metamethodColor }
ShigarakiKeys["__div"] = { type = "metamethod", color = metamethodColor }
ShigarakiKeys["__eq"] = { type = "metamethod", color = metamethodColor }
ShigarakiKeys["__idiv"] = { type = "metamethod", color = metamethodColor }
ShigarakiKeys["__index"] = { type = "metamethod", color = metamethodColor }
ShigarakiKeys["__iter"] = { type = "metamethod", color = metamethodColor }
ShigarakiKeys["__le"] = { type = "metamethod", color = metamethodColor }
ShigarakiKeys["__len"] = { type = "metamethod", color = metamethodColor }
ShigarakiKeys["__lt"] = { type = "metamethod", color = metamethodColor }
ShigarakiKeys["__mod"] = { type = "metamethod", color = metamethodColor }
ShigarakiKeys["__mul"] = { type = "metamethod", color = metamethodColor }
ShigarakiKeys["__newindex"] = { type = "metamethod", color = metamethodColor }
ShigarakiKeys["__pow"] = { type = "metamethod", color = metamethodColor }
ShigarakiKeys["__shl"] = { type = "metamethod", color = metamethodColor }
ShigarakiKeys["__shr"] = { type = "metamethod", color = metamethodColor }
ShigarakiKeys["__sub"] = { type = "metamethod", color = metamethodColor }
ShigarakiKeys["__tostring"] = { type = "metamethod", color = metamethodColor }
ShigarakiKeys["__type"] = { type = "metamethod", color = metamethodColor }
ShigarakiKeys["__unm"] = { type = "metamethod", color = metamethodColor }

-- ── comment ───────────────────────────────────────
local commentColor = Color3.fromRGB(68, 64, 60)
ShigarakiKeys["comment_multi_close"] = { type = "comment", color = commentColor }
ShigarakiKeys["comment_multi_open"] = { type = "comment", color = commentColor }
ShigarakiKeys["comment_single"] = { type = "comment", color = commentColor }

-- ── number ────────────────────────────────────────
local numberColor = Color3.fromRGB(225, 190, 160)
ShigarakiKeys["num_binary"] = { type = "number", color = numberColor }
ShigarakiKeys["num_exp"] = { type = "number", color = numberColor }
ShigarakiKeys["num_float"] = { type = "number", color = numberColor }
ShigarakiKeys["num_hex"] = { type = "number", color = numberColor }
ShigarakiKeys["num_inf"] = { type = "number", color = numberColor }
ShigarakiKeys["num_integer"] = { type = "number", color = numberColor }
ShigarakiKeys["num_nan"] = { type = "number", color = numberColor }
ShigarakiKeys["num_separator"] = { type = "number", color = numberColor }

return ShigarakiKeys