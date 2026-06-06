local ItachiKeys = {}
function GetData()
	local Config = {
		Name = "LuaU",
		Version = "1.0.0",
		Author = "Yera"
	}
end

-- ── keyword ───────────────────────────────────────
local keywordColor = Color3.fromRGB(200, 50, 60)
ItachiKeys["and"] = { type = "keyword", color = keywordColor }
ItachiKeys["do"] = { type = "keyword", color = keywordColor }
ItachiKeys["end"] = { type = "keyword", color = keywordColor }
ItachiKeys["export"] = { type = "keyword", color = keywordColor }
ItachiKeys["function"] = { type = "keyword", color = keywordColor }
ItachiKeys["in"] = { type = "keyword", color = keywordColor }
ItachiKeys["inf"] = { type = "keyword", color = keywordColor }
ItachiKeys["local"] = { type = "keyword", color = keywordColor }
ItachiKeys["not"] = { type = "keyword", color = keywordColor }
ItachiKeys["or"] = { type = "keyword", color = keywordColor }
ItachiKeys["then"] = { type = "keyword", color = keywordColor }
ItachiKeys["type"] = { type = "keyword", color = keywordColor }
ItachiKeys["self"] = { type = "keyword", color = keywordColor }

-- ── flow ──────────────────────────────────────────
local flowColor = Color3.fromRGB(200, 50, 60)
ItachiKeys["break"] = { type = "flow", color = flowColor }
ItachiKeys["continue"] = { type = "flow", color = flowColor }
ItachiKeys["else"] = { type = "flow", color = flowColor }
ItachiKeys["elseif"] = { type = "flow", color = flowColor }
ItachiKeys["for"] = { type = "flow", color = flowColor }
ItachiKeys["if"] = { type = "flow", color = flowColor }
ItachiKeys["repeat"] = { type = "flow", color = flowColor }
ItachiKeys["return"] = { type = "flow", color = flowColor }
ItachiKeys["until"] = { type = "flow", color = flowColor }
ItachiKeys["while"] = { type = "flow", color = flowColor }

-- ── literal ───────────────────────────────────────
local literalColor = Color3.fromRGB(240, 80, 80)
ItachiKeys["false"] = { type = "literal", color = literalColor }
ItachiKeys["nil"] = { type = "literal", color = literalColor }
ItachiKeys["true"] = { type = "literal", color = literalColor }

-- ── operator ──────────────────────────────────────
local operatorColor = Color3.fromRGB(160, 155, 165)
ItachiKeys["op_add"] = { type = "operator", color = operatorColor }
ItachiKeys["op_assign"] = { type = "operator", color = operatorColor }
ItachiKeys["op_concat"] = { type = "operator", color = operatorColor }
ItachiKeys["op_div"] = { type = "operator", color = operatorColor }
ItachiKeys["op_eq"] = { type = "operator", color = operatorColor }
ItachiKeys["op_floordiv"] = { type = "operator", color = operatorColor }
ItachiKeys["op_ge"] = { type = "operator", color = operatorColor }
ItachiKeys["op_gt"] = { type = "operator", color = operatorColor }
ItachiKeys["op_le"] = { type = "operator", color = operatorColor }
ItachiKeys["op_len"] = { type = "operator", color = operatorColor }
ItachiKeys["op_lt"] = { type = "operator", color = operatorColor }
ItachiKeys["op_mod"] = { type = "operator", color = operatorColor }
ItachiKeys["op_mul"] = { type = "operator", color = operatorColor }
ItachiKeys["op_neq"] = { type = "operator", color = operatorColor }
ItachiKeys["op_pow"] = { type = "operator", color = operatorColor }
ItachiKeys["op_sub"] = { type = "operator", color = operatorColor }
ItachiKeys["op_unm"] = { type = "operator", color = operatorColor }

-- ── type_annotation ───────────────────────────────
local typeColor = Color3.fromRGB(170, 30, 50)
ItachiKeys["op_ampersand"] = { type = "type_annotation", color = typeColor }
ItachiKeys["op_arrow"] = { type = "type_annotation", color = typeColor }
ItachiKeys["op_colon"] = { type = "type_annotation", color = typeColor }
ItachiKeys["op_pipe"] = { type = "type_annotation", color = typeColor }
ItachiKeys["op_question"] = { type = "type_annotation", color = typeColor }
ItachiKeys["op_typecast"] = { type = "type_annotation", color = typeColor }
ItachiKeys["typeof"] = { type = "type_annotation", color = typeColor }

-- ── builtin ───────────────────────────────────────
local builtinColor = Color3.fromRGB(215, 70, 75)
ItachiKeys["assert"] = { type = "builtin", color = builtinColor }
ItachiKeys["collectgarbage"] = { type = "builtin", color = builtinColor }
ItachiKeys["error"] = { type = "builtin", color = builtinColor }
ItachiKeys["gcinfo"] = { type = "builtin", color = builtinColor }
ItachiKeys["getfenv"] = { type = "builtin", color = builtinColor }
ItachiKeys["getmetatable"] = { type = "builtin", color = builtinColor }
ItachiKeys["ipairs"] = { type = "builtin", color = builtinColor }
ItachiKeys["loadstring"] = { type = "builtin", color = builtinColor }
ItachiKeys["newproxy"] = { type = "builtin", color = builtinColor }
ItachiKeys["next"] = { type = "builtin", color = builtinColor }
ItachiKeys["pairs"] = { type = "builtin", color = builtinColor }
ItachiKeys["pcall"] = { type = "builtin", color = builtinColor }
ItachiKeys["print"] = { type = "builtin", color = builtinColor }
ItachiKeys["rawequal"] = { type = "builtin", color = builtinColor }
ItachiKeys["rawget"] = { type = "builtin", color = builtinColor }
ItachiKeys["rawlen"] = { type = "builtin", color = builtinColor }
ItachiKeys["rawset"] = { type = "builtin", color = builtinColor }
ItachiKeys["require"] = { type = "builtin", color = builtinColor }
ItachiKeys["select"] = { type = "builtin", color = builtinColor }
ItachiKeys["setfenv"] = { type = "builtin", color = builtinColor }
ItachiKeys["setmetatable"] = { type = "builtin", color = builtinColor }
ItachiKeys["tonumber"] = { type = "builtin", color = builtinColor }
ItachiKeys["tostring"] = { type = "builtin", color = builtinColor }
ItachiKeys["unpack"] = { type = "builtin", color = builtinColor }
ItachiKeys["warn"] = { type = "builtin", color = builtinColor }
ItachiKeys["xpcall"] = { type = "builtin", color = builtinColor }

-- ── global ────────────────────────────────────────
local globalColor = Color3.fromRGB(185, 45, 55)
ItachiKeys["_G"] = { type = "global", color = globalColor }
ItachiKeys["_VERSION"] = { type = "global", color = globalColor }
ItachiKeys["bit32"] = { type = "global", color = globalColor }
ItachiKeys["buffer"] = { type = "global", color = globalColor }
ItachiKeys["coroutine"] = { type = "global", color = globalColor }
ItachiKeys["debug"] = { type = "global", color = globalColor }
ItachiKeys["game"] = { type = "global", color = globalColor }
ItachiKeys["math"] = { type = "global", color = globalColor }
ItachiKeys["os"] = { type = "global", color = globalColor }
ItachiKeys["plugin"] = { type = "global", color = globalColor }
ItachiKeys["script"] = { type = "global", color = globalColor }
ItachiKeys["shared"] = { type = "global", color = globalColor }
ItachiKeys["string"] = { type = "global", color = globalColor }
ItachiKeys["table"] = { type = "global", color = globalColor }
ItachiKeys["task"] = { type = "global", color = globalColor }
ItachiKeys["utf8"] = { type = "global", color = globalColor }
ItachiKeys["vector"] = { type = "global", color = globalColor }
ItachiKeys["workspace"] = { type = "global", color = globalColor }

-- ── type ──────────────────────────────────────────
local dataTypeColor = Color3.fromRGB(170, 30, 50)
ItachiKeys["Axes"] = { type = "type", color = dataTypeColor }
ItachiKeys["BrickColor"] = { type = "type", color = dataTypeColor }
ItachiKeys["CFrame"] = { type = "type", color = dataTypeColor }
ItachiKeys["CatalogSearchParams"] = { type = "type", color = dataTypeColor }
ItachiKeys["Color3"] = { type = "type", color = dataTypeColor }
ItachiKeys["ColorSequence"] = { type = "type", color = dataTypeColor }
ItachiKeys["ColorSequenceKeypoint"] = { type = "type", color = dataTypeColor }
ItachiKeys["DateTime"] = { type = "type", color = dataTypeColor }
ItachiKeys["DockWidgetPluginGuiInfo"] = { type = "type", color = dataTypeColor }
ItachiKeys["Enum"] = { type = "type", color = dataTypeColor }
ItachiKeys["EnumItem"] = { type = "type", color = dataTypeColor }
ItachiKeys["Faces"] = { type = "type", color = dataTypeColor }
ItachiKeys["FloatCurveKey"] = { type = "type", color = dataTypeColor }
ItachiKeys["Font"] = { type = "type", color = dataTypeColor }
ItachiKeys["Instance"] = { type = "type", color = dataTypeColor }
ItachiKeys["NumberRange"] = { type = "type", color = dataTypeColor }
ItachiKeys["NumberSequence"] = { type = "type", color = dataTypeColor }
ItachiKeys["NumberSequenceKeypoint"] = { type = "type", color = dataTypeColor }
ItachiKeys["OverlapParams"] = { type = "type", color = dataTypeColor }
ItachiKeys["PathWaypoint"] = { type = "type", color = dataTypeColor }
ItachiKeys["PhysicalProperties"] = { type = "type", color = dataTypeColor }
ItachiKeys["Ray"] = { type = "type", color = dataTypeColor }
ItachiKeys["RaycastParams"] = { type = "type", color = dataTypeColor }
ItachiKeys["RaycastResult"] = { type = "type", color = dataTypeColor }
ItachiKeys["Rect"] = { type = "type", color = dataTypeColor }
ItachiKeys["Region3"] = { type = "type", color = dataTypeColor }
ItachiKeys["Region3int16"] = { type = "type", color = dataTypeColor }
ItachiKeys["RotationCurveKey"] = { type = "type", color = dataTypeColor }
ItachiKeys["SharedTable"] = { type = "type", color = dataTypeColor }
ItachiKeys["TweenInfo"] = { type = "type", color = dataTypeColor }
ItachiKeys["UDim"] = { type = "type", color = dataTypeColor }
ItachiKeys["UDim2"] = { type = "type", color = dataTypeColor }
ItachiKeys["Vector2"] = { type = "type", color = dataTypeColor }
ItachiKeys["Vector2int16"] = { type = "type", color = dataTypeColor }
ItachiKeys["Vector3"] = { type = "type", color = dataTypeColor }
ItachiKeys["Vector3int16"] = { type = "type", color = dataTypeColor }
ItachiKeys["any"] = { type = "type", color = dataTypeColor }
ItachiKeys["boolean"] = { type = "type", color = dataTypeColor }
ItachiKeys["never"] = { type = "type", color = dataTypeColor }
ItachiKeys["number"] = { type = "type", color = dataTypeColor }
ItachiKeys["thread"] = { type = "type", color = dataTypeColor }
ItachiKeys["unknown"] = { type = "type", color = dataTypeColor }
ItachiKeys["userdata"] = { type = "type", color = dataTypeColor }
ItachiKeys["void"] = { type = "type", color = dataTypeColor }

-- ── metamethod ────────────────────────────────────
local metamethodColor = Color3.fromRGB(235, 65, 70)
ItachiKeys["__add"] = { type = "metamethod", color = metamethodColor }
ItachiKeys["__band"] = { type = "metamethod", color = metamethodColor }
ItachiKeys["__bnot"] = { type = "metamethod", color = metamethodColor }
ItachiKeys["__bor"] = { type = "metamethod", color = metamethodColor }
ItachiKeys["__bxor"] = { type = "metamethod", color = metamethodColor }
ItachiKeys["__call"] = { type = "metamethod", color = metamethodColor }
ItachiKeys["__concat"] = { type = "metamethod", color = metamethodColor }
ItachiKeys["__div"] = { type = "metamethod", color = metamethodColor }
ItachiKeys["__eq"] = { type = "metamethod", color = metamethodColor }
ItachiKeys["__idiv"] = { type = "metamethod", color = metamethodColor }
ItachiKeys["__index"] = { type = "metamethod", color = metamethodColor }
ItachiKeys["__iter"] = { type = "metamethod", color = metamethodColor }
ItachiKeys["__le"] = { type = "metamethod", color = metamethodColor }
ItachiKeys["__len"] = { type = "metamethod", color = metamethodColor }
ItachiKeys["__lt"] = { type = "metamethod", color = metamethodColor }
ItachiKeys["__mod"] = { type = "metamethod", color = metamethodColor }
ItachiKeys["__mul"] = { type = "metamethod", color = metamethodColor }
ItachiKeys["__newindex"] = { type = "metamethod", color = metamethodColor }
ItachiKeys["__pow"] = { type = "metamethod", color = metamethodColor }
ItachiKeys["__shl"] = { type = "metamethod", color = metamethodColor }
ItachiKeys["__shr"] = { type = "metamethod", color = metamethodColor }
ItachiKeys["__sub"] = { type = "metamethod", color = metamethodColor }
ItachiKeys["__tostring"] = { type = "metamethod", color = metamethodColor }
ItachiKeys["__type"] = { type = "metamethod", color = metamethodColor }
ItachiKeys["__unm"] = { type = "metamethod", color = metamethodColor }

-- ── comment ───────────────────────────────────────
local commentColor = Color3.fromRGB(75, 65, 70)
ItachiKeys["comment_multi_close"] = { type = "comment", color = commentColor }
ItachiKeys["comment_multi_open"] = { type = "comment", color = commentColor }
ItachiKeys["comment_single"] = { type = "comment", color = commentColor }

-- ── number ────────────────────────────────────────
local numberColor = Color3.fromRGB(240, 80, 80)
ItachiKeys["num_binary"] = { type = "number", color = numberColor }
ItachiKeys["num_exp"] = { type = "number", color = numberColor }
ItachiKeys["num_float"] = { type = "number", color = numberColor }
ItachiKeys["num_hex"] = { type = "number", color = numberColor }
ItachiKeys["num_inf"] = { type = "number", color = numberColor }
ItachiKeys["num_integer"] = { type = "number", color = numberColor }
ItachiKeys["num_nan"] = { type = "number", color = numberColor }
ItachiKeys["num_separator"] = { type = "number", color = numberColor }

return ItachiKeys