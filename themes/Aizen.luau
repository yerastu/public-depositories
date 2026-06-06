local AizenKeys = {}
function GetData()
	local Config = {
		Name = "LuaU",
		Version = "1.0.0",
		Author = "Yera"
	}
end

-- ── keyword ───────────────────────────────────────
local keywordColor = Color3.fromRGB(180, 80, 220)
AizenKeys["and"] = { type = "keyword", color = keywordColor }
AizenKeys["do"] = { type = "keyword", color = keywordColor }
AizenKeys["end"] = { type = "keyword", color = keywordColor }
AizenKeys["export"] = { type = "keyword", color = keywordColor }
AizenKeys["function"] = { type = "keyword", color = keywordColor }
AizenKeys["in"] = { type = "keyword", color = keywordColor }
AizenKeys["inf"] = { type = "keyword", color = keywordColor }
AizenKeys["local"] = { type = "keyword", color = keywordColor }
AizenKeys["not"] = { type = "keyword", color = keywordColor }
AizenKeys["or"] = { type = "keyword", color = keywordColor }
AizenKeys["then"] = { type = "keyword", color = keywordColor }
AizenKeys["type"] = { type = "keyword", color = keywordColor }
AizenKeys["self"] = { type = "keyword", color = keywordColor }

-- ── flow ──────────────────────────────────────────
local flowColor = Color3.fromRGB(180, 80, 220)
AizenKeys["break"] = { type = "flow", color = flowColor }
AizenKeys["continue"] = { type = "flow", color = flowColor }
AizenKeys["else"] = { type = "flow", color = flowColor }
AizenKeys["elseif"] = { type = "flow", color = flowColor }
AizenKeys["for"] = { type = "flow", color = flowColor }
AizenKeys["if"] = { type = "flow", color = flowColor }
AizenKeys["repeat"] = { type = "flow", color = flowColor }
AizenKeys["return"] = { type = "flow", color = flowColor }
AizenKeys["until"] = { type = "flow", color = flowColor }
AizenKeys["while"] = { type = "flow", color = flowColor }

-- ── literal ───────────────────────────────────────
local literalColor = Color3.fromRGB(200, 240, 80)
AizenKeys["false"] = { type = "literal", color = literalColor }
AizenKeys["nil"] = { type = "literal", color = literalColor }
AizenKeys["true"] = { type = "literal", color = literalColor }

-- ── operator ──────────────────────────────────────
local operatorColor = Color3.fromRGB(190, 190, 210)
AizenKeys["op_add"] = { type = "operator", color = operatorColor }
AizenKeys["op_assign"] = { type = "operator", color = operatorColor }
AizenKeys["op_concat"] = { type = "operator", color = operatorColor }
AizenKeys["op_div"] = { type = "operator", color = operatorColor }
AizenKeys["op_eq"] = { type = "operator", color = operatorColor }
AizenKeys["op_floordiv"] = { type = "operator", color = operatorColor }
AizenKeys["op_ge"] = { type = "operator", color = operatorColor }
AizenKeys["op_gt"] = { type = "operator", color = operatorColor }
AizenKeys["op_le"] = { type = "operator", color = operatorColor }
AizenKeys["op_len"] = { type = "operator", color = operatorColor }
AizenKeys["op_lt"] = { type = "operator", color = operatorColor }
AizenKeys["op_mod"] = { type = "operator", color = operatorColor }
AizenKeys["op_mul"] = { type = "operator", color = operatorColor }
AizenKeys["op_neq"] = { type = "operator", color = operatorColor }
AizenKeys["op_pow"] = { type = "operator", color = operatorColor }
AizenKeys["op_sub"] = { type = "operator", color = operatorColor }
AizenKeys["op_unm"] = { type = "operator", color = operatorColor }

-- ── type_annotation ───────────────────────────────
local typeColor = Color3.fromRGB(130, 60, 200)
AizenKeys["op_ampersand"] = { type = "type_annotation", color = typeColor }
AizenKeys["op_arrow"] = { type = "type_annotation", color = typeColor }
AizenKeys["op_colon"] = { type = "type_annotation", color = typeColor }
AizenKeys["op_pipe"] = { type = "type_annotation", color = typeColor }
AizenKeys["op_question"] = { type = "type_annotation", color = typeColor }
AizenKeys["op_typecast"] = { type = "type_annotation", color = typeColor }
AizenKeys["typeof"] = { type = "type_annotation", color = typeColor }

-- ── builtin ───────────────────────────────────────
local builtinColor = Color3.fromRGB(160, 100, 240)
AizenKeys["assert"] = { type = "builtin", color = builtinColor }
AizenKeys["collectgarbage"] = { type = "builtin", color = builtinColor }
AizenKeys["error"] = { type = "builtin", color = builtinColor }
AizenKeys["gcinfo"] = { type = "builtin", color = builtinColor }
AizenKeys["getfenv"] = { type = "builtin", color = builtinColor }
AizenKeys["getmetatable"] = { type = "builtin", color = builtinColor }
AizenKeys["ipairs"] = { type = "builtin", color = builtinColor }
AizenKeys["loadstring"] = { type = "builtin", color = builtinColor }
AizenKeys["newproxy"] = { type = "builtin", color = builtinColor }
AizenKeys["next"] = { type = "builtin", color = builtinColor }
AizenKeys["pairs"] = { type = "builtin", color = builtinColor }
AizenKeys["pcall"] = { type = "builtin", color = builtinColor }
AizenKeys["print"] = { type = "builtin", color = builtinColor }
AizenKeys["rawequal"] = { type = "builtin", color = builtinColor }
AizenKeys["rawget"] = { type = "builtin", color = builtinColor }
AizenKeys["rawlen"] = { type = "builtin", color = builtinColor }
AizenKeys["rawset"] = { type = "builtin", color = builtinColor }
AizenKeys["require"] = { type = "builtin", color = builtinColor }
AizenKeys["select"] = { type = "builtin", color = builtinColor }
AizenKeys["setfenv"] = { type = "builtin", color = builtinColor }
AizenKeys["setmetatable"] = { type = "builtin", color = builtinColor }
AizenKeys["tonumber"] = { type = "builtin", color = builtinColor }
AizenKeys["tostring"] = { type = "builtin", color = builtinColor }
AizenKeys["unpack"] = { type = "builtin", color = builtinColor }
AizenKeys["warn"] = { type = "builtin", color = builtinColor }
AizenKeys["xpcall"] = { type = "builtin", color = builtinColor }

-- ── global ────────────────────────────────────────
local globalColor = Color3.fromRGB(140, 80, 220)
AizenKeys["_G"] = { type = "global", color = globalColor }
AizenKeys["_VERSION"] = { type = "global", color = globalColor }
AizenKeys["bit32"] = { type = "global", color = globalColor }
AizenKeys["buffer"] = { type = "global", color = globalColor }
AizenKeys["coroutine"] = { type = "global", color = globalColor }
AizenKeys["debug"] = { type = "global", color = globalColor }
AizenKeys["game"] = { type = "global", color = globalColor }
AizenKeys["math"] = { type = "global", color = globalColor }
AizenKeys["os"] = { type = "global", color = globalColor }
AizenKeys["plugin"] = { type = "global", color = globalColor }
AizenKeys["script"] = { type = "global", color = globalColor }
AizenKeys["shared"] = { type = "global", color = globalColor }
AizenKeys["string"] = { type = "global", color = globalColor }
AizenKeys["table"] = { type = "global", color = globalColor }
AizenKeys["task"] = { type = "global", color = globalColor }
AizenKeys["utf8"] = { type = "global", color = globalColor }
AizenKeys["vector"] = { type = "global", color = globalColor }
AizenKeys["workspace"] = { type = "global", color = globalColor }

-- ── type ──────────────────────────────────────────
local dataTypeColor = Color3.fromRGB(130, 60, 200)
AizenKeys["Axes"] = { type = "type", color = dataTypeColor }
AizenKeys["BrickColor"] = { type = "type", color = dataTypeColor }
AizenKeys["CFrame"] = { type = "type", color = dataTypeColor }
AizenKeys["CatalogSearchParams"] = { type = "type", color = dataTypeColor }
AizenKeys["Color3"] = { type = "type", color = dataTypeColor }
AizenKeys["ColorSequence"] = { type = "type", color = dataTypeColor }
AizenKeys["ColorSequenceKeypoint"] = { type = "type", color = dataTypeColor }
AizenKeys["DateTime"] = { type = "type", color = dataTypeColor }
AizenKeys["DockWidgetPluginGuiInfo"] = { type = "type", color = dataTypeColor }
AizenKeys["Enum"] = { type = "type", color = dataTypeColor }
AizenKeys["EnumItem"] = { type = "type", color = dataTypeColor }
AizenKeys["Faces"] = { type = "type", color = dataTypeColor }
AizenKeys["FloatCurveKey"] = { type = "type", color = dataTypeColor }
AizenKeys["Font"] = { type = "type", color = dataTypeColor }
AizenKeys["Instance"] = { type = "type", color = dataTypeColor }
AizenKeys["NumberRange"] = { type = "type", color = dataTypeColor }
AizenKeys["NumberSequence"] = { type = "type", color = dataTypeColor }
AizenKeys["NumberSequenceKeypoint"] = { type = "type", color = dataTypeColor }
AizenKeys["OverlapParams"] = { type = "type", color = dataTypeColor }
AizenKeys["PathWaypoint"] = { type = "type", color = dataTypeColor }
AizenKeys["PhysicalProperties"] = { type = "type", color = dataTypeColor }
AizenKeys["Ray"] = { type = "type", color = dataTypeColor }
AizenKeys["RaycastParams"] = { type = "type", color = dataTypeColor }
AizenKeys["RaycastResult"] = { type = "type", color = dataTypeColor }
AizenKeys["Rect"] = { type = "type", color = dataTypeColor }
AizenKeys["Region3"] = { type = "type", color = dataTypeColor }
AizenKeys["Region3int16"] = { type = "type", color = dataTypeColor }
AizenKeys["RotationCurveKey"] = { type = "type", color = dataTypeColor }
AizenKeys["SharedTable"] = { type = "type", color = dataTypeColor }
AizenKeys["TweenInfo"] = { type = "type", color = dataTypeColor }
AizenKeys["UDim"] = { type = "type", color = dataTypeColor }
AizenKeys["UDim2"] = { type = "type", color = dataTypeColor }
AizenKeys["Vector2"] = { type = "type", color = dataTypeColor }
AizenKeys["Vector2int16"] = { type = "type", color = dataTypeColor }
AizenKeys["Vector3"] = { type = "type", color = dataTypeColor }
AizenKeys["Vector3int16"] = { type = "type", color = dataTypeColor }
AizenKeys["any"] = { type = "type", color = dataTypeColor }
AizenKeys["boolean"] = { type = "type", color = dataTypeColor }
AizenKeys["never"] = { type = "type", color = dataTypeColor }
AizenKeys["number"] = { type = "type", color = dataTypeColor }
AizenKeys["thread"] = { type = "type", color = dataTypeColor }
AizenKeys["unknown"] = { type = "type", color = dataTypeColor }
AizenKeys["userdata"] = { type = "type", color = dataTypeColor }
AizenKeys["void"] = { type = "type", color = dataTypeColor }

-- ── metamethod ────────────────────────────────────
local metamethodColor = Color3.fromRGB(210, 200, 80)
AizenKeys["__add"] = { type = "metamethod", color = metamethodColor }
AizenKeys["__band"] = { type = "metamethod", color = metamethodColor }
AizenKeys["__bnot"] = { type = "metamethod", color = metamethodColor }
AizenKeys["__bor"] = { type = "metamethod", color = metamethodColor }
AizenKeys["__bxor"] = { type = "metamethod", color = metamethodColor }
AizenKeys["__call"] = { type = "metamethod", color = metamethodColor }
AizenKeys["__concat"] = { type = "metamethod", color = metamethodColor }
AizenKeys["__div"] = { type = "metamethod", color = metamethodColor }
AizenKeys["__eq"] = { type = "metamethod", color = metamethodColor }
AizenKeys["__idiv"] = { type = "metamethod", color = metamethodColor }
AizenKeys["__index"] = { type = "metamethod", color = metamethodColor }
AizenKeys["__iter"] = { type = "metamethod", color = metamethodColor }
AizenKeys["__le"] = { type = "metamethod", color = metamethodColor }
AizenKeys["__len"] = { type = "metamethod", color = metamethodColor }
AizenKeys["__lt"] = { type = "metamethod", color = metamethodColor }
AizenKeys["__mod"] = { type = "metamethod", color = metamethodColor }
AizenKeys["__mul"] = { type = "metamethod", color = metamethodColor }
AizenKeys["__newindex"] = { type = "metamethod", color = metamethodColor }
AizenKeys["__pow"] = { type = "metamethod", color = metamethodColor }
AizenKeys["__shl"] = { type = "metamethod", color = metamethodColor }
AizenKeys["__shr"] = { type = "metamethod", color = metamethodColor }
AizenKeys["__sub"] = { type = "metamethod", color = metamethodColor }
AizenKeys["__tostring"] = { type = "metamethod", color = metamethodColor }
AizenKeys["__type"] = { type = "metamethod", color = metamethodColor }
AizenKeys["__unm"] = { type = "metamethod", color = metamethodColor }

-- ── comment ───────────────────────────────────────
local commentColor = Color3.fromRGB(80, 75, 100)
AizenKeys["comment_multi_close"] = { type = "comment", color = commentColor }
AizenKeys["comment_multi_open"] = { type = "comment", color = commentColor }
AizenKeys["comment_single"] = { type = "comment", color = commentColor }

-- ── number ────────────────────────────────────────
local numberColor = Color3.fromRGB(200, 240, 80)
AizenKeys["num_binary"] = { type = "number", color = numberColor }
AizenKeys["num_exp"] = { type = "number", color = numberColor }
AizenKeys["num_float"] = { type = "number", color = numberColor }
AizenKeys["num_hex"] = { type = "number", color = numberColor }
AizenKeys["num_inf"] = { type = "number", color = numberColor }
AizenKeys["num_integer"] = { type = "number", color = numberColor }
AizenKeys["num_nan"] = { type = "number", color = numberColor }
AizenKeys["num_separator"] = { type = "number", color = numberColor }

return AizenKeys