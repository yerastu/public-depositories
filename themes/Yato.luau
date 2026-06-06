local YatoKeys = {}
function GetData()
	local Config = {
		Name = "LuaU",
		Version = "1.0.0",
		Author = "Yera"
	}
end

-- ── keyword ───────────────────────────────────────
local keywordColor = Color3.fromRGB(65, 145, 230)
YatoKeys["and"] = { type = "keyword", color = keywordColor }
YatoKeys["do"] = { type = "keyword", color = keywordColor }
YatoKeys["end"] = { type = "keyword", color = keywordColor }
YatoKeys["export"] = { type = "keyword", color = keywordColor }
YatoKeys["function"] = { type = "keyword", color = keywordColor }
YatoKeys["in"] = { type = "keyword", color = keywordColor }
YatoKeys["inf"] = { type = "keyword", color = keywordColor }
YatoKeys["local"] = { type = "keyword", color = keywordColor }
YatoKeys["not"] = { type = "keyword", color = keywordColor }
YatoKeys["or"] = { type = "keyword", color = keywordColor }
YatoKeys["then"] = { type = "keyword", color = keywordColor }
YatoKeys["type"] = { type = "keyword", color = keywordColor }
YatoKeys["self"] = { type = "keyword", color = keywordColor }

-- ── flow ──────────────────────────────────────────
local flowColor = Color3.fromRGB(65, 145, 230)
YatoKeys["break"] = { type = "flow", color = flowColor }
YatoKeys["continue"] = { type = "flow", color = flowColor }
YatoKeys["else"] = { type = "flow", color = flowColor }
YatoKeys["elseif"] = { type = "flow", color = flowColor }
YatoKeys["for"] = { type = "flow", color = flowColor }
YatoKeys["if"] = { type = "flow", color = flowColor }
YatoKeys["repeat"] = { type = "flow", color = flowColor }
YatoKeys["return"] = { type = "flow", color = flowColor }
YatoKeys["until"] = { type = "flow", color = flowColor }
YatoKeys["while"] = { type = "flow", color = flowColor }

-- ── literal ───────────────────────────────────────
local literalColor = Color3.fromRGB(215, 228, 248)
YatoKeys["false"] = { type = "literal", color = literalColor }
YatoKeys["nil"] = { type = "literal", color = literalColor }
YatoKeys["true"] = { type = "literal", color = literalColor }

-- ── operator ──────────────────────────────────────
local operatorColor = Color3.fromRGB(160, 168, 188)
YatoKeys["op_add"] = { type = "operator", color = operatorColor }
YatoKeys["op_assign"] = { type = "operator", color = operatorColor }
YatoKeys["op_concat"] = { type = "operator", color = operatorColor }
YatoKeys["op_div"] = { type = "operator", color = operatorColor }
YatoKeys["op_eq"] = { type = "operator", color = operatorColor }
YatoKeys["op_floordiv"] = { type = "operator", color = operatorColor }
YatoKeys["op_ge"] = { type = "operator", color = operatorColor }
YatoKeys["op_gt"] = { type = "operator", color = operatorColor }
YatoKeys["op_le"] = { type = "operator", color = operatorColor }
YatoKeys["op_len"] = { type = "operator", color = operatorColor }
YatoKeys["op_lt"] = { type = "operator", color = operatorColor }
YatoKeys["op_mod"] = { type = "operator", color = operatorColor }
YatoKeys["op_mul"] = { type = "operator", color = operatorColor }
YatoKeys["op_neq"] = { type = "operator", color = operatorColor }
YatoKeys["op_pow"] = { type = "operator", color = operatorColor }
YatoKeys["op_sub"] = { type = "operator", color = operatorColor }
YatoKeys["op_unm"] = { type = "operator", color = operatorColor }

-- ── type_annotation ───────────────────────────────
local typeColor = Color3.fromRGB(38, 115, 205)
YatoKeys["op_ampersand"] = { type = "type_annotation", color = typeColor }
YatoKeys["op_arrow"] = { type = "type_annotation", color = typeColor }
YatoKeys["op_colon"] = { type = "type_annotation", color = typeColor }
YatoKeys["op_pipe"] = { type = "type_annotation", color = typeColor }
YatoKeys["op_question"] = { type = "type_annotation", color = typeColor }
YatoKeys["op_typecast"] = { type = "type_annotation", color = typeColor }
YatoKeys["typeof"] = { type = "type_annotation", color = typeColor }

-- ── builtin ───────────────────────────────────────
local builtinColor = Color3.fromRGB(80, 158, 238)
YatoKeys["assert"] = { type = "builtin", color = builtinColor }
YatoKeys["collectgarbage"] = { type = "builtin", color = builtinColor }
YatoKeys["error"] = { type = "builtin", color = builtinColor }
YatoKeys["gcinfo"] = { type = "builtin", color = builtinColor }
YatoKeys["getfenv"] = { type = "builtin", color = builtinColor }
YatoKeys["getmetatable"] = { type = "builtin", color = builtinColor }
YatoKeys["ipairs"] = { type = "builtin", color = builtinColor }
YatoKeys["loadstring"] = { type = "builtin", color = builtinColor }
YatoKeys["newproxy"] = { type = "builtin", color = builtinColor }
YatoKeys["next"] = { type = "builtin", color = builtinColor }
YatoKeys["pairs"] = { type = "builtin", color = builtinColor }
YatoKeys["pcall"] = { type = "builtin", color = builtinColor }
YatoKeys["print"] = { type = "builtin", color = builtinColor }
YatoKeys["rawequal"] = { type = "builtin", color = builtinColor }
YatoKeys["rawget"] = { type = "builtin", color = builtinColor }
YatoKeys["rawlen"] = { type = "builtin", color = builtinColor }
YatoKeys["rawset"] = { type = "builtin", color = builtinColor }
YatoKeys["require"] = { type = "builtin", color = builtinColor }
YatoKeys["select"] = { type = "builtin", color = builtinColor }
YatoKeys["setfenv"] = { type = "builtin", color = builtinColor }
YatoKeys["setmetatable"] = { type = "builtin", color = builtinColor }
YatoKeys["tonumber"] = { type = "builtin", color = builtinColor }
YatoKeys["tostring"] = { type = "builtin", color = builtinColor }
YatoKeys["unpack"] = { type = "builtin", color = builtinColor }
YatoKeys["warn"] = { type = "builtin", color = builtinColor }
YatoKeys["xpcall"] = { type = "builtin", color = builtinColor }

-- ── global ────────────────────────────────────────
local globalColor = Color3.fromRGB(52, 132, 220)
YatoKeys["_G"] = { type = "global", color = globalColor }
YatoKeys["_VERSION"] = { type = "global", color = globalColor }
YatoKeys["bit32"] = { type = "global", color = globalColor }
YatoKeys["buffer"] = { type = "global", color = globalColor }
YatoKeys["coroutine"] = { type = "global", color = globalColor }
YatoKeys["debug"] = { type = "global", color = globalColor }
YatoKeys["game"] = { type = "global", color = globalColor }
YatoKeys["math"] = { type = "global", color = globalColor }
YatoKeys["os"] = { type = "global", color = globalColor }
YatoKeys["plugin"] = { type = "global", color = globalColor }
YatoKeys["script"] = { type = "global", color = globalColor }
YatoKeys["shared"] = { type = "global", color = globalColor }
YatoKeys["string"] = { type = "global", color = globalColor }
YatoKeys["table"] = { type = "global", color = globalColor }
YatoKeys["task"] = { type = "global", color = globalColor }
YatoKeys["utf8"] = { type = "global", color = globalColor }
YatoKeys["vector"] = { type = "global", color = globalColor }
YatoKeys["workspace"] = { type = "global", color = globalColor }

-- ── type ──────────────────────────────────────────
local dataTypeColor = Color3.fromRGB(38, 115, 205)
YatoKeys["Axes"] = { type = "type", color = dataTypeColor }
YatoKeys["BrickColor"] = { type = "type", color = dataTypeColor }
YatoKeys["CFrame"] = { type = "type", color = dataTypeColor }
YatoKeys["CatalogSearchParams"] = { type = "type", color = dataTypeColor }
YatoKeys["Color3"] = { type = "type", color = dataTypeColor }
YatoKeys["ColorSequence"] = { type = "type", color = dataTypeColor }
YatoKeys["ColorSequenceKeypoint"] = { type = "type", color = dataTypeColor }
YatoKeys["DateTime"] = { type = "type", color = dataTypeColor }
YatoKeys["DockWidgetPluginGuiInfo"] = { type = "type", color = dataTypeColor }
YatoKeys["Enum"] = { type = "type", color = dataTypeColor }
YatoKeys["EnumItem"] = { type = "type", color = dataTypeColor }
YatoKeys["Faces"] = { type = "type", color = dataTypeColor }
YatoKeys["FloatCurveKey"] = { type = "type", color = dataTypeColor }
YatoKeys["Font"] = { type = "type", color = dataTypeColor }
YatoKeys["Instance"] = { type = "type", color = dataTypeColor }
YatoKeys["NumberRange"] = { type = "type", color = dataTypeColor }
YatoKeys["NumberSequence"] = { type = "type", color = dataTypeColor }
YatoKeys["NumberSequenceKeypoint"] = { type = "type", color = dataTypeColor }
YatoKeys["OverlapParams"] = { type = "type", color = dataTypeColor }
YatoKeys["PathWaypoint"] = { type = "type", color = dataTypeColor }
YatoKeys["PhysicalProperties"] = { type = "type", color = dataTypeColor }
YatoKeys["Ray"] = { type = "type", color = dataTypeColor }
YatoKeys["RaycastParams"] = { type = "type", color = dataTypeColor }
YatoKeys["RaycastResult"] = { type = "type", color = dataTypeColor }
YatoKeys["Rect"] = { type = "type", color = dataTypeColor }
YatoKeys["Region3"] = { type = "type", color = dataTypeColor }
YatoKeys["Region3int16"] = { type = "type", color = dataTypeColor }
YatoKeys["RotationCurveKey"] = { type = "type", color = dataTypeColor }
YatoKeys["SharedTable"] = { type = "type", color = dataTypeColor }
YatoKeys["TweenInfo"] = { type = "type", color = dataTypeColor }
YatoKeys["UDim"] = { type = "type", color = dataTypeColor }
YatoKeys["UDim2"] = { type = "type", color = dataTypeColor }
YatoKeys["Vector2"] = { type = "type", color = dataTypeColor }
YatoKeys["Vector2int16"] = { type = "type", color = dataTypeColor }
YatoKeys["Vector3"] = { type = "type", color = dataTypeColor }
YatoKeys["Vector3int16"] = { type = "type", color = dataTypeColor }
YatoKeys["any"] = { type = "type", color = dataTypeColor }
YatoKeys["boolean"] = { type = "type", color = dataTypeColor }
YatoKeys["never"] = { type = "type", color = dataTypeColor }
YatoKeys["number"] = { type = "type", color = dataTypeColor }
YatoKeys["thread"] = { type = "type", color = dataTypeColor }
YatoKeys["unknown"] = { type = "type", color = dataTypeColor }
YatoKeys["userdata"] = { type = "type", color = dataTypeColor }
YatoKeys["void"] = { type = "type", color = dataTypeColor }

-- ── metamethod ────────────────────────────────────
local metamethodColor = Color3.fromRGB(208, 222, 245)
YatoKeys["__add"] = { type = "metamethod", color = metamethodColor }
YatoKeys["__band"] = { type = "metamethod", color = metamethodColor }
YatoKeys["__bnot"] = { type = "metamethod", color = metamethodColor }
YatoKeys["__bor"] = { type = "metamethod", color = metamethodColor }
YatoKeys["__bxor"] = { type = "metamethod", color = metamethodColor }
YatoKeys["__call"] = { type = "metamethod", color = metamethodColor }
YatoKeys["__concat"] = { type = "metamethod", color = metamethodColor }
YatoKeys["__div"] = { type = "metamethod", color = metamethodColor }
YatoKeys["__eq"] = { type = "metamethod", color = metamethodColor }
YatoKeys["__idiv"] = { type = "metamethod", color = metamethodColor }
YatoKeys["__index"] = { type = "metamethod", color = metamethodColor }
YatoKeys["__iter"] = { type = "metamethod", color = metamethodColor }
YatoKeys["__le"] = { type = "metamethod", color = metamethodColor }
YatoKeys["__len"] = { type = "metamethod", color = metamethodColor }
YatoKeys["__lt"] = { type = "metamethod", color = metamethodColor }
YatoKeys["__mod"] = { type = "metamethod", color = metamethodColor }
YatoKeys["__mul"] = { type = "metamethod", color = metamethodColor }
YatoKeys["__newindex"] = { type = "metamethod", color = metamethodColor }
YatoKeys["__pow"] = { type = "metamethod", color = metamethodColor }
YatoKeys["__shl"] = { type = "metamethod", color = metamethodColor }
YatoKeys["__shr"] = { type = "metamethod", color = metamethodColor }
YatoKeys["__sub"] = { type = "metamethod", color = metamethodColor }
YatoKeys["__tostring"] = { type = "metamethod", color = metamethodColor }
YatoKeys["__type"] = { type = "metamethod", color = metamethodColor }
YatoKeys["__unm"] = { type = "metamethod", color = metamethodColor }

-- ── comment ───────────────────────────────────────
local commentColor = Color3.fromRGB(55, 65, 88)
YatoKeys["comment_multi_close"] = { type = "comment", color = commentColor }
YatoKeys["comment_multi_open"] = { type = "comment", color = commentColor }
YatoKeys["comment_single"] = { type = "comment", color = commentColor }

-- ── number ────────────────────────────────────────
local numberColor = Color3.fromRGB(215, 228, 248)
YatoKeys["num_binary"] = { type = "number", color = numberColor }
YatoKeys["num_exp"] = { type = "number", color = numberColor }
YatoKeys["num_float"] = { type = "number", color = numberColor }
YatoKeys["num_hex"] = { type = "number", color = numberColor }
YatoKeys["num_inf"] = { type = "number", color = numberColor }
YatoKeys["num_integer"] = { type = "number", color = numberColor }
YatoKeys["num_nan"] = { type = "number", color = numberColor }
YatoKeys["num_separator"] = { type = "number", color = numberColor }

return YatoKeys