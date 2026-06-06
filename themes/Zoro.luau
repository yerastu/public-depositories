local ZoroKeys = {}
function GetData()
	local Config = {
		Name = "LuaU",
		Version = "1.0.0",
		Author = "Yera"
	}
end

-- ── keyword ───────────────────────────────────────
local keywordColor = Color3.fromRGB(60, 190, 100)
ZoroKeys["and"] = { type = "keyword", color = keywordColor }
ZoroKeys["do"] = { type = "keyword", color = keywordColor }
ZoroKeys["end"] = { type = "keyword", color = keywordColor }
ZoroKeys["export"] = { type = "keyword", color = keywordColor }
ZoroKeys["function"] = { type = "keyword", color = keywordColor }
ZoroKeys["in"] = { type = "keyword", color = keywordColor }
ZoroKeys["inf"] = { type = "keyword", color = keywordColor }
ZoroKeys["local"] = { type = "keyword", color = keywordColor }
ZoroKeys["not"] = { type = "keyword", color = keywordColor }
ZoroKeys["or"] = { type = "keyword", color = keywordColor }
ZoroKeys["then"] = { type = "keyword", color = keywordColor }
ZoroKeys["type"] = { type = "keyword", color = keywordColor }
ZoroKeys["self"] = { type = "keyword", color = keywordColor }

-- ── flow ──────────────────────────────────────────
local flowColor = Color3.fromRGB(60, 190, 100)
ZoroKeys["break"] = { type = "flow", color = flowColor }
ZoroKeys["continue"] = { type = "flow", color = flowColor }
ZoroKeys["else"] = { type = "flow", color = flowColor }
ZoroKeys["elseif"] = { type = "flow", color = flowColor }
ZoroKeys["for"] = { type = "flow", color = flowColor }
ZoroKeys["if"] = { type = "flow", color = flowColor }
ZoroKeys["repeat"] = { type = "flow", color = flowColor }
ZoroKeys["return"] = { type = "flow", color = flowColor }
ZoroKeys["until"] = { type = "flow", color = flowColor }
ZoroKeys["while"] = { type = "flow", color = flowColor }

-- ── literal ───────────────────────────────────────
local literalColor = Color3.fromRGB(195, 225, 160)
ZoroKeys["false"] = { type = "literal", color = literalColor }
ZoroKeys["nil"] = { type = "literal", color = literalColor }
ZoroKeys["true"] = { type = "literal", color = literalColor }

-- ── operator ──────────────────────────────────────
local operatorColor = Color3.fromRGB(170, 180, 175)
ZoroKeys["op_add"] = { type = "operator", color = operatorColor }
ZoroKeys["op_assign"] = { type = "operator", color = operatorColor }
ZoroKeys["op_concat"] = { type = "operator", color = operatorColor }
ZoroKeys["op_div"] = { type = "operator", color = operatorColor }
ZoroKeys["op_eq"] = { type = "operator", color = operatorColor }
ZoroKeys["op_floordiv"] = { type = "operator", color = operatorColor }
ZoroKeys["op_ge"] = { type = "operator", color = operatorColor }
ZoroKeys["op_gt"] = { type = "operator", color = operatorColor }
ZoroKeys["op_le"] = { type = "operator", color = operatorColor }
ZoroKeys["op_len"] = { type = "operator", color = operatorColor }
ZoroKeys["op_lt"] = { type = "operator", color = operatorColor }
ZoroKeys["op_mod"] = { type = "operator", color = operatorColor }
ZoroKeys["op_mul"] = { type = "operator", color = operatorColor }
ZoroKeys["op_neq"] = { type = "operator", color = operatorColor }
ZoroKeys["op_pow"] = { type = "operator", color = operatorColor }
ZoroKeys["op_sub"] = { type = "operator", color = operatorColor }
ZoroKeys["op_unm"] = { type = "operator", color = operatorColor }

-- ── type_annotation ───────────────────────────────
local typeColor = Color3.fromRGB(35, 155, 75)
ZoroKeys["op_ampersand"] = { type = "type_annotation", color = typeColor }
ZoroKeys["op_arrow"] = { type = "type_annotation", color = typeColor }
ZoroKeys["op_colon"] = { type = "type_annotation", color = typeColor }
ZoroKeys["op_pipe"] = { type = "type_annotation", color = typeColor }
ZoroKeys["op_question"] = { type = "type_annotation", color = typeColor }
ZoroKeys["op_typecast"] = { type = "type_annotation", color = typeColor }
ZoroKeys["typeof"] = { type = "type_annotation", color = typeColor }

-- ── builtin ───────────────────────────────────────
local builtinColor = Color3.fromRGB(80, 205, 115)
ZoroKeys["assert"] = { type = "builtin", color = builtinColor }
ZoroKeys["collectgarbage"] = { type = "builtin", color = builtinColor }
ZoroKeys["error"] = { type = "builtin", color = builtinColor }
ZoroKeys["gcinfo"] = { type = "builtin", color = builtinColor }
ZoroKeys["getfenv"] = { type = "builtin", color = builtinColor }
ZoroKeys["getmetatable"] = { type = "builtin", color = builtinColor }
ZoroKeys["ipairs"] = { type = "builtin", color = builtinColor }
ZoroKeys["loadstring"] = { type = "builtin", color = builtinColor }
ZoroKeys["newproxy"] = { type = "builtin", color = builtinColor }
ZoroKeys["next"] = { type = "builtin", color = builtinColor }
ZoroKeys["pairs"] = { type = "builtin", color = builtinColor }
ZoroKeys["pcall"] = { type = "builtin", color = builtinColor }
ZoroKeys["print"] = { type = "builtin", color = builtinColor }
ZoroKeys["rawequal"] = { type = "builtin", color = builtinColor }
ZoroKeys["rawget"] = { type = "builtin", color = builtinColor }
ZoroKeys["rawlen"] = { type = "builtin", color = builtinColor }
ZoroKeys["rawset"] = { type = "builtin", color = builtinColor }
ZoroKeys["require"] = { type = "builtin", color = builtinColor }
ZoroKeys["select"] = { type = "builtin", color = builtinColor }
ZoroKeys["setfenv"] = { type = "builtin", color = builtinColor }
ZoroKeys["setmetatable"] = { type = "builtin", color = builtinColor }
ZoroKeys["tonumber"] = { type = "builtin", color = builtinColor }
ZoroKeys["tostring"] = { type = "builtin", color = builtinColor }
ZoroKeys["unpack"] = { type = "builtin", color = builtinColor }
ZoroKeys["warn"] = { type = "builtin", color = builtinColor }
ZoroKeys["xpcall"] = { type = "builtin", color = builtinColor }

-- ── global ────────────────────────────────────────
local globalColor = Color3.fromRGB(50, 175, 90)
ZoroKeys["_G"] = { type = "global", color = globalColor }
ZoroKeys["_VERSION"] = { type = "global", color = globalColor }
ZoroKeys["bit32"] = { type = "global", color = globalColor }
ZoroKeys["buffer"] = { type = "global", color = globalColor }
ZoroKeys["coroutine"] = { type = "global", color = globalColor }
ZoroKeys["debug"] = { type = "global", color = globalColor }
ZoroKeys["game"] = { type = "global", color = globalColor }
ZoroKeys["math"] = { type = "global", color = globalColor }
ZoroKeys["os"] = { type = "global", color = globalColor }
ZoroKeys["plugin"] = { type = "global", color = globalColor }
ZoroKeys["script"] = { type = "global", color = globalColor }
ZoroKeys["shared"] = { type = "global", color = globalColor }
ZoroKeys["string"] = { type = "global", color = globalColor }
ZoroKeys["table"] = { type = "global", color = globalColor }
ZoroKeys["task"] = { type = "global", color = globalColor }
ZoroKeys["utf8"] = { type = "global", color = globalColor }
ZoroKeys["vector"] = { type = "global", color = globalColor }
ZoroKeys["workspace"] = { type = "global", color = globalColor }

-- ── type ──────────────────────────────────────────
local dataTypeColor = Color3.fromRGB(35, 155, 75)
ZoroKeys["Axes"] = { type = "type", color = dataTypeColor }
ZoroKeys["BrickColor"] = { type = "type", color = dataTypeColor }
ZoroKeys["CFrame"] = { type = "type", color = dataTypeColor }
ZoroKeys["CatalogSearchParams"] = { type = "type", color = dataTypeColor }
ZoroKeys["Color3"] = { type = "type", color = dataTypeColor }
ZoroKeys["ColorSequence"] = { type = "type", color = dataTypeColor }
ZoroKeys["ColorSequenceKeypoint"] = { type = "type", color = dataTypeColor }
ZoroKeys["DateTime"] = { type = "type", color = dataTypeColor }
ZoroKeys["DockWidgetPluginGuiInfo"] = { type = "type", color = dataTypeColor }
ZoroKeys["Enum"] = { type = "type", color = dataTypeColor }
ZoroKeys["EnumItem"] = { type = "type", color = dataTypeColor }
ZoroKeys["Faces"] = { type = "type", color = dataTypeColor }
ZoroKeys["FloatCurveKey"] = { type = "type", color = dataTypeColor }
ZoroKeys["Font"] = { type = "type", color = dataTypeColor }
ZoroKeys["Instance"] = { type = "type", color = dataTypeColor }
ZoroKeys["NumberRange"] = { type = "type", color = dataTypeColor }
ZoroKeys["NumberSequence"] = { type = "type", color = dataTypeColor }
ZoroKeys["NumberSequenceKeypoint"] = { type = "type", color = dataTypeColor }
ZoroKeys["OverlapParams"] = { type = "type", color = dataTypeColor }
ZoroKeys["PathWaypoint"] = { type = "type", color = dataTypeColor }
ZoroKeys["PhysicalProperties"] = { type = "type", color = dataTypeColor }
ZoroKeys["Ray"] = { type = "type", color = dataTypeColor }
ZoroKeys["RaycastParams"] = { type = "type", color = dataTypeColor }
ZoroKeys["RaycastResult"] = { type = "type", color = dataTypeColor }
ZoroKeys["Rect"] = { type = "type", color = dataTypeColor }
ZoroKeys["Region3"] = { type = "type", color = dataTypeColor }
ZoroKeys["Region3int16"] = { type = "type", color = dataTypeColor }
ZoroKeys["RotationCurveKey"] = { type = "type", color = dataTypeColor }
ZoroKeys["SharedTable"] = { type = "type", color = dataTypeColor }
ZoroKeys["TweenInfo"] = { type = "type", color = dataTypeColor }
ZoroKeys["UDim"] = { type = "type", color = dataTypeColor }
ZoroKeys["UDim2"] = { type = "type", color = dataTypeColor }
ZoroKeys["Vector2"] = { type = "type", color = dataTypeColor }
ZoroKeys["Vector2int16"] = { type = "type", color = dataTypeColor }
ZoroKeys["Vector3"] = { type = "type", color = dataTypeColor }
ZoroKeys["Vector3int16"] = { type = "type", color = dataTypeColor }
ZoroKeys["any"] = { type = "type", color = dataTypeColor }
ZoroKeys["boolean"] = { type = "type", color = dataTypeColor }
ZoroKeys["never"] = { type = "type", color = dataTypeColor }
ZoroKeys["number"] = { type = "type", color = dataTypeColor }
ZoroKeys["thread"] = { type = "type", color = dataTypeColor }
ZoroKeys["unknown"] = { type = "type", color = dataTypeColor }
ZoroKeys["userdata"] = { type = "type", color = dataTypeColor }
ZoroKeys["void"] = { type = "type", color = dataTypeColor }

-- ── metamethod ────────────────────────────────────
local metamethodColor = Color3.fromRGB(185, 215, 150)
ZoroKeys["__add"] = { type = "metamethod", color = metamethodColor }
ZoroKeys["__band"] = { type = "metamethod", color = metamethodColor }
ZoroKeys["__bnot"] = { type = "metamethod", color = metamethodColor }
ZoroKeys["__bor"] = { type = "metamethod", color = metamethodColor }
ZoroKeys["__bxor"] = { type = "metamethod", color = metamethodColor }
ZoroKeys["__call"] = { type = "metamethod", color = metamethodColor }
ZoroKeys["__concat"] = { type = "metamethod", color = metamethodColor }
ZoroKeys["__div"] = { type = "metamethod", color = metamethodColor }
ZoroKeys["__eq"] = { type = "metamethod", color = metamethodColor }
ZoroKeys["__idiv"] = { type = "metamethod", color = metamethodColor }
ZoroKeys["__index"] = { type = "metamethod", color = metamethodColor }
ZoroKeys["__iter"] = { type = "metamethod", color = metamethodColor }
ZoroKeys["__le"] = { type = "metamethod", color = metamethodColor }
ZoroKeys["__len"] = { type = "metamethod", color = metamethodColor }
ZoroKeys["__lt"] = { type = "metamethod", color = metamethodColor }
ZoroKeys["__mod"] = { type = "metamethod", color = metamethodColor }
ZoroKeys["__mul"] = { type = "metamethod", color = metamethodColor }
ZoroKeys["__newindex"] = { type = "metamethod", color = metamethodColor }
ZoroKeys["__pow"] = { type = "metamethod", color = metamethodColor }
ZoroKeys["__shl"] = { type = "metamethod", color = metamethodColor }
ZoroKeys["__shr"] = { type = "metamethod", color = metamethodColor }
ZoroKeys["__sub"] = { type = "metamethod", color = metamethodColor }
ZoroKeys["__tostring"] = { type = "metamethod", color = metamethodColor }
ZoroKeys["__type"] = { type = "metamethod", color = metamethodColor }
ZoroKeys["__unm"] = { type = "metamethod", color = metamethodColor }

-- ── comment ───────────────────────────────────────
local commentColor = Color3.fromRGB(65, 80, 65)
ZoroKeys["comment_multi_close"] = { type = "comment", color = commentColor }
ZoroKeys["comment_multi_open"] = { type = "comment", color = commentColor }
ZoroKeys["comment_single"] = { type = "comment", color = commentColor }

-- ── number ────────────────────────────────────────
local numberColor = Color3.fromRGB(195, 225, 160)
ZoroKeys["num_binary"] = { type = "number", color = numberColor }
ZoroKeys["num_exp"] = { type = "number", color = numberColor }
ZoroKeys["num_float"] = { type = "number", color = numberColor }
ZoroKeys["num_hex"] = { type = "number", color = numberColor }
ZoroKeys["num_inf"] = { type = "number", color = numberColor }
ZoroKeys["num_integer"] = { type = "number", color = numberColor }
ZoroKeys["num_nan"] = { type = "number", color = numberColor }
ZoroKeys["num_separator"] = { type = "number", color = numberColor }

return ZoroKeys