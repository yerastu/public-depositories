local ObitoKeys = {}
function GetData()
	local Config = {
		Name = "LuaU",
		Version = "1.0.0",
		Author = "Yera"
	}
end

-- ── keyword ───────────────────────────────────────
local keywordColor = Color3.fromRGB(230, 120, 50)
ObitoKeys["and"] = { type = "keyword", color = keywordColor }
ObitoKeys["do"] = { type = "keyword", color = keywordColor }
ObitoKeys["end"] = { type = "keyword", color = keywordColor }
ObitoKeys["export"] = { type = "keyword", color = keywordColor }
ObitoKeys["function"] = { type = "keyword", color = keywordColor }
ObitoKeys["in"] = { type = "keyword", color = keywordColor }
ObitoKeys["inf"] = { type = "keyword", color = keywordColor }
ObitoKeys["local"] = { type = "keyword", color = keywordColor }
ObitoKeys["not"] = { type = "keyword", color = keywordColor }
ObitoKeys["or"] = { type = "keyword", color = keywordColor }
ObitoKeys["then"] = { type = "keyword", color = keywordColor }
ObitoKeys["type"] = { type = "keyword", color = keywordColor }
ObitoKeys["self"] = { type = "keyword", color = keywordColor }

-- ── flow ──────────────────────────────────────────
local flowColor = Color3.fromRGB(230, 120, 50)
ObitoKeys["break"] = { type = "flow", color = flowColor }
ObitoKeys["continue"] = { type = "flow", color = flowColor }
ObitoKeys["else"] = { type = "flow", color = flowColor }
ObitoKeys["elseif"] = { type = "flow", color = flowColor }
ObitoKeys["for"] = { type = "flow", color = flowColor }
ObitoKeys["if"] = { type = "flow", color = flowColor }
ObitoKeys["repeat"] = { type = "flow", color = flowColor }
ObitoKeys["return"] = { type = "flow", color = flowColor }
ObitoKeys["until"] = { type = "flow", color = flowColor }
ObitoKeys["while"] = { type = "flow", color = flowColor }

-- ── literal ───────────────────────────────────────
local literalColor = Color3.fromRGB(235, 225, 210)
ObitoKeys["false"] = { type = "literal", color = literalColor }
ObitoKeys["nil"] = { type = "literal", color = literalColor }
ObitoKeys["true"] = { type = "literal", color = literalColor }

-- ── operator ──────────────────────────────────────
local operatorColor = Color3.fromRGB(172, 168, 165)
ObitoKeys["op_add"] = { type = "operator", color = operatorColor }
ObitoKeys["op_assign"] = { type = "operator", color = operatorColor }
ObitoKeys["op_concat"] = { type = "operator", color = operatorColor }
ObitoKeys["op_div"] = { type = "operator", color = operatorColor }
ObitoKeys["op_eq"] = { type = "operator", color = operatorColor }
ObitoKeys["op_floordiv"] = { type = "operator", color = operatorColor }
ObitoKeys["op_ge"] = { type = "operator", color = operatorColor }
ObitoKeys["op_gt"] = { type = "operator", color = operatorColor }
ObitoKeys["op_le"] = { type = "operator", color = operatorColor }
ObitoKeys["op_len"] = { type = "operator", color = operatorColor }
ObitoKeys["op_lt"] = { type = "operator", color = operatorColor }
ObitoKeys["op_mod"] = { type = "operator", color = operatorColor }
ObitoKeys["op_mul"] = { type = "operator", color = operatorColor }
ObitoKeys["op_neq"] = { type = "operator", color = operatorColor }
ObitoKeys["op_pow"] = { type = "operator", color = operatorColor }
ObitoKeys["op_sub"] = { type = "operator", color = operatorColor }
ObitoKeys["op_unm"] = { type = "operator", color = operatorColor }

-- ── type_annotation ───────────────────────────────
local typeColor = Color3.fromRGB(200, 90, 25)
ObitoKeys["op_ampersand"] = { type = "type_annotation", color = typeColor }
ObitoKeys["op_arrow"] = { type = "type_annotation", color = typeColor }
ObitoKeys["op_colon"] = { type = "type_annotation", color = typeColor }
ObitoKeys["op_pipe"] = { type = "type_annotation", color = typeColor }
ObitoKeys["op_question"] = { type = "type_annotation", color = typeColor }
ObitoKeys["op_typecast"] = { type = "type_annotation", color = typeColor }
ObitoKeys["typeof"] = { type = "type_annotation", color = typeColor }

-- ── builtin ───────────────────────────────────────
local builtinColor = Color3.fromRGB(238, 138, 68)
ObitoKeys["assert"] = { type = "builtin", color = builtinColor }
ObitoKeys["collectgarbage"] = { type = "builtin", color = builtinColor }
ObitoKeys["error"] = { type = "builtin", color = builtinColor }
ObitoKeys["gcinfo"] = { type = "builtin", color = builtinColor }
ObitoKeys["getfenv"] = { type = "builtin", color = builtinColor }
ObitoKeys["getmetatable"] = { type = "builtin", color = builtinColor }
ObitoKeys["ipairs"] = { type = "builtin", color = builtinColor }
ObitoKeys["loadstring"] = { type = "builtin", color = builtinColor }
ObitoKeys["newproxy"] = { type = "builtin", color = builtinColor }
ObitoKeys["next"] = { type = "builtin", color = builtinColor }
ObitoKeys["pairs"] = { type = "builtin", color = builtinColor }
ObitoKeys["pcall"] = { type = "builtin", color = builtinColor }
ObitoKeys["print"] = { type = "builtin", color = builtinColor }
ObitoKeys["rawequal"] = { type = "builtin", color = builtinColor }
ObitoKeys["rawget"] = { type = "builtin", color = builtinColor }
ObitoKeys["rawlen"] = { type = "builtin", color = builtinColor }
ObitoKeys["rawset"] = { type = "builtin", color = builtinColor }
ObitoKeys["require"] = { type = "builtin", color = builtinColor }
ObitoKeys["select"] = { type = "builtin", color = builtinColor }
ObitoKeys["setfenv"] = { type = "builtin", color = builtinColor }
ObitoKeys["setmetatable"] = { type = "builtin", color = builtinColor }
ObitoKeys["tonumber"] = { type = "builtin", color = builtinColor }
ObitoKeys["tostring"] = { type = "builtin", color = builtinColor }
ObitoKeys["unpack"] = { type = "builtin", color = builtinColor }
ObitoKeys["warn"] = { type = "builtin", color = builtinColor }
ObitoKeys["xpcall"] = { type = "builtin", color = builtinColor }

-- ── global ────────────────────────────────────────
local globalColor = Color3.fromRGB(218, 108, 42)
ObitoKeys["_G"] = { type = "global", color = globalColor }
ObitoKeys["_VERSION"] = { type = "global", color = globalColor }
ObitoKeys["bit32"] = { type = "global", color = globalColor }
ObitoKeys["buffer"] = { type = "global", color = globalColor }
ObitoKeys["coroutine"] = { type = "global", color = globalColor }
ObitoKeys["debug"] = { type = "global", color = globalColor }
ObitoKeys["game"] = { type = "global", color = globalColor }
ObitoKeys["math"] = { type = "global", color = globalColor }
ObitoKeys["os"] = { type = "global", color = globalColor }
ObitoKeys["plugin"] = { type = "global", color = globalColor }
ObitoKeys["script"] = { type = "global", color = globalColor }
ObitoKeys["shared"] = { type = "global", color = globalColor }
ObitoKeys["string"] = { type = "global", color = globalColor }
ObitoKeys["table"] = { type = "global", color = globalColor }
ObitoKeys["task"] = { type = "global", color = globalColor }
ObitoKeys["utf8"] = { type = "global", color = globalColor }
ObitoKeys["vector"] = { type = "global", color = globalColor }
ObitoKeys["workspace"] = { type = "global", color = globalColor }

-- ── type ──────────────────────────────────────────
local dataTypeColor = Color3.fromRGB(200, 90, 25)
ObitoKeys["Axes"] = { type = "type", color = dataTypeColor }
ObitoKeys["BrickColor"] = { type = "type", color = dataTypeColor }
ObitoKeys["CFrame"] = { type = "type", color = dataTypeColor }
ObitoKeys["CatalogSearchParams"] = { type = "type", color = dataTypeColor }
ObitoKeys["Color3"] = { type = "type", color = dataTypeColor }
ObitoKeys["ColorSequence"] = { type = "type", color = dataTypeColor }
ObitoKeys["ColorSequenceKeypoint"] = { type = "type", color = dataTypeColor }
ObitoKeys["DateTime"] = { type = "type", color = dataTypeColor }
ObitoKeys["DockWidgetPluginGuiInfo"] = { type = "type", color = dataTypeColor }
ObitoKeys["Enum"] = { type = "type", color = dataTypeColor }
ObitoKeys["EnumItem"] = { type = "type", color = dataTypeColor }
ObitoKeys["Faces"] = { type = "type", color = dataTypeColor }
ObitoKeys["FloatCurveKey"] = { type = "type", color = dataTypeColor }
ObitoKeys["Font"] = { type = "type", color = dataTypeColor }
ObitoKeys["Instance"] = { type = "type", color = dataTypeColor }
ObitoKeys["NumberRange"] = { type = "type", color = dataTypeColor }
ObitoKeys["NumberSequence"] = { type = "type", color = dataTypeColor }
ObitoKeys["NumberSequenceKeypoint"] = { type = "type", color = dataTypeColor }
ObitoKeys["OverlapParams"] = { type = "type", color = dataTypeColor }
ObitoKeys["PathWaypoint"] = { type = "type", color = dataTypeColor }
ObitoKeys["PhysicalProperties"] = { type = "type", color = dataTypeColor }
ObitoKeys["Ray"] = { type = "type", color = dataTypeColor }
ObitoKeys["RaycastParams"] = { type = "type", color = dataTypeColor }
ObitoKeys["RaycastResult"] = { type = "type", color = dataTypeColor }
ObitoKeys["Rect"] = { type = "type", color = dataTypeColor }
ObitoKeys["Region3"] = { type = "type", color = dataTypeColor }
ObitoKeys["Region3int16"] = { type = "type", color = dataTypeColor }
ObitoKeys["RotationCurveKey"] = { type = "type", color = dataTypeColor }
ObitoKeys["SharedTable"] = { type = "type", color = dataTypeColor }
ObitoKeys["TweenInfo"] = { type = "type", color = dataTypeColor }
ObitoKeys["UDim"] = { type = "type", color = dataTypeColor }
ObitoKeys["UDim2"] = { type = "type", color = dataTypeColor }
ObitoKeys["Vector2"] = { type = "type", color = dataTypeColor }
ObitoKeys["Vector2int16"] = { type = "type", color = dataTypeColor }
ObitoKeys["Vector3"] = { type = "type", color = dataTypeColor }
ObitoKeys["Vector3int16"] = { type = "type", color = dataTypeColor }
ObitoKeys["any"] = { type = "type", color = dataTypeColor }
ObitoKeys["boolean"] = { type = "type", color = dataTypeColor }
ObitoKeys["never"] = { type = "type", color = dataTypeColor }
ObitoKeys["number"] = { type = "type", color = dataTypeColor }
ObitoKeys["thread"] = { type = "type", color = dataTypeColor }
ObitoKeys["unknown"] = { type = "type", color = dataTypeColor }
ObitoKeys["userdata"] = { type = "type", color = dataTypeColor }
ObitoKeys["void"] = { type = "type", color = dataTypeColor }

-- ── metamethod ────────────────────────────────────
local metamethodColor = Color3.fromRGB(230, 220, 205)
ObitoKeys["__add"] = { type = "metamethod", color = metamethodColor }
ObitoKeys["__band"] = { type = "metamethod", color = metamethodColor }
ObitoKeys["__bnot"] = { type = "metamethod", color = metamethodColor }
ObitoKeys["__bor"] = { type = "metamethod", color = metamethodColor }
ObitoKeys["__bxor"] = { type = "metamethod", color = metamethodColor }
ObitoKeys["__call"] = { type = "metamethod", color = metamethodColor }
ObitoKeys["__concat"] = { type = "metamethod", color = metamethodColor }
ObitoKeys["__div"] = { type = "metamethod", color = metamethodColor }
ObitoKeys["__eq"] = { type = "metamethod", color = metamethodColor }
ObitoKeys["__idiv"] = { type = "metamethod", color = metamethodColor }
ObitoKeys["__index"] = { type = "metamethod", color = metamethodColor }
ObitoKeys["__iter"] = { type = "metamethod", color = metamethodColor }
ObitoKeys["__le"] = { type = "metamethod", color = metamethodColor }
ObitoKeys["__len"] = { type = "metamethod", color = metamethodColor }
ObitoKeys["__lt"] = { type = "metamethod", color = metamethodColor }
ObitoKeys["__mod"] = { type = "metamethod", color = metamethodColor }
ObitoKeys["__mul"] = { type = "metamethod", color = metamethodColor }
ObitoKeys["__newindex"] = { type = "metamethod", color = metamethodColor }
ObitoKeys["__pow"] = { type = "metamethod", color = metamethodColor }
ObitoKeys["__shl"] = { type = "metamethod", color = metamethodColor }
ObitoKeys["__shr"] = { type = "metamethod", color = metamethodColor }
ObitoKeys["__sub"] = { type = "metamethod", color = metamethodColor }
ObitoKeys["__tostring"] = { type = "metamethod", color = metamethodColor }
ObitoKeys["__type"] = { type = "metamethod", color = metamethodColor }
ObitoKeys["__unm"] = { type = "metamethod", color = metamethodColor }

-- ── comment ───────────────────────────────────────
local commentColor = Color3.fromRGB(68, 64, 60)
ObitoKeys["comment_multi_close"] = { type = "comment", color = commentColor }
ObitoKeys["comment_multi_open"] = { type = "comment", color = commentColor }
ObitoKeys["comment_single"] = { type = "comment", color = commentColor }

-- ── number ────────────────────────────────────────
local numberColor = Color3.fromRGB(235, 225, 210)
ObitoKeys["num_binary"] = { type = "number", color = numberColor }
ObitoKeys["num_exp"] = { type = "number", color = numberColor }
ObitoKeys["num_float"] = { type = "number", color = numberColor }
ObitoKeys["num_hex"] = { type = "number", color = numberColor }
ObitoKeys["num_inf"] = { type = "number", color = numberColor }
ObitoKeys["num_integer"] = { type = "number", color = numberColor }
ObitoKeys["num_nan"] = { type = "number", color = numberColor }
ObitoKeys["num_separator"] = { type = "number", color = numberColor }

return ObitoKeys