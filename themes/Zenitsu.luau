local ZenitsuKeys = {}
function GetData()
	local Config = {
		Name = "LuaU",
		Version = "1.0.0",
		Author = "Yera"
	}
end

-- ── keyword ───────────────────────────────────────
local keywordColor = Color3.fromRGB(240, 205, 55)
ZenitsuKeys["and"] = { type = "keyword", color = keywordColor }
ZenitsuKeys["do"] = { type = "keyword", color = keywordColor }
ZenitsuKeys["end"] = { type = "keyword", color = keywordColor }
ZenitsuKeys["export"] = { type = "keyword", color = keywordColor }
ZenitsuKeys["function"] = { type = "keyword", color = keywordColor }
ZenitsuKeys["in"] = { type = "keyword", color = keywordColor }
ZenitsuKeys["inf"] = { type = "keyword", color = keywordColor }
ZenitsuKeys["local"] = { type = "keyword", color = keywordColor }
ZenitsuKeys["not"] = { type = "keyword", color = keywordColor }
ZenitsuKeys["or"] = { type = "keyword", color = keywordColor }
ZenitsuKeys["then"] = { type = "keyword", color = keywordColor }
ZenitsuKeys["type"] = { type = "keyword", color = keywordColor }
ZenitsuKeys["self"] = { type = "keyword", color = keywordColor }

-- ── flow ──────────────────────────────────────────
local flowColor = Color3.fromRGB(240, 205, 55)
ZenitsuKeys["break"] = { type = "flow", color = flowColor }
ZenitsuKeys["continue"] = { type = "flow", color = flowColor }
ZenitsuKeys["else"] = { type = "flow", color = flowColor }
ZenitsuKeys["elseif"] = { type = "flow", color = flowColor }
ZenitsuKeys["for"] = { type = "flow", color = flowColor }
ZenitsuKeys["if"] = { type = "flow", color = flowColor }
ZenitsuKeys["repeat"] = { type = "flow", color = flowColor }
ZenitsuKeys["return"] = { type = "flow", color = flowColor }
ZenitsuKeys["until"] = { type = "flow", color = flowColor }
ZenitsuKeys["while"] = { type = "flow", color = flowColor }

-- ── literal ───────────────────────────────────────
local literalColor = Color3.fromRGB(245, 235, 175)
ZenitsuKeys["false"] = { type = "literal", color = literalColor }
ZenitsuKeys["nil"] = { type = "literal", color = literalColor }
ZenitsuKeys["true"] = { type = "literal", color = literalColor }

-- ── operator ──────────────────────────────────────
local operatorColor = Color3.fromRGB(178, 175, 168)
ZenitsuKeys["op_add"] = { type = "operator", color = operatorColor }
ZenitsuKeys["op_assign"] = { type = "operator", color = operatorColor }
ZenitsuKeys["op_concat"] = { type = "operator", color = operatorColor }
ZenitsuKeys["op_div"] = { type = "operator", color = operatorColor }
ZenitsuKeys["op_eq"] = { type = "operator", color = operatorColor }
ZenitsuKeys["op_floordiv"] = { type = "operator", color = operatorColor }
ZenitsuKeys["op_ge"] = { type = "operator", color = operatorColor }
ZenitsuKeys["op_gt"] = { type = "operator", color = operatorColor }
ZenitsuKeys["op_le"] = { type = "operator", color = operatorColor }
ZenitsuKeys["op_len"] = { type = "operator", color = operatorColor }
ZenitsuKeys["op_lt"] = { type = "operator", color = operatorColor }
ZenitsuKeys["op_mod"] = { type = "operator", color = operatorColor }
ZenitsuKeys["op_mul"] = { type = "operator", color = operatorColor }
ZenitsuKeys["op_neq"] = { type = "operator", color = operatorColor }
ZenitsuKeys["op_pow"] = { type = "operator", color = operatorColor }
ZenitsuKeys["op_sub"] = { type = "operator", color = operatorColor }
ZenitsuKeys["op_unm"] = { type = "operator", color = operatorColor }

-- ── type_annotation ───────────────────────────────
local typeColor = Color3.fromRGB(205, 172, 30)
ZenitsuKeys["op_ampersand"] = { type = "type_annotation", color = typeColor }
ZenitsuKeys["op_arrow"] = { type = "type_annotation", color = typeColor }
ZenitsuKeys["op_colon"] = { type = "type_annotation", color = typeColor }
ZenitsuKeys["op_pipe"] = { type = "type_annotation", color = typeColor }
ZenitsuKeys["op_question"] = { type = "type_annotation", color = typeColor }
ZenitsuKeys["op_typecast"] = { type = "type_annotation", color = typeColor }
ZenitsuKeys["typeof"] = { type = "type_annotation", color = typeColor }

-- ── builtin ───────────────────────────────────────
local builtinColor = Color3.fromRGB(245, 215, 72)
ZenitsuKeys["assert"] = { type = "builtin", color = builtinColor }
ZenitsuKeys["collectgarbage"] = { type = "builtin", color = builtinColor }
ZenitsuKeys["error"] = { type = "builtin", color = builtinColor }
ZenitsuKeys["gcinfo"] = { type = "builtin", color = builtinColor }
ZenitsuKeys["getfenv"] = { type = "builtin", color = builtinColor }
ZenitsuKeys["getmetatable"] = { type = "builtin", color = builtinColor }
ZenitsuKeys["ipairs"] = { type = "builtin", color = builtinColor }
ZenitsuKeys["loadstring"] = { type = "builtin", color = builtinColor }
ZenitsuKeys["newproxy"] = { type = "builtin", color = builtinColor }
ZenitsuKeys["next"] = { type = "builtin", color = builtinColor }
ZenitsuKeys["pairs"] = { type = "builtin", color = builtinColor }
ZenitsuKeys["pcall"] = { type = "builtin", color = builtinColor }
ZenitsuKeys["print"] = { type = "builtin", color = builtinColor }
ZenitsuKeys["rawequal"] = { type = "builtin", color = builtinColor }
ZenitsuKeys["rawget"] = { type = "builtin", color = builtinColor }
ZenitsuKeys["rawlen"] = { type = "builtin", color = builtinColor }
ZenitsuKeys["rawset"] = { type = "builtin", color = builtinColor }
ZenitsuKeys["require"] = { type = "builtin", color = builtinColor }
ZenitsuKeys["select"] = { type = "builtin", color = builtinColor }
ZenitsuKeys["setfenv"] = { type = "builtin", color = builtinColor }
ZenitsuKeys["setmetatable"] = { type = "builtin", color = builtinColor }
ZenitsuKeys["tonumber"] = { type = "builtin", color = builtinColor }
ZenitsuKeys["tostring"] = { type = "builtin", color = builtinColor }
ZenitsuKeys["unpack"] = { type = "builtin", color = builtinColor }
ZenitsuKeys["warn"] = { type = "builtin", color = builtinColor }
ZenitsuKeys["xpcall"] = { type = "builtin", color = builtinColor }

-- ── global ────────────────────────────────────────
local globalColor = Color3.fromRGB(225, 192, 45)
ZenitsuKeys["_G"] = { type = "global", color = globalColor }
ZenitsuKeys["_VERSION"] = { type = "global", color = globalColor }
ZenitsuKeys["bit32"] = { type = "global", color = globalColor }
ZenitsuKeys["buffer"] = { type = "global", color = globalColor }
ZenitsuKeys["coroutine"] = { type = "global", color = globalColor }
ZenitsuKeys["debug"] = { type = "global", color = globalColor }
ZenitsuKeys["game"] = { type = "global", color = globalColor }
ZenitsuKeys["math"] = { type = "global", color = globalColor }
ZenitsuKeys["os"] = { type = "global", color = globalColor }
ZenitsuKeys["plugin"] = { type = "global", color = globalColor }
ZenitsuKeys["script"] = { type = "global", color = globalColor }
ZenitsuKeys["shared"] = { type = "global", color = globalColor }
ZenitsuKeys["string"] = { type = "global", color = globalColor }
ZenitsuKeys["table"] = { type = "global", color = globalColor }
ZenitsuKeys["task"] = { type = "global", color = globalColor }
ZenitsuKeys["utf8"] = { type = "global", color = globalColor }
ZenitsuKeys["vector"] = { type = "global", color = globalColor }
ZenitsuKeys["workspace"] = { type = "global", color = globalColor }

-- ── type ──────────────────────────────────────────
local dataTypeColor = Color3.fromRGB(205, 172, 30)
ZenitsuKeys["Axes"] = { type = "type", color = dataTypeColor }
ZenitsuKeys["BrickColor"] = { type = "type", color = dataTypeColor }
ZenitsuKeys["CFrame"] = { type = "type", color = dataTypeColor }
ZenitsuKeys["CatalogSearchParams"] = { type = "type", color = dataTypeColor }
ZenitsuKeys["Color3"] = { type = "type", color = dataTypeColor }
ZenitsuKeys["ColorSequence"] = { type = "type", color = dataTypeColor }
ZenitsuKeys["ColorSequenceKeypoint"] = { type = "type", color = dataTypeColor }
ZenitsuKeys["DateTime"] = { type = "type", color = dataTypeColor }
ZenitsuKeys["DockWidgetPluginGuiInfo"] = { type = "type", color = dataTypeColor }
ZenitsuKeys["Enum"] = { type = "type", color = dataTypeColor }
ZenitsuKeys["EnumItem"] = { type = "type", color = dataTypeColor }
ZenitsuKeys["Faces"] = { type = "type", color = dataTypeColor }
ZenitsuKeys["FloatCurveKey"] = { type = "type", color = dataTypeColor }
ZenitsuKeys["Font"] = { type = "type", color = dataTypeColor }
ZenitsuKeys["Instance"] = { type = "type", color = dataTypeColor }
ZenitsuKeys["NumberRange"] = { type = "type", color = dataTypeColor }
ZenitsuKeys["NumberSequence"] = { type = "type", color = dataTypeColor }
ZenitsuKeys["NumberSequenceKeypoint"] = { type = "type", color = dataTypeColor }
ZenitsuKeys["OverlapParams"] = { type = "type", color = dataTypeColor }
ZenitsuKeys["PathWaypoint"] = { type = "type", color = dataTypeColor }
ZenitsuKeys["PhysicalProperties"] = { type = "type", color = dataTypeColor }
ZenitsuKeys["Ray"] = { type = "type", color = dataTypeColor }
ZenitsuKeys["RaycastParams"] = { type = "type", color = dataTypeColor }
ZenitsuKeys["RaycastResult"] = { type = "type", color = dataTypeColor }
ZenitsuKeys["Rect"] = { type = "type", color = dataTypeColor }
ZenitsuKeys["Region3"] = { type = "type", color = dataTypeColor }
ZenitsuKeys["Region3int16"] = { type = "type", color = dataTypeColor }
ZenitsuKeys["RotationCurveKey"] = { type = "type", color = dataTypeColor }
ZenitsuKeys["SharedTable"] = { type = "type", color = dataTypeColor }
ZenitsuKeys["TweenInfo"] = { type = "type", color = dataTypeColor }
ZenitsuKeys["UDim"] = { type = "type", color = dataTypeColor }
ZenitsuKeys["UDim2"] = { type = "type", color = dataTypeColor }
ZenitsuKeys["Vector2"] = { type = "type", color = dataTypeColor }
ZenitsuKeys["Vector2int16"] = { type = "type", color = dataTypeColor }
ZenitsuKeys["Vector3"] = { type = "type", color = dataTypeColor }
ZenitsuKeys["Vector3int16"] = { type = "type", color = dataTypeColor }
ZenitsuKeys["any"] = { type = "type", color = dataTypeColor }
ZenitsuKeys["boolean"] = { type = "type", color = dataTypeColor }
ZenitsuKeys["never"] = { type = "type", color = dataTypeColor }
ZenitsuKeys["number"] = { type = "type", color = dataTypeColor }
ZenitsuKeys["thread"] = { type = "type", color = dataTypeColor }
ZenitsuKeys["unknown"] = { type = "type", color = dataTypeColor }
ZenitsuKeys["userdata"] = { type = "type", color = dataTypeColor }
ZenitsuKeys["void"] = { type = "type", color = dataTypeColor }

-- ── metamethod ────────────────────────────────────
local metamethodColor = Color3.fromRGB(240, 230, 168)
ZenitsuKeys["__add"] = { type = "metamethod", color = metamethodColor }
ZenitsuKeys["__band"] = { type = "metamethod", color = metamethodColor }
ZenitsuKeys["__bnot"] = { type = "metamethod", color = metamethodColor }
ZenitsuKeys["__bor"] = { type = "metamethod", color = metamethodColor }
ZenitsuKeys["__bxor"] = { type = "metamethod", color = metamethodColor }
ZenitsuKeys["__call"] = { type = "metamethod", color = metamethodColor }
ZenitsuKeys["__concat"] = { type = "metamethod", color = metamethodColor }
ZenitsuKeys["__div"] = { type = "metamethod", color = metamethodColor }
ZenitsuKeys["__eq"] = { type = "metamethod", color = metamethodColor }
ZenitsuKeys["__idiv"] = { type = "metamethod", color = metamethodColor }
ZenitsuKeys["__index"] = { type = "metamethod", color = metamethodColor }
ZenitsuKeys["__iter"] = { type = "metamethod", color = metamethodColor }
ZenitsuKeys["__le"] = { type = "metamethod", color = metamethodColor }
ZenitsuKeys["__len"] = { type = "metamethod", color = metamethodColor }
ZenitsuKeys["__lt"] = { type = "metamethod", color = metamethodColor }
ZenitsuKeys["__mod"] = { type = "metamethod", color = metamethodColor }
ZenitsuKeys["__mul"] = { type = "metamethod", color = metamethodColor }
ZenitsuKeys["__newindex"] = { type = "metamethod", color = metamethodColor }
ZenitsuKeys["__pow"] = { type = "metamethod", color = metamethodColor }
ZenitsuKeys["__shl"] = { type = "metamethod", color = metamethodColor }
ZenitsuKeys["__shr"] = { type = "metamethod", color = metamethodColor }
ZenitsuKeys["__sub"] = { type = "metamethod", color = metamethodColor }
ZenitsuKeys["__tostring"] = { type = "metamethod", color = metamethodColor }
ZenitsuKeys["__type"] = { type = "metamethod", color = metamethodColor }
ZenitsuKeys["__unm"] = { type = "metamethod", color = metamethodColor }

-- ── comment ───────────────────────────────────────
local commentColor = Color3.fromRGB(70, 68, 55)
ZenitsuKeys["comment_multi_close"] = { type = "comment", color = commentColor }
ZenitsuKeys["comment_multi_open"] = { type = "comment", color = commentColor }
ZenitsuKeys["comment_single"] = { type = "comment", color = commentColor }

-- ── number ────────────────────────────────────────
local numberColor = Color3.fromRGB(245, 235, 175)
ZenitsuKeys["num_binary"] = { type = "number", color = numberColor }
ZenitsuKeys["num_exp"] = { type = "number", color = numberColor }
ZenitsuKeys["num_float"] = { type = "number", color = numberColor }
ZenitsuKeys["num_hex"] = { type = "number", color = numberColor }
ZenitsuKeys["num_inf"] = { type = "number", color = numberColor }
ZenitsuKeys["num_integer"] = { type = "number", color = numberColor }
ZenitsuKeys["num_nan"] = { type = "number", color = numberColor }
ZenitsuKeys["num_separator"] = { type = "number", color = numberColor }

return ZenitsuKeys