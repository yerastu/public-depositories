local LeviKeys = {}
function GetData()
	local Config = {
		Name = "LuaU",
		Version = "1.0.0",
		Author = "Yera"
	}
end

-- ── keyword ───────────────────────────────────────
local keywordColor = Color3.fromRGB(100, 140, 190)
LeviKeys["and"] = { type = "keyword", color = keywordColor }
LeviKeys["do"] = { type = "keyword", color = keywordColor }
LeviKeys["end"] = { type = "keyword", color = keywordColor }
LeviKeys["export"] = { type = "keyword", color = keywordColor }
LeviKeys["function"] = { type = "keyword", color = keywordColor }
LeviKeys["in"] = { type = "keyword", color = keywordColor }
LeviKeys["inf"] = { type = "keyword", color = keywordColor }
LeviKeys["local"] = { type = "keyword", color = keywordColor }
LeviKeys["not"] = { type = "keyword", color = keywordColor }
LeviKeys["or"] = { type = "keyword", color = keywordColor }
LeviKeys["then"] = { type = "keyword", color = keywordColor }
LeviKeys["type"] = { type = "keyword", color = keywordColor }
LeviKeys["self"] = { type = "keyword", color = keywordColor }

-- ── flow ──────────────────────────────────────────
local flowColor = Color3.fromRGB(100, 140, 190)
LeviKeys["break"] = { type = "flow", color = flowColor }
LeviKeys["continue"] = { type = "flow", color = flowColor }
LeviKeys["else"] = { type = "flow", color = flowColor }
LeviKeys["elseif"] = { type = "flow", color = flowColor }
LeviKeys["for"] = { type = "flow", color = flowColor }
LeviKeys["if"] = { type = "flow", color = flowColor }
LeviKeys["repeat"] = { type = "flow", color = flowColor }
LeviKeys["return"] = { type = "flow", color = flowColor }
LeviKeys["until"] = { type = "flow", color = flowColor }
LeviKeys["while"] = { type = "flow", color = flowColor }

-- ── literal ───────────────────────────────────────
local literalColor = Color3.fromRGB(195, 210, 230)
LeviKeys["false"] = { type = "literal", color = literalColor }
LeviKeys["nil"] = { type = "literal", color = literalColor }
LeviKeys["true"] = { type = "literal", color = literalColor }

-- ── operator ──────────────────────────────────────
local operatorColor = Color3.fromRGB(155, 162, 175)
LeviKeys["op_add"] = { type = "operator", color = operatorColor }
LeviKeys["op_assign"] = { type = "operator", color = operatorColor }
LeviKeys["op_concat"] = { type = "operator", color = operatorColor }
LeviKeys["op_div"] = { type = "operator", color = operatorColor }
LeviKeys["op_eq"] = { type = "operator", color = operatorColor }
LeviKeys["op_floordiv"] = { type = "operator", color = operatorColor }
LeviKeys["op_ge"] = { type = "operator", color = operatorColor }
LeviKeys["op_gt"] = { type = "operator", color = operatorColor }
LeviKeys["op_le"] = { type = "operator", color = operatorColor }
LeviKeys["op_len"] = { type = "operator", color = operatorColor }
LeviKeys["op_lt"] = { type = "operator", color = operatorColor }
LeviKeys["op_mod"] = { type = "operator", color = operatorColor }
LeviKeys["op_mul"] = { type = "operator", color = operatorColor }
LeviKeys["op_neq"] = { type = "operator", color = operatorColor }
LeviKeys["op_pow"] = { type = "operator", color = operatorColor }
LeviKeys["op_sub"] = { type = "operator", color = operatorColor }
LeviKeys["op_unm"] = { type = "operator", color = operatorColor }

-- ── type_annotation ───────────────────────────────
local typeColor = Color3.fromRGB(70, 110, 165)
LeviKeys["op_ampersand"] = { type = "type_annotation", color = typeColor }
LeviKeys["op_arrow"] = { type = "type_annotation", color = typeColor }
LeviKeys["op_colon"] = { type = "type_annotation", color = typeColor }
LeviKeys["op_pipe"] = { type = "type_annotation", color = typeColor }
LeviKeys["op_question"] = { type = "type_annotation", color = typeColor }
LeviKeys["op_typecast"] = { type = "type_annotation", color = typeColor }
LeviKeys["typeof"] = { type = "type_annotation", color = typeColor }

-- ── builtin ───────────────────────────────────────
local builtinColor = Color3.fromRGB(115, 155, 205)
LeviKeys["assert"] = { type = "builtin", color = builtinColor }
LeviKeys["collectgarbage"] = { type = "builtin", color = builtinColor }
LeviKeys["error"] = { type = "builtin", color = builtinColor }
LeviKeys["gcinfo"] = { type = "builtin", color = builtinColor }
LeviKeys["getfenv"] = { type = "builtin", color = builtinColor }
LeviKeys["getmetatable"] = { type = "builtin", color = builtinColor }
LeviKeys["ipairs"] = { type = "builtin", color = builtinColor }
LeviKeys["loadstring"] = { type = "builtin", color = builtinColor }
LeviKeys["newproxy"] = { type = "builtin", color = builtinColor }
LeviKeys["next"] = { type = "builtin", color = builtinColor }
LeviKeys["pairs"] = { type = "builtin", color = builtinColor }
LeviKeys["pcall"] = { type = "builtin", color = builtinColor }
LeviKeys["print"] = { type = "builtin", color = builtinColor }
LeviKeys["rawequal"] = { type = "builtin", color = builtinColor }
LeviKeys["rawget"] = { type = "builtin", color = builtinColor }
LeviKeys["rawlen"] = { type = "builtin", color = builtinColor }
LeviKeys["rawset"] = { type = "builtin", color = builtinColor }
LeviKeys["require"] = { type = "builtin", color = builtinColor }
LeviKeys["select"] = { type = "builtin", color = builtinColor }
LeviKeys["setfenv"] = { type = "builtin", color = builtinColor }
LeviKeys["setmetatable"] = { type = "builtin", color = builtinColor }
LeviKeys["tonumber"] = { type = "builtin", color = builtinColor }
LeviKeys["tostring"] = { type = "builtin", color = builtinColor }
LeviKeys["unpack"] = { type = "builtin", color = builtinColor }
LeviKeys["warn"] = { type = "builtin", color = builtinColor }
LeviKeys["xpcall"] = { type = "builtin", color = builtinColor }

-- ── global ────────────────────────────────────────
local globalColor = Color3.fromRGB(88, 128, 180)
LeviKeys["_G"] = { type = "global", color = globalColor }
LeviKeys["_VERSION"] = { type = "global", color = globalColor }
LeviKeys["bit32"] = { type = "global", color = globalColor }
LeviKeys["buffer"] = { type = "global", color = globalColor }
LeviKeys["coroutine"] = { type = "global", color = globalColor }
LeviKeys["debug"] = { type = "global", color = globalColor }
LeviKeys["game"] = { type = "global", color = globalColor }
LeviKeys["math"] = { type = "global", color = globalColor }
LeviKeys["os"] = { type = "global", color = globalColor }
LeviKeys["plugin"] = { type = "global", color = globalColor }
LeviKeys["script"] = { type = "global", color = globalColor }
LeviKeys["shared"] = { type = "global", color = globalColor }
LeviKeys["string"] = { type = "global", color = globalColor }
LeviKeys["table"] = { type = "global", color = globalColor }
LeviKeys["task"] = { type = "global", color = globalColor }
LeviKeys["utf8"] = { type = "global", color = globalColor }
LeviKeys["vector"] = { type = "global", color = globalColor }
LeviKeys["workspace"] = { type = "global", color = globalColor }

-- ── type ──────────────────────────────────────────
local dataTypeColor = Color3.fromRGB(70, 110, 165)
LeviKeys["Axes"] = { type = "type", color = dataTypeColor }
LeviKeys["BrickColor"] = { type = "type", color = dataTypeColor }
LeviKeys["CFrame"] = { type = "type", color = dataTypeColor }
LeviKeys["CatalogSearchParams"] = { type = "type", color = dataTypeColor }
LeviKeys["Color3"] = { type = "type", color = dataTypeColor }
LeviKeys["ColorSequence"] = { type = "type", color = dataTypeColor }
LeviKeys["ColorSequenceKeypoint"] = { type = "type", color = dataTypeColor }
LeviKeys["DateTime"] = { type = "type", color = dataTypeColor }
LeviKeys["DockWidgetPluginGuiInfo"] = { type = "type", color = dataTypeColor }
LeviKeys["Enum"] = { type = "type", color = dataTypeColor }
LeviKeys["EnumItem"] = { type = "type", color = dataTypeColor }
LeviKeys["Faces"] = { type = "type", color = dataTypeColor }
LeviKeys["FloatCurveKey"] = { type = "type", color = dataTypeColor }
LeviKeys["Font"] = { type = "type", color = dataTypeColor }
LeviKeys["Instance"] = { type = "type", color = dataTypeColor }
LeviKeys["NumberRange"] = { type = "type", color = dataTypeColor }
LeviKeys["NumberSequence"] = { type = "type", color = dataTypeColor }
LeviKeys["NumberSequenceKeypoint"] = { type = "type", color = dataTypeColor }
LeviKeys["OverlapParams"] = { type = "type", color = dataTypeColor }
LeviKeys["PathWaypoint"] = { type = "type", color = dataTypeColor }
LeviKeys["PhysicalProperties"] = { type = "type", color = dataTypeColor }
LeviKeys["Ray"] = { type = "type", color = dataTypeColor }
LeviKeys["RaycastParams"] = { type = "type", color = dataTypeColor }
LeviKeys["RaycastResult"] = { type = "type", color = dataTypeColor }
LeviKeys["Rect"] = { type = "type", color = dataTypeColor }
LeviKeys["Region3"] = { type = "type", color = dataTypeColor }
LeviKeys["Region3int16"] = { type = "type", color = dataTypeColor }
LeviKeys["RotationCurveKey"] = { type = "type", color = dataTypeColor }
LeviKeys["SharedTable"] = { type = "type", color = dataTypeColor }
LeviKeys["TweenInfo"] = { type = "type", color = dataTypeColor }
LeviKeys["UDim"] = { type = "type", color = dataTypeColor }
LeviKeys["UDim2"] = { type = "type", color = dataTypeColor }
LeviKeys["Vector2"] = { type = "type", color = dataTypeColor }
LeviKeys["Vector2int16"] = { type = "type", color = dataTypeColor }
LeviKeys["Vector3"] = { type = "type", color = dataTypeColor }
LeviKeys["Vector3int16"] = { type = "type", color = dataTypeColor }
LeviKeys["any"] = { type = "type", color = dataTypeColor }
LeviKeys["boolean"] = { type = "type", color = dataTypeColor }
LeviKeys["never"] = { type = "type", color = dataTypeColor }
LeviKeys["number"] = { type = "type", color = dataTypeColor }
LeviKeys["thread"] = { type = "type", color = dataTypeColor }
LeviKeys["unknown"] = { type = "type", color = dataTypeColor }
LeviKeys["userdata"] = { type = "type", color = dataTypeColor }
LeviKeys["void"] = { type = "type", color = dataTypeColor }

-- ── metamethod ────────────────────────────────────
local metamethodColor = Color3.fromRGB(185, 202, 225)
LeviKeys["__add"] = { type = "metamethod", color = metamethodColor }
LeviKeys["__band"] = { type = "metamethod", color = metamethodColor }
LeviKeys["__bnot"] = { type = "metamethod", color = metamethodColor }
LeviKeys["__bor"] = { type = "metamethod", color = metamethodColor }
LeviKeys["__bxor"] = { type = "metamethod", color = metamethodColor }
LeviKeys["__call"] = { type = "metamethod", color = metamethodColor }
LeviKeys["__concat"] = { type = "metamethod", color = metamethodColor }
LeviKeys["__div"] = { type = "metamethod", color = metamethodColor }
LeviKeys["__eq"] = { type = "metamethod", color = metamethodColor }
LeviKeys["__idiv"] = { type = "metamethod", color = metamethodColor }
LeviKeys["__index"] = { type = "metamethod", color = metamethodColor }
LeviKeys["__iter"] = { type = "metamethod", color = metamethodColor }
LeviKeys["__le"] = { type = "metamethod", color = metamethodColor }
LeviKeys["__len"] = { type = "metamethod", color = metamethodColor }
LeviKeys["__lt"] = { type = "metamethod", color = metamethodColor }
LeviKeys["__mod"] = { type = "metamethod", color = metamethodColor }
LeviKeys["__mul"] = { type = "metamethod", color = metamethodColor }
LeviKeys["__newindex"] = { type = "metamethod", color = metamethodColor }
LeviKeys["__pow"] = { type = "metamethod", color = metamethodColor }
LeviKeys["__shl"] = { type = "metamethod", color = metamethodColor }
LeviKeys["__shr"] = { type = "metamethod", color = metamethodColor }
LeviKeys["__sub"] = { type = "metamethod", color = metamethodColor }
LeviKeys["__tostring"] = { type = "metamethod", color = metamethodColor }
LeviKeys["__type"] = { type = "metamethod", color = metamethodColor }
LeviKeys["__unm"] = { type = "metamethod", color = metamethodColor }

-- ── comment ───────────────────────────────────────
local commentColor = Color3.fromRGB(60, 68, 80)
LeviKeys["comment_multi_close"] = { type = "comment", color = commentColor }
LeviKeys["comment_multi_open"] = { type = "comment", color = commentColor }
LeviKeys["comment_single"] = { type = "comment", color = commentColor }

-- ── number ────────────────────────────────────────
local numberColor = Color3.fromRGB(195, 210, 230)
LeviKeys["num_binary"] = { type = "number", color = numberColor }
LeviKeys["num_exp"] = { type = "number", color = numberColor }
LeviKeys["num_float"] = { type = "number", color = numberColor }
LeviKeys["num_hex"] = { type = "number", color = numberColor }
LeviKeys["num_inf"] = { type = "number", color = numberColor }
LeviKeys["num_integer"] = { type = "number", color = numberColor }
LeviKeys["num_nan"] = { type = "number", color = numberColor }
LeviKeys["num_separator"] = { type = "number", color = numberColor }

return LeviKeys