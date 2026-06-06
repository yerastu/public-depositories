local KanekiKeys = {}
function GetData()
	local Config = {
		Name = "LuaU",
		Version = "1.0.0",
		Author = "Yera"
	}
end

-- ── keyword ───────────────────────────────────────
local keywordColor = Color3.fromRGB(205, 55, 55)
KanekiKeys["and"] = { type = "keyword", color = keywordColor }
KanekiKeys["do"] = { type = "keyword", color = keywordColor }
KanekiKeys["end"] = { type = "keyword", color = keywordColor }
KanekiKeys["export"] = { type = "keyword", color = keywordColor }
KanekiKeys["function"] = { type = "keyword", color = keywordColor }
KanekiKeys["in"] = { type = "keyword", color = keywordColor }
KanekiKeys["inf"] = { type = "keyword", color = keywordColor }
KanekiKeys["local"] = { type = "keyword", color = keywordColor }
KanekiKeys["not"] = { type = "keyword", color = keywordColor }
KanekiKeys["or"] = { type = "keyword", color = keywordColor }
KanekiKeys["then"] = { type = "keyword", color = keywordColor }
KanekiKeys["type"] = { type = "keyword", color = keywordColor }
KanekiKeys["self"] = { type = "keyword", color = keywordColor }

-- ── flow ──────────────────────────────────────────
local flowColor = Color3.fromRGB(205, 55, 55)
KanekiKeys["break"] = { type = "flow", color = flowColor }
KanekiKeys["continue"] = { type = "flow", color = flowColor }
KanekiKeys["else"] = { type = "flow", color = flowColor }
KanekiKeys["elseif"] = { type = "flow", color = flowColor }
KanekiKeys["for"] = { type = "flow", color = flowColor }
KanekiKeys["if"] = { type = "flow", color = flowColor }
KanekiKeys["repeat"] = { type = "flow", color = flowColor }
KanekiKeys["return"] = { type = "flow", color = flowColor }
KanekiKeys["until"] = { type = "flow", color = flowColor }
KanekiKeys["while"] = { type = "flow", color = flowColor }

-- ── literal ───────────────────────────────────────
local literalColor = Color3.fromRGB(230, 215, 200)
KanekiKeys["false"] = { type = "literal", color = literalColor }
KanekiKeys["nil"] = { type = "literal", color = literalColor }
KanekiKeys["true"] = { type = "literal", color = literalColor }

-- ── operator ──────────────────────────────────────
local operatorColor = Color3.fromRGB(155, 148, 145)
KanekiKeys["op_add"] = { type = "operator", color = operatorColor }
KanekiKeys["op_assign"] = { type = "operator", color = operatorColor }
KanekiKeys["op_concat"] = { type = "operator", color = operatorColor }
KanekiKeys["op_div"] = { type = "operator", color = operatorColor }
KanekiKeys["op_eq"] = { type = "operator", color = operatorColor }
KanekiKeys["op_floordiv"] = { type = "operator", color = operatorColor }
KanekiKeys["op_ge"] = { type = "operator", color = operatorColor }
KanekiKeys["op_gt"] = { type = "operator", color = operatorColor }
KanekiKeys["op_le"] = { type = "operator", color = operatorColor }
KanekiKeys["op_len"] = { type = "operator", color = operatorColor }
KanekiKeys["op_lt"] = { type = "operator", color = operatorColor }
KanekiKeys["op_mod"] = { type = "operator", color = operatorColor }
KanekiKeys["op_mul"] = { type = "operator", color = operatorColor }
KanekiKeys["op_neq"] = { type = "operator", color = operatorColor }
KanekiKeys["op_pow"] = { type = "operator", color = operatorColor }
KanekiKeys["op_sub"] = { type = "operator", color = operatorColor }
KanekiKeys["op_unm"] = { type = "operator", color = operatorColor }

-- ── type_annotation ───────────────────────────────
local typeColor = Color3.fromRGB(170, 30, 30)
KanekiKeys["op_ampersand"] = { type = "type_annotation", color = typeColor }
KanekiKeys["op_arrow"] = { type = "type_annotation", color = typeColor }
KanekiKeys["op_colon"] = { type = "type_annotation", color = typeColor }
KanekiKeys["op_pipe"] = { type = "type_annotation", color = typeColor }
KanekiKeys["op_question"] = { type = "type_annotation", color = typeColor }
KanekiKeys["op_typecast"] = { type = "type_annotation", color = typeColor }
KanekiKeys["typeof"] = { type = "type_annotation", color = typeColor }

-- ── builtin ───────────────────────────────────────
local builtinColor = Color3.fromRGB(218, 72, 72)
KanekiKeys["assert"] = { type = "builtin", color = builtinColor }
KanekiKeys["collectgarbage"] = { type = "builtin", color = builtinColor }
KanekiKeys["error"] = { type = "builtin", color = builtinColor }
KanekiKeys["gcinfo"] = { type = "builtin", color = builtinColor }
KanekiKeys["getfenv"] = { type = "builtin", color = builtinColor }
KanekiKeys["getmetatable"] = { type = "builtin", color = builtinColor }
KanekiKeys["ipairs"] = { type = "builtin", color = builtinColor }
KanekiKeys["loadstring"] = { type = "builtin", color = builtinColor }
KanekiKeys["newproxy"] = { type = "builtin", color = builtinColor }
KanekiKeys["next"] = { type = "builtin", color = builtinColor }
KanekiKeys["pairs"] = { type = "builtin", color = builtinColor }
KanekiKeys["pcall"] = { type = "builtin", color = builtinColor }
KanekiKeys["print"] = { type = "builtin", color = builtinColor }
KanekiKeys["rawequal"] = { type = "builtin", color = builtinColor }
KanekiKeys["rawget"] = { type = "builtin", color = builtinColor }
KanekiKeys["rawlen"] = { type = "builtin", color = builtinColor }
KanekiKeys["rawset"] = { type = "builtin", color = builtinColor }
KanekiKeys["require"] = { type = "builtin", color = builtinColor }
KanekiKeys["select"] = { type = "builtin", color = builtinColor }
KanekiKeys["setfenv"] = { type = "builtin", color = builtinColor }
KanekiKeys["setmetatable"] = { type = "builtin", color = builtinColor }
KanekiKeys["tonumber"] = { type = "builtin", color = builtinColor }
KanekiKeys["tostring"] = { type = "builtin", color = builtinColor }
KanekiKeys["unpack"] = { type = "builtin", color = builtinColor }
KanekiKeys["warn"] = { type = "builtin", color = builtinColor }
KanekiKeys["xpcall"] = { type = "builtin", color = builtinColor }

-- ── global ────────────────────────────────────────
local globalColor = Color3.fromRGB(190, 45, 45)
KanekiKeys["_G"] = { type = "global", color = globalColor }
KanekiKeys["_VERSION"] = { type = "global", color = globalColor }
KanekiKeys["bit32"] = { type = "global", color = globalColor }
KanekiKeys["buffer"] = { type = "global", color = globalColor }
KanekiKeys["coroutine"] = { type = "global", color = globalColor }
KanekiKeys["debug"] = { type = "global", color = globalColor }
KanekiKeys["game"] = { type = "global", color = globalColor }
KanekiKeys["math"] = { type = "global", color = globalColor }
KanekiKeys["os"] = { type = "global", color = globalColor }
KanekiKeys["plugin"] = { type = "global", color = globalColor }
KanekiKeys["script"] = { type = "global", color = globalColor }
KanekiKeys["shared"] = { type = "global", color = globalColor }
KanekiKeys["string"] = { type = "global", color = globalColor }
KanekiKeys["table"] = { type = "global", color = globalColor }
KanekiKeys["task"] = { type = "global", color = globalColor }
KanekiKeys["utf8"] = { type = "global", color = globalColor }
KanekiKeys["vector"] = { type = "global", color = globalColor }
KanekiKeys["workspace"] = { type = "global", color = globalColor }

-- ── type ──────────────────────────────────────────
local dataTypeColor = Color3.fromRGB(170, 30, 30)
KanekiKeys["Axes"] = { type = "type", color = dataTypeColor }
KanekiKeys["BrickColor"] = { type = "type", color = dataTypeColor }
KanekiKeys["CFrame"] = { type = "type", color = dataTypeColor }
KanekiKeys["CatalogSearchParams"] = { type = "type", color = dataTypeColor }
KanekiKeys["Color3"] = { type = "type", color = dataTypeColor }
KanekiKeys["ColorSequence"] = { type = "type", color = dataTypeColor }
KanekiKeys["ColorSequenceKeypoint"] = { type = "type", color = dataTypeColor }
KanekiKeys["DateTime"] = { type = "type", color = dataTypeColor }
KanekiKeys["DockWidgetPluginGuiInfo"] = { type = "type", color = dataTypeColor }
KanekiKeys["Enum"] = { type = "type", color = dataTypeColor }
KanekiKeys["EnumItem"] = { type = "type", color = dataTypeColor }
KanekiKeys["Faces"] = { type = "type", color = dataTypeColor }
KanekiKeys["FloatCurveKey"] = { type = "type", color = dataTypeColor }
KanekiKeys["Font"] = { type = "type", color = dataTypeColor }
KanekiKeys["Instance"] = { type = "type", color = dataTypeColor }
KanekiKeys["NumberRange"] = { type = "type", color = dataTypeColor }
KanekiKeys["NumberSequence"] = { type = "type", color = dataTypeColor }
KanekiKeys["NumberSequenceKeypoint"] = { type = "type", color = dataTypeColor }
KanekiKeys["OverlapParams"] = { type = "type", color = dataTypeColor }
KanekiKeys["PathWaypoint"] = { type = "type", color = dataTypeColor }
KanekiKeys["PhysicalProperties"] = { type = "type", color = dataTypeColor }
KanekiKeys["Ray"] = { type = "type", color = dataTypeColor }
KanekiKeys["RaycastParams"] = { type = "type", color = dataTypeColor }
KanekiKeys["RaycastResult"] = { type = "type", color = dataTypeColor }
KanekiKeys["Rect"] = { type = "type", color = dataTypeColor }
KanekiKeys["Region3"] = { type = "type", color = dataTypeColor }
KanekiKeys["Region3int16"] = { type = "type", color = dataTypeColor }
KanekiKeys["RotationCurveKey"] = { type = "type", color = dataTypeColor }
KanekiKeys["SharedTable"] = { type = "type", color = dataTypeColor }
KanekiKeys["TweenInfo"] = { type = "type", color = dataTypeColor }
KanekiKeys["UDim"] = { type = "type", color = dataTypeColor }
KanekiKeys["UDim2"] = { type = "type", color = dataTypeColor }
KanekiKeys["Vector2"] = { type = "type", color = dataTypeColor }
KanekiKeys["Vector2int16"] = { type = "type", color = dataTypeColor }
KanekiKeys["Vector3"] = { type = "type", color = dataTypeColor }
KanekiKeys["Vector3int16"] = { type = "type", color = dataTypeColor }
KanekiKeys["any"] = { type = "type", color = dataTypeColor }
KanekiKeys["boolean"] = { type = "type", color = dataTypeColor }
KanekiKeys["never"] = { type = "type", color = dataTypeColor }
KanekiKeys["number"] = { type = "type", color = dataTypeColor }
KanekiKeys["thread"] = { type = "type", color = dataTypeColor }
KanekiKeys["unknown"] = { type = "type", color = dataTypeColor }
KanekiKeys["userdata"] = { type = "type", color = dataTypeColor }
KanekiKeys["void"] = { type = "type", color = dataTypeColor }

-- ── metamethod ────────────────────────────────────
local metamethodColor = Color3.fromRGB(225, 208, 195)
KanekiKeys["__add"] = { type = "metamethod", color = metamethodColor }
KanekiKeys["__band"] = { type = "metamethod", color = metamethodColor }
KanekiKeys["__bnot"] = { type = "metamethod", color = metamethodColor }
KanekiKeys["__bor"] = { type = "metamethod", color = metamethodColor }
KanekiKeys["__bxor"] = { type = "metamethod", color = metamethodColor }
KanekiKeys["__call"] = { type = "metamethod", color = metamethodColor }
KanekiKeys["__concat"] = { type = "metamethod", color = metamethodColor }
KanekiKeys["__div"] = { type = "metamethod", color = metamethodColor }
KanekiKeys["__eq"] = { type = "metamethod", color = metamethodColor }
KanekiKeys["__idiv"] = { type = "metamethod", color = metamethodColor }
KanekiKeys["__index"] = { type = "metamethod", color = metamethodColor }
KanekiKeys["__iter"] = { type = "metamethod", color = metamethodColor }
KanekiKeys["__le"] = { type = "metamethod", color = metamethodColor }
KanekiKeys["__len"] = { type = "metamethod", color = metamethodColor }
KanekiKeys["__lt"] = { type = "metamethod", color = metamethodColor }
KanekiKeys["__mod"] = { type = "metamethod", color = metamethodColor }
KanekiKeys["__mul"] = { type = "metamethod", color = metamethodColor }
KanekiKeys["__newindex"] = { type = "metamethod", color = metamethodColor }
KanekiKeys["__pow"] = { type = "metamethod", color = metamethodColor }
KanekiKeys["__shl"] = { type = "metamethod", color = metamethodColor }
KanekiKeys["__shr"] = { type = "metamethod", color = metamethodColor }
KanekiKeys["__sub"] = { type = "metamethod", color = metamethodColor }
KanekiKeys["__tostring"] = { type = "metamethod", color = metamethodColor }
KanekiKeys["__type"] = { type = "metamethod", color = metamethodColor }
KanekiKeys["__unm"] = { type = "metamethod", color = metamethodColor }

-- ── comment ───────────────────────────────────────
local commentColor = Color3.fromRGB(65, 58, 55)
KanekiKeys["comment_multi_close"] = { type = "comment", color = commentColor }
KanekiKeys["comment_multi_open"] = { type = "comment", color = commentColor }
KanekiKeys["comment_single"] = { type = "comment", color = commentColor }

-- ── number ────────────────────────────────────────
local numberColor = Color3.fromRGB(230, 215, 200)
KanekiKeys["num_binary"] = { type = "number", color = numberColor }
KanekiKeys["num_exp"] = { type = "number", color = numberColor }
KanekiKeys["num_float"] = { type = "number", color = numberColor }
KanekiKeys["num_hex"] = { type = "number", color = numberColor }
KanekiKeys["num_inf"] = { type = "number", color = numberColor }
KanekiKeys["num_integer"] = { type = "number", color = numberColor }
KanekiKeys["num_nan"] = { type = "number", color = numberColor }
KanekiKeys["num_separator"] = { type = "number", color = numberColor }

return KanekiKeys