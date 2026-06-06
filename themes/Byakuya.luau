local ByakuyaKeys = {}
function GetData()
	local Config = {
		Name = "LuaU",
		Version = "1.0.0",
		Author = "Yera"
	}
end

-- ── keyword ───────────────────────────────────────
local keywordColor = Color3.fromRGB(220, 140, 160)
ByakuyaKeys["and"] = { type = "keyword", color = keywordColor }
ByakuyaKeys["do"] = { type = "keyword", color = keywordColor }
ByakuyaKeys["end"] = { type = "keyword", color = keywordColor }
ByakuyaKeys["export"] = { type = "keyword", color = keywordColor }
ByakuyaKeys["function"] = { type = "keyword", color = keywordColor }
ByakuyaKeys["in"] = { type = "keyword", color = keywordColor }
ByakuyaKeys["inf"] = { type = "keyword", color = keywordColor }
ByakuyaKeys["local"] = { type = "keyword", color = keywordColor }
ByakuyaKeys["not"] = { type = "keyword", color = keywordColor }
ByakuyaKeys["or"] = { type = "keyword", color = keywordColor }
ByakuyaKeys["then"] = { type = "keyword", color = keywordColor }
ByakuyaKeys["type"] = { type = "keyword", color = keywordColor }
ByakuyaKeys["self"] = { type = "keyword", color = keywordColor }

-- ── flow ──────────────────────────────────────────
local flowColor = Color3.fromRGB(220, 140, 160)
ByakuyaKeys["break"] = { type = "flow", color = flowColor }
ByakuyaKeys["continue"] = { type = "flow", color = flowColor }
ByakuyaKeys["else"] = { type = "flow", color = flowColor }
ByakuyaKeys["elseif"] = { type = "flow", color = flowColor }
ByakuyaKeys["for"] = { type = "flow", color = flowColor }
ByakuyaKeys["if"] = { type = "flow", color = flowColor }
ByakuyaKeys["repeat"] = { type = "flow", color = flowColor }
ByakuyaKeys["return"] = { type = "flow", color = flowColor }
ByakuyaKeys["until"] = { type = "flow", color = flowColor }
ByakuyaKeys["while"] = { type = "flow", color = flowColor }

-- ── literal ───────────────────────────────────────
local literalColor = Color3.fromRGB(245, 210, 215)
ByakuyaKeys["false"] = { type = "literal", color = literalColor }
ByakuyaKeys["nil"] = { type = "literal", color = literalColor }
ByakuyaKeys["true"] = { type = "literal", color = literalColor }

-- ── operator ──────────────────────────────────────
local operatorColor = Color3.fromRGB(175, 175, 185)
ByakuyaKeys["op_add"] = { type = "operator", color = operatorColor }
ByakuyaKeys["op_assign"] = { type = "operator", color = operatorColor }
ByakuyaKeys["op_concat"] = { type = "operator", color = operatorColor }
ByakuyaKeys["op_div"] = { type = "operator", color = operatorColor }
ByakuyaKeys["op_eq"] = { type = "operator", color = operatorColor }
ByakuyaKeys["op_floordiv"] = { type = "operator", color = operatorColor }
ByakuyaKeys["op_ge"] = { type = "operator", color = operatorColor }
ByakuyaKeys["op_gt"] = { type = "operator", color = operatorColor }
ByakuyaKeys["op_le"] = { type = "operator", color = operatorColor }
ByakuyaKeys["op_len"] = { type = "operator", color = operatorColor }
ByakuyaKeys["op_lt"] = { type = "operator", color = operatorColor }
ByakuyaKeys["op_mod"] = { type = "operator", color = operatorColor }
ByakuyaKeys["op_mul"] = { type = "operator", color = operatorColor }
ByakuyaKeys["op_neq"] = { type = "operator", color = operatorColor }
ByakuyaKeys["op_pow"] = { type = "operator", color = operatorColor }
ByakuyaKeys["op_sub"] = { type = "operator", color = operatorColor }
ByakuyaKeys["op_unm"] = { type = "operator", color = operatorColor }

-- ── type_annotation ───────────────────────────────
local typeColor = Color3.fromRGB(180, 100, 130)
ByakuyaKeys["op_ampersand"] = { type = "type_annotation", color = typeColor }
ByakuyaKeys["op_arrow"] = { type = "type_annotation", color = typeColor }
ByakuyaKeys["op_colon"] = { type = "type_annotation", color = typeColor }
ByakuyaKeys["op_pipe"] = { type = "type_annotation", color = typeColor }
ByakuyaKeys["op_question"] = { type = "type_annotation", color = typeColor }
ByakuyaKeys["op_typecast"] = { type = "type_annotation", color = typeColor }
ByakuyaKeys["typeof"] = { type = "type_annotation", color = typeColor }

-- ── builtin ───────────────────────────────────────
local builtinColor = Color3.fromRGB(210, 155, 175)
ByakuyaKeys["assert"] = { type = "builtin", color = builtinColor }
ByakuyaKeys["collectgarbage"] = { type = "builtin", color = builtinColor }
ByakuyaKeys["error"] = { type = "builtin", color = builtinColor }
ByakuyaKeys["gcinfo"] = { type = "builtin", color = builtinColor }
ByakuyaKeys["getfenv"] = { type = "builtin", color = builtinColor }
ByakuyaKeys["getmetatable"] = { type = "builtin", color = builtinColor }
ByakuyaKeys["ipairs"] = { type = "builtin", color = builtinColor }
ByakuyaKeys["loadstring"] = { type = "builtin", color = builtinColor }
ByakuyaKeys["newproxy"] = { type = "builtin", color = builtinColor }
ByakuyaKeys["next"] = { type = "builtin", color = builtinColor }
ByakuyaKeys["pairs"] = { type = "builtin", color = builtinColor }
ByakuyaKeys["pcall"] = { type = "builtin", color = builtinColor }
ByakuyaKeys["print"] = { type = "builtin", color = builtinColor }
ByakuyaKeys["rawequal"] = { type = "builtin", color = builtinColor }
ByakuyaKeys["rawget"] = { type = "builtin", color = builtinColor }
ByakuyaKeys["rawlen"] = { type = "builtin", color = builtinColor }
ByakuyaKeys["rawset"] = { type = "builtin", color = builtinColor }
ByakuyaKeys["require"] = { type = "builtin", color = builtinColor }
ByakuyaKeys["select"] = { type = "builtin", color = builtinColor }
ByakuyaKeys["setfenv"] = { type = "builtin", color = builtinColor }
ByakuyaKeys["setmetatable"] = { type = "builtin", color = builtinColor }
ByakuyaKeys["tonumber"] = { type = "builtin", color = builtinColor }
ByakuyaKeys["tostring"] = { type = "builtin", color = builtinColor }
ByakuyaKeys["unpack"] = { type = "builtin", color = builtinColor }
ByakuyaKeys["warn"] = { type = "builtin", color = builtinColor }
ByakuyaKeys["xpcall"] = { type = "builtin", color = builtinColor }

-- ── global ────────────────────────────────────────
local globalColor = Color3.fromRGB(195, 130, 150)
ByakuyaKeys["_G"] = { type = "global", color = globalColor }
ByakuyaKeys["_VERSION"] = { type = "global", color = globalColor }
ByakuyaKeys["bit32"] = { type = "global", color = globalColor }
ByakuyaKeys["buffer"] = { type = "global", color = globalColor }
ByakuyaKeys["coroutine"] = { type = "global", color = globalColor }
ByakuyaKeys["debug"] = { type = "global", color = globalColor }
ByakuyaKeys["game"] = { type = "global", color = globalColor }
ByakuyaKeys["math"] = { type = "global", color = globalColor }
ByakuyaKeys["os"] = { type = "global", color = globalColor }
ByakuyaKeys["plugin"] = { type = "global", color = globalColor }
ByakuyaKeys["script"] = { type = "global", color = globalColor }
ByakuyaKeys["shared"] = { type = "global", color = globalColor }
ByakuyaKeys["string"] = { type = "global", color = globalColor }
ByakuyaKeys["table"] = { type = "global", color = globalColor }
ByakuyaKeys["task"] = { type = "global", color = globalColor }
ByakuyaKeys["utf8"] = { type = "global", color = globalColor }
ByakuyaKeys["vector"] = { type = "global", color = globalColor }
ByakuyaKeys["workspace"] = { type = "global", color = globalColor }

-- ── type ──────────────────────────────────────────
local dataTypeColor = Color3.fromRGB(180, 100, 130)
ByakuyaKeys["Axes"] = { type = "type", color = dataTypeColor }
ByakuyaKeys["BrickColor"] = { type = "type", color = dataTypeColor }
ByakuyaKeys["CFrame"] = { type = "type", color = dataTypeColor }
ByakuyaKeys["CatalogSearchParams"] = { type = "type", color = dataTypeColor }
ByakuyaKeys["Color3"] = { type = "type", color = dataTypeColor }
ByakuyaKeys["ColorSequence"] = { type = "type", color = dataTypeColor }
ByakuyaKeys["ColorSequenceKeypoint"] = { type = "type", color = dataTypeColor }
ByakuyaKeys["DateTime"] = { type = "type", color = dataTypeColor }
ByakuyaKeys["DockWidgetPluginGuiInfo"] = { type = "type", color = dataTypeColor }
ByakuyaKeys["Enum"] = { type = "type", color = dataTypeColor }
ByakuyaKeys["EnumItem"] = { type = "type", color = dataTypeColor }
ByakuyaKeys["Faces"] = { type = "type", color = dataTypeColor }
ByakuyaKeys["FloatCurveKey"] = { type = "type", color = dataTypeColor }
ByakuyaKeys["Font"] = { type = "type", color = dataTypeColor }
ByakuyaKeys["Instance"] = { type = "type", color = dataTypeColor }
ByakuyaKeys["NumberRange"] = { type = "type", color = dataTypeColor }
ByakuyaKeys["NumberSequence"] = { type = "type", color = dataTypeColor }
ByakuyaKeys["NumberSequenceKeypoint"] = { type = "type", color = dataTypeColor }
ByakuyaKeys["OverlapParams"] = { type = "type", color = dataTypeColor }
ByakuyaKeys["PathWaypoint"] = { type = "type", color = dataTypeColor }
ByakuyaKeys["PhysicalProperties"] = { type = "type", color = dataTypeColor }
ByakuyaKeys["Ray"] = { type = "type", color = dataTypeColor }
ByakuyaKeys["RaycastParams"] = { type = "type", color = dataTypeColor }
ByakuyaKeys["RaycastResult"] = { type = "type", color = dataTypeColor }
ByakuyaKeys["Rect"] = { type = "type", color = dataTypeColor }
ByakuyaKeys["Region3"] = { type = "type", color = dataTypeColor }
ByakuyaKeys["Region3int16"] = { type = "type", color = dataTypeColor }
ByakuyaKeys["RotationCurveKey"] = { type = "type", color = dataTypeColor }
ByakuyaKeys["SharedTable"] = { type = "type", color = dataTypeColor }
ByakuyaKeys["TweenInfo"] = { type = "type", color = dataTypeColor }
ByakuyaKeys["UDim"] = { type = "type", color = dataTypeColor }
ByakuyaKeys["UDim2"] = { type = "type", color = dataTypeColor }
ByakuyaKeys["Vector2"] = { type = "type", color = dataTypeColor }
ByakuyaKeys["Vector2int16"] = { type = "type", color = dataTypeColor }
ByakuyaKeys["Vector3"] = { type = "type", color = dataTypeColor }
ByakuyaKeys["Vector3int16"] = { type = "type", color = dataTypeColor }
ByakuyaKeys["any"] = { type = "type", color = dataTypeColor }
ByakuyaKeys["boolean"] = { type = "type", color = dataTypeColor }
ByakuyaKeys["never"] = { type = "type", color = dataTypeColor }
ByakuyaKeys["number"] = { type = "type", color = dataTypeColor }
ByakuyaKeys["thread"] = { type = "type", color = dataTypeColor }
ByakuyaKeys["unknown"] = { type = "type", color = dataTypeColor }
ByakuyaKeys["userdata"] = { type = "type", color = dataTypeColor }
ByakuyaKeys["void"] = { type = "type", color = dataTypeColor }

-- ── metamethod ────────────────────────────────────
local metamethodColor = Color3.fromRGB(240, 200, 210)
ByakuyaKeys["__add"] = { type = "metamethod", color = metamethodColor }
ByakuyaKeys["__band"] = { type = "metamethod", color = metamethodColor }
ByakuyaKeys["__bnot"] = { type = "metamethod", color = metamethodColor }
ByakuyaKeys["__bor"] = { type = "metamethod", color = metamethodColor }
ByakuyaKeys["__bxor"] = { type = "metamethod", color = metamethodColor }
ByakuyaKeys["__call"] = { type = "metamethod", color = metamethodColor }
ByakuyaKeys["__concat"] = { type = "metamethod", color = metamethodColor }
ByakuyaKeys["__div"] = { type = "metamethod", color = metamethodColor }
ByakuyaKeys["__eq"] = { type = "metamethod", color = metamethodColor }
ByakuyaKeys["__idiv"] = { type = "metamethod", color = metamethodColor }
ByakuyaKeys["__index"] = { type = "metamethod", color = metamethodColor }
ByakuyaKeys["__iter"] = { type = "metamethod", color = metamethodColor }
ByakuyaKeys["__le"] = { type = "metamethod", color = metamethodColor }
ByakuyaKeys["__len"] = { type = "metamethod", color = metamethodColor }
ByakuyaKeys["__lt"] = { type = "metamethod", color = metamethodColor }
ByakuyaKeys["__mod"] = { type = "metamethod", color = metamethodColor }
ByakuyaKeys["__mul"] = { type = "metamethod", color = metamethodColor }
ByakuyaKeys["__newindex"] = { type = "metamethod", color = metamethodColor }
ByakuyaKeys["__pow"] = { type = "metamethod", color = metamethodColor }
ByakuyaKeys["__shl"] = { type = "metamethod", color = metamethodColor }
ByakuyaKeys["__shr"] = { type = "metamethod", color = metamethodColor }
ByakuyaKeys["__sub"] = { type = "metamethod", color = metamethodColor }
ByakuyaKeys["__tostring"] = { type = "metamethod", color = metamethodColor }
ByakuyaKeys["__type"] = { type = "metamethod", color = metamethodColor }
ByakuyaKeys["__unm"] = { type = "metamethod", color = metamethodColor }

-- ── comment ───────────────────────────────────────
local commentColor = Color3.fromRGB(90, 85, 95)
ByakuyaKeys["comment_multi_close"] = { type = "comment", color = commentColor }
ByakuyaKeys["comment_multi_open"] = { type = "comment", color = commentColor }
ByakuyaKeys["comment_single"] = { type = "comment", color = commentColor }

-- ── number ────────────────────────────────────────
local numberColor = Color3.fromRGB(245, 210, 215)
ByakuyaKeys["num_binary"] = { type = "number", color = numberColor }
ByakuyaKeys["num_exp"] = { type = "number", color = numberColor }
ByakuyaKeys["num_float"] = { type = "number", color = numberColor }
ByakuyaKeys["num_hex"] = { type = "number", color = numberColor }
ByakuyaKeys["num_inf"] = { type = "number", color = numberColor }
ByakuyaKeys["num_integer"] = { type = "number", color = numberColor }
ByakuyaKeys["num_nan"] = { type = "number", color = numberColor }
ByakuyaKeys["num_separator"] = { type = "number", color = numberColor }

return ByakuyaKeys