local AkazaKeys = {}
function GetData()
	local Config = {
		Name = "LuaU",
		Version = "1.0.0",
		Author = "Yera"
	}
end

-- ── keyword ───────────────────────────────────────
local keywordColor = Color3.fromRGB(195, 65, 85)
AkazaKeys["and"] = { type = "keyword", color = keywordColor }
AkazaKeys["do"] = { type = "keyword", color = keywordColor }
AkazaKeys["end"] = { type = "keyword", color = keywordColor }
AkazaKeys["export"] = { type = "keyword", color = keywordColor }
AkazaKeys["function"] = { type = "keyword", color = keywordColor }
AkazaKeys["in"] = { type = "keyword", color = keywordColor }
AkazaKeys["inf"] = { type = "keyword", color = keywordColor }
AkazaKeys["local"] = { type = "keyword", color = keywordColor }
AkazaKeys["not"] = { type = "keyword", color = keywordColor }
AkazaKeys["or"] = { type = "keyword", color = keywordColor }
AkazaKeys["then"] = { type = "keyword", color = keywordColor }
AkazaKeys["type"] = { type = "keyword", color = keywordColor }
AkazaKeys["self"] = { type = "keyword", color = keywordColor }

-- ── flow ──────────────────────────────────────────
local flowColor = Color3.fromRGB(195, 65, 85)
AkazaKeys["break"] = { type = "flow", color = flowColor }
AkazaKeys["continue"] = { type = "flow", color = flowColor }
AkazaKeys["else"] = { type = "flow", color = flowColor }
AkazaKeys["elseif"] = { type = "flow", color = flowColor }
AkazaKeys["for"] = { type = "flow", color = flowColor }
AkazaKeys["if"] = { type = "flow", color = flowColor }
AkazaKeys["repeat"] = { type = "flow", color = flowColor }
AkazaKeys["return"] = { type = "flow", color = flowColor }
AkazaKeys["until"] = { type = "flow", color = flowColor }
AkazaKeys["while"] = { type = "flow", color = flowColor }

-- ── literal ───────────────────────────────────────
local literalColor = Color3.fromRGB(230, 155, 100)
AkazaKeys["false"] = { type = "literal", color = literalColor }
AkazaKeys["nil"] = { type = "literal", color = literalColor }
AkazaKeys["true"] = { type = "literal", color = literalColor }

-- ── operator ──────────────────────────────────────
local operatorColor = Color3.fromRGB(170, 162, 160)
AkazaKeys["op_add"] = { type = "operator", color = operatorColor }
AkazaKeys["op_assign"] = { type = "operator", color = operatorColor }
AkazaKeys["op_concat"] = { type = "operator", color = operatorColor }
AkazaKeys["op_div"] = { type = "operator", color = operatorColor }
AkazaKeys["op_eq"] = { type = "operator", color = operatorColor }
AkazaKeys["op_floordiv"] = { type = "operator", color = operatorColor }
AkazaKeys["op_ge"] = { type = "operator", color = operatorColor }
AkazaKeys["op_gt"] = { type = "operator", color = operatorColor }
AkazaKeys["op_le"] = { type = "operator", color = operatorColor }
AkazaKeys["op_len"] = { type = "operator", color = operatorColor }
AkazaKeys["op_lt"] = { type = "operator", color = operatorColor }
AkazaKeys["op_mod"] = { type = "operator", color = operatorColor }
AkazaKeys["op_mul"] = { type = "operator", color = operatorColor }
AkazaKeys["op_neq"] = { type = "operator", color = operatorColor }
AkazaKeys["op_pow"] = { type = "operator", color = operatorColor }
AkazaKeys["op_sub"] = { type = "operator", color = operatorColor }
AkazaKeys["op_unm"] = { type = "operator", color = operatorColor }

-- ── type_annotation ───────────────────────────────
local typeColor = Color3.fromRGB(160, 40, 60)
AkazaKeys["op_ampersand"] = { type = "type_annotation", color = typeColor }
AkazaKeys["op_arrow"] = { type = "type_annotation", color = typeColor }
AkazaKeys["op_colon"] = { type = "type_annotation", color = typeColor }
AkazaKeys["op_pipe"] = { type = "type_annotation", color = typeColor }
AkazaKeys["op_question"] = { type = "type_annotation", color = typeColor }
AkazaKeys["op_typecast"] = { type = "type_annotation", color = typeColor }
AkazaKeys["typeof"] = { type = "type_annotation", color = typeColor }

-- ── builtin ───────────────────────────────────────
local builtinColor = Color3.fromRGB(210, 82, 102)
AkazaKeys["assert"] = { type = "builtin", color = builtinColor }
AkazaKeys["collectgarbage"] = { type = "builtin", color = builtinColor }
AkazaKeys["error"] = { type = "builtin", color = builtinColor }
AkazaKeys["gcinfo"] = { type = "builtin", color = builtinColor }
AkazaKeys["getfenv"] = { type = "builtin", color = builtinColor }
AkazaKeys["getmetatable"] = { type = "builtin", color = builtinColor }
AkazaKeys["ipairs"] = { type = "builtin", color = builtinColor }
AkazaKeys["loadstring"] = { type = "builtin", color = builtinColor }
AkazaKeys["newproxy"] = { type = "builtin", color = builtinColor }
AkazaKeys["next"] = { type = "builtin", color = builtinColor }
AkazaKeys["pairs"] = { type = "builtin", color = builtinColor }
AkazaKeys["pcall"] = { type = "builtin", color = builtinColor }
AkazaKeys["print"] = { type = "builtin", color = builtinColor }
AkazaKeys["rawequal"] = { type = "builtin", color = builtinColor }
AkazaKeys["rawget"] = { type = "builtin", color = builtinColor }
AkazaKeys["rawlen"] = { type = "builtin", color = builtinColor }
AkazaKeys["rawset"] = { type = "builtin", color = builtinColor }
AkazaKeys["require"] = { type = "builtin", color = builtinColor }
AkazaKeys["select"] = { type = "builtin", color = builtinColor }
AkazaKeys["setfenv"] = { type = "builtin", color = builtinColor }
AkazaKeys["setmetatable"] = { type = "builtin", color = builtinColor }
AkazaKeys["tonumber"] = { type = "builtin", color = builtinColor }
AkazaKeys["tostring"] = { type = "builtin", color = builtinColor }
AkazaKeys["unpack"] = { type = "builtin", color = builtinColor }
AkazaKeys["warn"] = { type = "builtin", color = builtinColor }
AkazaKeys["xpcall"] = { type = "builtin", color = builtinColor }

-- ── global ────────────────────────────────────────
local globalColor = Color3.fromRGB(180, 55, 75)
AkazaKeys["_G"] = { type = "global", color = globalColor }
AkazaKeys["_VERSION"] = { type = "global", color = globalColor }
AkazaKeys["bit32"] = { type = "global", color = globalColor }
AkazaKeys["buffer"] = { type = "global", color = globalColor }
AkazaKeys["coroutine"] = { type = "global", color = globalColor }
AkazaKeys["debug"] = { type = "global", color = globalColor }
AkazaKeys["game"] = { type = "global", color = globalColor }
AkazaKeys["math"] = { type = "global", color = globalColor }
AkazaKeys["os"] = { type = "global", color = globalColor }
AkazaKeys["plugin"] = { type = "global", color = globalColor }
AkazaKeys["script"] = { type = "global", color = globalColor }
AkazaKeys["shared"] = { type = "global", color = globalColor }
AkazaKeys["string"] = { type = "global", color = globalColor }
AkazaKeys["table"] = { type = "global", color = globalColor }
AkazaKeys["task"] = { type = "global", color = globalColor }
AkazaKeys["utf8"] = { type = "global", color = globalColor }
AkazaKeys["vector"] = { type = "global", color = globalColor }
AkazaKeys["workspace"] = { type = "global", color = globalColor }

-- ── type ──────────────────────────────────────────
local dataTypeColor = Color3.fromRGB(160, 40, 60)
AkazaKeys["Axes"] = { type = "type", color = dataTypeColor }
AkazaKeys["BrickColor"] = { type = "type", color = dataTypeColor }
AkazaKeys["CFrame"] = { type = "type", color = dataTypeColor }
AkazaKeys["CatalogSearchParams"] = { type = "type", color = dataTypeColor }
AkazaKeys["Color3"] = { type = "type", color = dataTypeColor }
AkazaKeys["ColorSequence"] = { type = "type", color = dataTypeColor }
AkazaKeys["ColorSequenceKeypoint"] = { type = "type", color = dataTypeColor }
AkazaKeys["DateTime"] = { type = "type", color = dataTypeColor }
AkazaKeys["DockWidgetPluginGuiInfo"] = { type = "type", color = dataTypeColor }
AkazaKeys["Enum"] = { type = "type", color = dataTypeColor }
AkazaKeys["EnumItem"] = { type = "type", color = dataTypeColor }
AkazaKeys["Faces"] = { type = "type", color = dataTypeColor }
AkazaKeys["FloatCurveKey"] = { type = "type", color = dataTypeColor }
AkazaKeys["Font"] = { type = "type", color = dataTypeColor }
AkazaKeys["Instance"] = { type = "type", color = dataTypeColor }
AkazaKeys["NumberRange"] = { type = "type", color = dataTypeColor }
AkazaKeys["NumberSequence"] = { type = "type", color = dataTypeColor }
AkazaKeys["NumberSequenceKeypoint"] = { type = "type", color = dataTypeColor }
AkazaKeys["OverlapParams"] = { type = "type", color = dataTypeColor }
AkazaKeys["PathWaypoint"] = { type = "type", color = dataTypeColor }
AkazaKeys["PhysicalProperties"] = { type = "type", color = dataTypeColor }
AkazaKeys["Ray"] = { type = "type", color = dataTypeColor }
AkazaKeys["RaycastParams"] = { type = "type", color = dataTypeColor }
AkazaKeys["RaycastResult"] = { type = "type", color = dataTypeColor }
AkazaKeys["Rect"] = { type = "type", color = dataTypeColor }
AkazaKeys["Region3"] = { type = "type", color = dataTypeColor }
AkazaKeys["Region3int16"] = { type = "type", color = dataTypeColor }
AkazaKeys["RotationCurveKey"] = { type = "type", color = dataTypeColor }
AkazaKeys["SharedTable"] = { type = "type", color = dataTypeColor }
AkazaKeys["TweenInfo"] = { type = "type", color = dataTypeColor }
AkazaKeys["UDim"] = { type = "type", color = dataTypeColor }
AkazaKeys["UDim2"] = { type = "type", color = dataTypeColor }
AkazaKeys["Vector2"] = { type = "type", color = dataTypeColor }
AkazaKeys["Vector2int16"] = { type = "type", color = dataTypeColor }
AkazaKeys["Vector3"] = { type = "type", color = dataTypeColor }
AkazaKeys["Vector3int16"] = { type = "type", color = dataTypeColor }
AkazaKeys["any"] = { type = "type", color = dataTypeColor }
AkazaKeys["boolean"] = { type = "type", color = dataTypeColor }
AkazaKeys["never"] = { type = "type", color = dataTypeColor }
AkazaKeys["number"] = { type = "type", color = dataTypeColor }
AkazaKeys["thread"] = { type = "type", color = dataTypeColor }
AkazaKeys["unknown"] = { type = "type", color = dataTypeColor }
AkazaKeys["userdata"] = { type = "type", color = dataTypeColor }
AkazaKeys["void"] = { type = "type", color = dataTypeColor }

-- ── metamethod ────────────────────────────────────
local metamethodColor = Color3.fromRGB(225, 148, 95)
AkazaKeys["__add"] = { type = "metamethod", color = metamethodColor }
AkazaKeys["__band"] = { type = "metamethod", color = metamethodColor }
AkazaKeys["__bnot"] = { type = "metamethod", color = metamethodColor }
AkazaKeys["__bor"] = { type = "metamethod", color = metamethodColor }
AkazaKeys["__bxor"] = { type = "metamethod", color = metamethodColor }
AkazaKeys["__call"] = { type = "metamethod", color = metamethodColor }
AkazaKeys["__concat"] = { type = "metamethod", color = metamethodColor }
AkazaKeys["__div"] = { type = "metamethod", color = metamethodColor }
AkazaKeys["__eq"] = { type = "metamethod", color = metamethodColor }
AkazaKeys["__idiv"] = { type = "metamethod", color = metamethodColor }
AkazaKeys["__index"] = { type = "metamethod", color = metamethodColor }
AkazaKeys["__iter"] = { type = "metamethod", color = metamethodColor }
AkazaKeys["__le"] = { type = "metamethod", color = metamethodColor }
AkazaKeys["__len"] = { type = "metamethod", color = metamethodColor }
AkazaKeys["__lt"] = { type = "metamethod", color = metamethodColor }
AkazaKeys["__mod"] = { type = "metamethod", color = metamethodColor }
AkazaKeys["__mul"] = { type = "metamethod", color = metamethodColor }
AkazaKeys["__newindex"] = { type = "metamethod", color = metamethodColor }
AkazaKeys["__pow"] = { type = "metamethod", color = metamethodColor }
AkazaKeys["__shl"] = { type = "metamethod", color = metamethodColor }
AkazaKeys["__shr"] = { type = "metamethod", color = metamethodColor }
AkazaKeys["__sub"] = { type = "metamethod", color = metamethodColor }
AkazaKeys["__tostring"] = { type = "metamethod", color = metamethodColor }
AkazaKeys["__type"] = { type = "metamethod", color = metamethodColor }
AkazaKeys["__unm"] = { type = "metamethod", color = metamethodColor }

-- ── comment ───────────────────────────────────────
local commentColor = Color3.fromRGB(68, 58, 60)
AkazaKeys["comment_multi_close"] = { type = "comment", color = commentColor }
AkazaKeys["comment_multi_open"] = { type = "comment", color = commentColor }
AkazaKeys["comment_single"] = { type = "comment", color = commentColor }

-- ── number ────────────────────────────────────────
local numberColor = Color3.fromRGB(230, 155, 100)
AkazaKeys["num_binary"] = { type = "number", color = numberColor }
AkazaKeys["num_exp"] = { type = "number", color = numberColor }
AkazaKeys["num_float"] = { type = "number", color = numberColor }
AkazaKeys["num_hex"] = { type = "number", color = numberColor }
AkazaKeys["num_inf"] = { type = "number", color = numberColor }
AkazaKeys["num_integer"] = { type = "number", color = numberColor }
AkazaKeys["num_nan"] = { type = "number", color = numberColor }
AkazaKeys["num_separator"] = { type = "number", color = numberColor }

return AkazaKeys