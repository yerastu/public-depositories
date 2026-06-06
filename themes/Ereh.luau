local ErehKeys = {}
function GetData()
	local Config = {
		Name = "LuaU",
		Version = "1.0.0",
		Author = "Yera"
	}
end

-- ── keyword ───────────────────────────────────────
local keywordColor = Color3.fromRGB(100, 160, 110)
ErehKeys["and"] = { type = "keyword", color = keywordColor }
ErehKeys["do"] = { type = "keyword", color = keywordColor }
ErehKeys["end"] = { type = "keyword", color = keywordColor }
ErehKeys["export"] = { type = "keyword", color = keywordColor }
ErehKeys["function"] = { type = "keyword", color = keywordColor }
ErehKeys["in"] = { type = "keyword", color = keywordColor }
ErehKeys["inf"] = { type = "keyword", color = keywordColor }
ErehKeys["local"] = { type = "keyword", color = keywordColor }
ErehKeys["not"] = { type = "keyword", color = keywordColor }
ErehKeys["or"] = { type = "keyword", color = keywordColor }
ErehKeys["then"] = { type = "keyword", color = keywordColor }
ErehKeys["type"] = { type = "keyword", color = keywordColor }
ErehKeys["self"] = { type = "keyword", color = keywordColor }

-- ── flow ──────────────────────────────────────────
local flowColor = Color3.fromRGB(100, 160, 110)
ErehKeys["break"] = { type = "flow", color = flowColor }
ErehKeys["continue"] = { type = "flow", color = flowColor }
ErehKeys["else"] = { type = "flow", color = flowColor }
ErehKeys["elseif"] = { type = "flow", color = flowColor }
ErehKeys["for"] = { type = "flow", color = flowColor }
ErehKeys["if"] = { type = "flow", color = flowColor }
ErehKeys["repeat"] = { type = "flow", color = flowColor }
ErehKeys["return"] = { type = "flow", color = flowColor }
ErehKeys["until"] = { type = "flow", color = flowColor }
ErehKeys["while"] = { type = "flow", color = flowColor }

-- ── literal ───────────────────────────────────────
local literalColor = Color3.fromRGB(195, 215, 185)
ErehKeys["false"] = { type = "literal", color = literalColor }
ErehKeys["nil"] = { type = "literal", color = literalColor }
ErehKeys["true"] = { type = "literal", color = literalColor }

-- ── operator ──────────────────────────────────────
local operatorColor = Color3.fromRGB(158, 160, 155)
ErehKeys["op_add"] = { type = "operator", color = operatorColor }
ErehKeys["op_assign"] = { type = "operator", color = operatorColor }
ErehKeys["op_concat"] = { type = "operator", color = operatorColor }
ErehKeys["op_div"] = { type = "operator", color = operatorColor }
ErehKeys["op_eq"] = { type = "operator", color = operatorColor }
ErehKeys["op_floordiv"] = { type = "operator", color = operatorColor }
ErehKeys["op_ge"] = { type = "operator", color = operatorColor }
ErehKeys["op_gt"] = { type = "operator", color = operatorColor }
ErehKeys["op_le"] = { type = "operator", color = operatorColor }
ErehKeys["op_len"] = { type = "operator", color = operatorColor }
ErehKeys["op_lt"] = { type = "operator", color = operatorColor }
ErehKeys["op_mod"] = { type = "operator", color = operatorColor }
ErehKeys["op_mul"] = { type = "operator", color = operatorColor }
ErehKeys["op_neq"] = { type = "operator", color = operatorColor }
ErehKeys["op_pow"] = { type = "operator", color = operatorColor }
ErehKeys["op_sub"] = { type = "operator", color = operatorColor }
ErehKeys["op_unm"] = { type = "operator", color = operatorColor }

-- ── type_annotation ───────────────────────────────
local typeColor = Color3.fromRGB(70, 130, 85)
ErehKeys["op_ampersand"] = { type = "type_annotation", color = typeColor }
ErehKeys["op_arrow"] = { type = "type_annotation", color = typeColor }
ErehKeys["op_colon"] = { type = "type_annotation", color = typeColor }
ErehKeys["op_pipe"] = { type = "type_annotation", color = typeColor }
ErehKeys["op_question"] = { type = "type_annotation", color = typeColor }
ErehKeys["op_typecast"] = { type = "type_annotation", color = typeColor }
ErehKeys["typeof"] = { type = "type_annotation", color = typeColor }

-- ── builtin ───────────────────────────────────────
local builtinColor = Color3.fromRGB(115, 172, 125)
ErehKeys["assert"] = { type = "builtin", color = builtinColor }
ErehKeys["collectgarbage"] = { type = "builtin", color = builtinColor }
ErehKeys["error"] = { type = "builtin", color = builtinColor }
ErehKeys["gcinfo"] = { type = "builtin", color = builtinColor }
ErehKeys["getfenv"] = { type = "builtin", color = builtinColor }
ErehKeys["getmetatable"] = { type = "builtin", color = builtinColor }
ErehKeys["ipairs"] = { type = "builtin", color = builtinColor }
ErehKeys["loadstring"] = { type = "builtin", color = builtinColor }
ErehKeys["newproxy"] = { type = "builtin", color = builtinColor }
ErehKeys["next"] = { type = "builtin", color = builtinColor }
ErehKeys["pairs"] = { type = "builtin", color = builtinColor }
ErehKeys["pcall"] = { type = "builtin", color = builtinColor }
ErehKeys["print"] = { type = "builtin", color = builtinColor }
ErehKeys["rawequal"] = { type = "builtin", color = builtinColor }
ErehKeys["rawget"] = { type = "builtin", color = builtinColor }
ErehKeys["rawlen"] = { type = "builtin", color = builtinColor }
ErehKeys["rawset"] = { type = "builtin", color = builtinColor }
ErehKeys["require"] = { type = "builtin", color = builtinColor }
ErehKeys["select"] = { type = "builtin", color = builtinColor }
ErehKeys["setfenv"] = { type = "builtin", color = builtinColor }
ErehKeys["setmetatable"] = { type = "builtin", color = builtinColor }
ErehKeys["tonumber"] = { type = "builtin", color = builtinColor }
ErehKeys["tostring"] = { type = "builtin", color = builtinColor }
ErehKeys["unpack"] = { type = "builtin", color = builtinColor }
ErehKeys["warn"] = { type = "builtin", color = builtinColor }
ErehKeys["xpcall"] = { type = "builtin", color = builtinColor }

-- ── global ────────────────────────────────────────
local globalColor = Color3.fromRGB(88, 148, 98)
ErehKeys["_G"] = { type = "global", color = globalColor }
ErehKeys["_VERSION"] = { type = "global", color = globalColor }
ErehKeys["bit32"] = { type = "global", color = globalColor }
ErehKeys["buffer"] = { type = "global", color = globalColor }
ErehKeys["coroutine"] = { type = "global", color = globalColor }
ErehKeys["debug"] = { type = "global", color = globalColor }
ErehKeys["game"] = { type = "global", color = globalColor }
ErehKeys["math"] = { type = "global", color = globalColor }
ErehKeys["os"] = { type = "global", color = globalColor }
ErehKeys["plugin"] = { type = "global", color = globalColor }
ErehKeys["script"] = { type = "global", color = globalColor }
ErehKeys["shared"] = { type = "global", color = globalColor }
ErehKeys["string"] = { type = "global", color = globalColor }
ErehKeys["table"] = { type = "global", color = globalColor }
ErehKeys["task"] = { type = "global", color = globalColor }
ErehKeys["utf8"] = { type = "global", color = globalColor }
ErehKeys["vector"] = { type = "global", color = globalColor }
ErehKeys["workspace"] = { type = "global", color = globalColor }

-- ── type ──────────────────────────────────────────
local dataTypeColor = Color3.fromRGB(70, 130, 85)
ErehKeys["Axes"] = { type = "type", color = dataTypeColor }
ErehKeys["BrickColor"] = { type = "type", color = dataTypeColor }
ErehKeys["CFrame"] = { type = "type", color = dataTypeColor }
ErehKeys["CatalogSearchParams"] = { type = "type", color = dataTypeColor }
ErehKeys["Color3"] = { type = "type", color = dataTypeColor }
ErehKeys["ColorSequence"] = { type = "type", color = dataTypeColor }
ErehKeys["ColorSequenceKeypoint"] = { type = "type", color = dataTypeColor }
ErehKeys["DateTime"] = { type = "type", color = dataTypeColor }
ErehKeys["DockWidgetPluginGuiInfo"] = { type = "type", color = dataTypeColor }
ErehKeys["Enum"] = { type = "type", color = dataTypeColor }
ErehKeys["EnumItem"] = { type = "type", color = dataTypeColor }
ErehKeys["Faces"] = { type = "type", color = dataTypeColor }
ErehKeys["FloatCurveKey"] = { type = "type", color = dataTypeColor }
ErehKeys["Font"] = { type = "type", color = dataTypeColor }
ErehKeys["Instance"] = { type = "type", color = dataTypeColor }
ErehKeys["NumberRange"] = { type = "type", color = dataTypeColor }
ErehKeys["NumberSequence"] = { type = "type", color = dataTypeColor }
ErehKeys["NumberSequenceKeypoint"] = { type = "type", color = dataTypeColor }
ErehKeys["OverlapParams"] = { type = "type", color = dataTypeColor }
ErehKeys["PathWaypoint"] = { type = "type", color = dataTypeColor }
ErehKeys["PhysicalProperties"] = { type = "type", color = dataTypeColor }
ErehKeys["Ray"] = { type = "type", color = dataTypeColor }
ErehKeys["RaycastParams"] = { type = "type", color = dataTypeColor }
ErehKeys["RaycastResult"] = { type = "type", color = dataTypeColor }
ErehKeys["Rect"] = { type = "type", color = dataTypeColor }
ErehKeys["Region3"] = { type = "type", color = dataTypeColor }
ErehKeys["Region3int16"] = { type = "type", color = dataTypeColor }
ErehKeys["RotationCurveKey"] = { type = "type", color = dataTypeColor }
ErehKeys["SharedTable"] = { type = "type", color = dataTypeColor }
ErehKeys["TweenInfo"] = { type = "type", color = dataTypeColor }
ErehKeys["UDim"] = { type = "type", color = dataTypeColor }
ErehKeys["UDim2"] = { type = "type", color = dataTypeColor }
ErehKeys["Vector2"] = { type = "type", color = dataTypeColor }
ErehKeys["Vector2int16"] = { type = "type", color = dataTypeColor }
ErehKeys["Vector3"] = { type = "type", color = dataTypeColor }
ErehKeys["Vector3int16"] = { type = "type", color = dataTypeColor }
ErehKeys["any"] = { type = "type", color = dataTypeColor }
ErehKeys["boolean"] = { type = "type", color = dataTypeColor }
ErehKeys["never"] = { type = "type", color = dataTypeColor }
ErehKeys["number"] = { type = "type", color = dataTypeColor }
ErehKeys["thread"] = { type = "type", color = dataTypeColor }
ErehKeys["unknown"] = { type = "type", color = dataTypeColor }
ErehKeys["userdata"] = { type = "type", color = dataTypeColor }
ErehKeys["void"] = { type = "type", color = dataTypeColor }

-- ── metamethod ────────────────────────────────────
local metamethodColor = Color3.fromRGB(188, 210, 178)
ErehKeys["__add"] = { type = "metamethod", color = metamethodColor }
ErehKeys["__band"] = { type = "metamethod", color = metamethodColor }
ErehKeys["__bnot"] = { type = "metamethod", color = metamethodColor }
ErehKeys["__bor"] = { type = "metamethod", color = metamethodColor }
ErehKeys["__bxor"] = { type = "metamethod", color = metamethodColor }
ErehKeys["__call"] = { type = "metamethod", color = metamethodColor }
ErehKeys["__concat"] = { type = "metamethod", color = metamethodColor }
ErehKeys["__div"] = { type = "metamethod", color = metamethodColor }
ErehKeys["__eq"] = { type = "metamethod", color = metamethodColor }
ErehKeys["__idiv"] = { type = "metamethod", color = metamethodColor }
ErehKeys["__index"] = { type = "metamethod", color = metamethodColor }
ErehKeys["__iter"] = { type = "metamethod", color = metamethodColor }
ErehKeys["__le"] = { type = "metamethod", color = metamethodColor }
ErehKeys["__len"] = { type = "metamethod", color = metamethodColor }
ErehKeys["__lt"] = { type = "metamethod", color = metamethodColor }
ErehKeys["__mod"] = { type = "metamethod", color = metamethodColor }
ErehKeys["__mul"] = { type = "metamethod", color = metamethodColor }
ErehKeys["__newindex"] = { type = "metamethod", color = metamethodColor }
ErehKeys["__pow"] = { type = "metamethod", color = metamethodColor }
ErehKeys["__shl"] = { type = "metamethod", color = metamethodColor }
ErehKeys["__shr"] = { type = "metamethod", color = metamethodColor }
ErehKeys["__sub"] = { type = "metamethod", color = metamethodColor }
ErehKeys["__tostring"] = { type = "metamethod", color = metamethodColor }
ErehKeys["__type"] = { type = "metamethod", color = metamethodColor }
ErehKeys["__unm"] = { type = "metamethod", color = metamethodColor }

-- ── comment ───────────────────────────────────────
local commentColor = Color3.fromRGB(58, 68, 58)
ErehKeys["comment_multi_close"] = { type = "comment", color = commentColor }
ErehKeys["comment_multi_open"] = { type = "comment", color = commentColor }
ErehKeys["comment_single"] = { type = "comment", color = commentColor }

-- ── number ────────────────────────────────────────
local numberColor = Color3.fromRGB(195, 215, 185)
ErehKeys["num_binary"] = { type = "number", color = numberColor }
ErehKeys["num_exp"] = { type = "number", color = numberColor }
ErehKeys["num_float"] = { type = "number", color = numberColor }
ErehKeys["num_hex"] = { type = "number", color = numberColor }
ErehKeys["num_inf"] = { type = "number", color = numberColor }
ErehKeys["num_integer"] = { type = "number", color = numberColor }
ErehKeys["num_nan"] = { type = "number", color = numberColor }
ErehKeys["num_separator"] = { type = "number", color = numberColor }

return ErehKeys