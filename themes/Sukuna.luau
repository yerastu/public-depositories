local SukunaKeys = {}
function GetData()
	local Config = {
		Name = "LuaU",
		Version = "1.0.0",
		Author = "Yera"
	}
end

-- ── keyword ───────────────────────────────────────
local keywordColor = Color3.fromRGB(230, 80, 140)
SukunaKeys["and"] = { type = "keyword", color = keywordColor }
SukunaKeys["do"] = { type = "keyword", color = keywordColor }
SukunaKeys["end"] = { type = "keyword", color = keywordColor }
SukunaKeys["export"] = { type = "keyword", color = keywordColor }
SukunaKeys["function"] = { type = "keyword", color = keywordColor }
SukunaKeys["in"] = { type = "keyword", color = keywordColor }
SukunaKeys["inf"] = { type = "keyword", color = keywordColor }
SukunaKeys["local"] = { type = "keyword", color = keywordColor }
SukunaKeys["not"] = { type = "keyword", color = keywordColor }
SukunaKeys["or"] = { type = "keyword", color = keywordColor }
SukunaKeys["then"] = { type = "keyword", color = keywordColor }
SukunaKeys["type"] = { type = "keyword", color = keywordColor }
SukunaKeys["self"] = { type = "keyword", color = keywordColor }

-- ── flow ──────────────────────────────────────────
local flowColor = Color3.fromRGB(230, 80, 140)
SukunaKeys["break"] = { type = "flow", color = flowColor }
SukunaKeys["continue"] = { type = "flow", color = flowColor }
SukunaKeys["else"] = { type = "flow", color = flowColor }
SukunaKeys["elseif"] = { type = "flow", color = flowColor }
SukunaKeys["for"] = { type = "flow", color = flowColor }
SukunaKeys["if"] = { type = "flow", color = flowColor }
SukunaKeys["repeat"] = { type = "flow", color = flowColor }
SukunaKeys["return"] = { type = "flow", color = flowColor }
SukunaKeys["until"] = { type = "flow", color = flowColor }
SukunaKeys["while"] = { type = "flow", color = flowColor }

-- ── literal ───────────────────────────────────────
local literalColor = Color3.fromRGB(250, 200, 80)
SukunaKeys["false"] = { type = "literal", color = literalColor }
SukunaKeys["nil"] = { type = "literal", color = literalColor }
SukunaKeys["true"] = { type = "literal", color = literalColor }

-- ── operator ──────────────────────────────────────
local operatorColor = Color3.fromRGB(180, 170, 175)
SukunaKeys["op_add"] = { type = "operator", color = operatorColor }
SukunaKeys["op_assign"] = { type = "operator", color = operatorColor }
SukunaKeys["op_concat"] = { type = "operator", color = operatorColor }
SukunaKeys["op_div"] = { type = "operator", color = operatorColor }
SukunaKeys["op_eq"] = { type = "operator", color = operatorColor }
SukunaKeys["op_floordiv"] = { type = "operator", color = operatorColor }
SukunaKeys["op_ge"] = { type = "operator", color = operatorColor }
SukunaKeys["op_gt"] = { type = "operator", color = operatorColor }
SukunaKeys["op_le"] = { type = "operator", color = operatorColor }
SukunaKeys["op_len"] = { type = "operator", color = operatorColor }
SukunaKeys["op_lt"] = { type = "operator", color = operatorColor }
SukunaKeys["op_mod"] = { type = "operator", color = operatorColor }
SukunaKeys["op_mul"] = { type = "operator", color = operatorColor }
SukunaKeys["op_neq"] = { type = "operator", color = operatorColor }
SukunaKeys["op_pow"] = { type = "operator", color = operatorColor }
SukunaKeys["op_sub"] = { type = "operator", color = operatorColor }
SukunaKeys["op_unm"] = { type = "operator", color = operatorColor }

-- ── type_annotation ───────────────────────────────
local typeColor = Color3.fromRGB(195, 50, 110)
SukunaKeys["op_ampersand"] = { type = "type_annotation", color = typeColor }
SukunaKeys["op_arrow"] = { type = "type_annotation", color = typeColor }
SukunaKeys["op_colon"] = { type = "type_annotation", color = typeColor }
SukunaKeys["op_pipe"] = { type = "type_annotation", color = typeColor }
SukunaKeys["op_question"] = { type = "type_annotation", color = typeColor }
SukunaKeys["op_typecast"] = { type = "type_annotation", color = typeColor }
SukunaKeys["typeof"] = { type = "type_annotation", color = typeColor }

-- ── builtin ───────────────────────────────────────
local builtinColor = Color3.fromRGB(240, 100, 155)
SukunaKeys["assert"] = { type = "builtin", color = builtinColor }
SukunaKeys["collectgarbage"] = { type = "builtin", color = builtinColor }
SukunaKeys["error"] = { type = "builtin", color = builtinColor }
SukunaKeys["gcinfo"] = { type = "builtin", color = builtinColor }
SukunaKeys["getfenv"] = { type = "builtin", color = builtinColor }
SukunaKeys["getmetatable"] = { type = "builtin", color = builtinColor }
SukunaKeys["ipairs"] = { type = "builtin", color = builtinColor }
SukunaKeys["loadstring"] = { type = "builtin", color = builtinColor }
SukunaKeys["newproxy"] = { type = "builtin", color = builtinColor }
SukunaKeys["next"] = { type = "builtin", color = builtinColor }
SukunaKeys["pairs"] = { type = "builtin", color = builtinColor }
SukunaKeys["pcall"] = { type = "builtin", color = builtinColor }
SukunaKeys["print"] = { type = "builtin", color = builtinColor }
SukunaKeys["rawequal"] = { type = "builtin", color = builtinColor }
SukunaKeys["rawget"] = { type = "builtin", color = builtinColor }
SukunaKeys["rawlen"] = { type = "builtin", color = builtinColor }
SukunaKeys["rawset"] = { type = "builtin", color = builtinColor }
SukunaKeys["require"] = { type = "builtin", color = builtinColor }
SukunaKeys["select"] = { type = "builtin", color = builtinColor }
SukunaKeys["setfenv"] = { type = "builtin", color = builtinColor }
SukunaKeys["setmetatable"] = { type = "builtin", color = builtinColor }
SukunaKeys["tonumber"] = { type = "builtin", color = builtinColor }
SukunaKeys["tostring"] = { type = "builtin", color = builtinColor }
SukunaKeys["unpack"] = { type = "builtin", color = builtinColor }
SukunaKeys["warn"] = { type = "builtin", color = builtinColor }
SukunaKeys["xpcall"] = { type = "builtin", color = builtinColor }

-- ── global ────────────────────────────────────────
local globalColor = Color3.fromRGB(215, 65, 125)
SukunaKeys["_G"] = { type = "global", color = globalColor }
SukunaKeys["_VERSION"] = { type = "global", color = globalColor }
SukunaKeys["bit32"] = { type = "global", color = globalColor }
SukunaKeys["buffer"] = { type = "global", color = globalColor }
SukunaKeys["coroutine"] = { type = "global", color = globalColor }
SukunaKeys["debug"] = { type = "global", color = globalColor }
SukunaKeys["game"] = { type = "global", color = globalColor }
SukunaKeys["math"] = { type = "global", color = globalColor }
SukunaKeys["os"] = { type = "global", color = globalColor }
SukunaKeys["plugin"] = { type = "global", color = globalColor }
SukunaKeys["script"] = { type = "global", color = globalColor }
SukunaKeys["shared"] = { type = "global", color = globalColor }
SukunaKeys["string"] = { type = "global", color = globalColor }
SukunaKeys["table"] = { type = "global", color = globalColor }
SukunaKeys["task"] = { type = "global", color = globalColor }
SukunaKeys["utf8"] = { type = "global", color = globalColor }
SukunaKeys["vector"] = { type = "global", color = globalColor }
SukunaKeys["workspace"] = { type = "global", color = globalColor }

-- ── type ──────────────────────────────────────────
local dataTypeColor = Color3.fromRGB(195, 50, 110)
SukunaKeys["Axes"] = { type = "type", color = dataTypeColor }
SukunaKeys["BrickColor"] = { type = "type", color = dataTypeColor }
SukunaKeys["CFrame"] = { type = "type", color = dataTypeColor }
SukunaKeys["CatalogSearchParams"] = { type = "type", color = dataTypeColor }
SukunaKeys["Color3"] = { type = "type", color = dataTypeColor }
SukunaKeys["ColorSequence"] = { type = "type", color = dataTypeColor }
SukunaKeys["ColorSequenceKeypoint"] = { type = "type", color = dataTypeColor }
SukunaKeys["DateTime"] = { type = "type", color = dataTypeColor }
SukunaKeys["DockWidgetPluginGuiInfo"] = { type = "type", color = dataTypeColor }
SukunaKeys["Enum"] = { type = "type", color = dataTypeColor }
SukunaKeys["EnumItem"] = { type = "type", color = dataTypeColor }
SukunaKeys["Faces"] = { type = "type", color = dataTypeColor }
SukunaKeys["FloatCurveKey"] = { type = "type", color = dataTypeColor }
SukunaKeys["Font"] = { type = "type", color = dataTypeColor }
SukunaKeys["Instance"] = { type = "type", color = dataTypeColor }
SukunaKeys["NumberRange"] = { type = "type", color = dataTypeColor }
SukunaKeys["NumberSequence"] = { type = "type", color = dataTypeColor }
SukunaKeys["NumberSequenceKeypoint"] = { type = "type", color = dataTypeColor }
SukunaKeys["OverlapParams"] = { type = "type", color = dataTypeColor }
SukunaKeys["PathWaypoint"] = { type = "type", color = dataTypeColor }
SukunaKeys["PhysicalProperties"] = { type = "type", color = dataTypeColor }
SukunaKeys["Ray"] = { type = "type", color = dataTypeColor }
SukunaKeys["RaycastParams"] = { type = "type", color = dataTypeColor }
SukunaKeys["RaycastResult"] = { type = "type", color = dataTypeColor }
SukunaKeys["Rect"] = { type = "type", color = dataTypeColor }
SukunaKeys["Region3"] = { type = "type", color = dataTypeColor }
SukunaKeys["Region3int16"] = { type = "type", color = dataTypeColor }
SukunaKeys["RotationCurveKey"] = { type = "type", color = dataTypeColor }
SukunaKeys["SharedTable"] = { type = "type", color = dataTypeColor }
SukunaKeys["TweenInfo"] = { type = "type", color = dataTypeColor }
SukunaKeys["UDim"] = { type = "type", color = dataTypeColor }
SukunaKeys["UDim2"] = { type = "type", color = dataTypeColor }
SukunaKeys["Vector2"] = { type = "type", color = dataTypeColor }
SukunaKeys["Vector2int16"] = { type = "type", color = dataTypeColor }
SukunaKeys["Vector3"] = { type = "type", color = dataTypeColor }
SukunaKeys["Vector3int16"] = { type = "type", color = dataTypeColor }
SukunaKeys["any"] = { type = "type", color = dataTypeColor }
SukunaKeys["boolean"] = { type = "type", color = dataTypeColor }
SukunaKeys["never"] = { type = "type", color = dataTypeColor }
SukunaKeys["number"] = { type = "type", color = dataTypeColor }
SukunaKeys["thread"] = { type = "type", color = dataTypeColor }
SukunaKeys["unknown"] = { type = "type", color = dataTypeColor }
SukunaKeys["userdata"] = { type = "type", color = dataTypeColor }
SukunaKeys["void"] = { type = "type", color = dataTypeColor }

-- ── metamethod ────────────────────────────────────
local metamethodColor = Color3.fromRGB(245, 190, 75)
SukunaKeys["__add"] = { type = "metamethod", color = metamethodColor }
SukunaKeys["__band"] = { type = "metamethod", color = metamethodColor }
SukunaKeys["__bnot"] = { type = "metamethod", color = metamethodColor }
SukunaKeys["__bor"] = { type = "metamethod", color = metamethodColor }
SukunaKeys["__bxor"] = { type = "metamethod", color = metamethodColor }
SukunaKeys["__call"] = { type = "metamethod", color = metamethodColor }
SukunaKeys["__concat"] = { type = "metamethod", color = metamethodColor }
SukunaKeys["__div"] = { type = "metamethod", color = metamethodColor }
SukunaKeys["__eq"] = { type = "metamethod", color = metamethodColor }
SukunaKeys["__idiv"] = { type = "metamethod", color = metamethodColor }
SukunaKeys["__index"] = { type = "metamethod", color = metamethodColor }
SukunaKeys["__iter"] = { type = "metamethod", color = metamethodColor }
SukunaKeys["__le"] = { type = "metamethod", color = metamethodColor }
SukunaKeys["__len"] = { type = "metamethod", color = metamethodColor }
SukunaKeys["__lt"] = { type = "metamethod", color = metamethodColor }
SukunaKeys["__mod"] = { type = "metamethod", color = metamethodColor }
SukunaKeys["__mul"] = { type = "metamethod", color = metamethodColor }
SukunaKeys["__newindex"] = { type = "metamethod", color = metamethodColor }
SukunaKeys["__pow"] = { type = "metamethod", color = metamethodColor }
SukunaKeys["__shl"] = { type = "metamethod", color = metamethodColor }
SukunaKeys["__shr"] = { type = "metamethod", color = metamethodColor }
SukunaKeys["__sub"] = { type = "metamethod", color = metamethodColor }
SukunaKeys["__tostring"] = { type = "metamethod", color = metamethodColor }
SukunaKeys["__type"] = { type = "metamethod", color = metamethodColor }
SukunaKeys["__unm"] = { type = "metamethod", color = metamethodColor }

-- ── comment ───────────────────────────────────────
local commentColor = Color3.fromRGB(72, 58, 65)
SukunaKeys["comment_multi_close"] = { type = "comment", color = commentColor }
SukunaKeys["comment_multi_open"] = { type = "comment", color = commentColor }
SukunaKeys["comment_single"] = { type = "comment", color = commentColor }

-- ── number ────────────────────────────────────────
local numberColor = Color3.fromRGB(250, 200, 80)
SukunaKeys["num_binary"] = { type = "number", color = numberColor }
SukunaKeys["num_exp"] = { type = "number", color = numberColor }
SukunaKeys["num_float"] = { type = "number", color = numberColor }
SukunaKeys["num_hex"] = { type = "number", color = numberColor }
SukunaKeys["num_inf"] = { type = "number", color = numberColor }
SukunaKeys["num_integer"] = { type = "number", color = numberColor }
SukunaKeys["num_nan"] = { type = "number", color = numberColor }
SukunaKeys["num_separator"] = { type = "number", color = numberColor }

return SukunaKeys