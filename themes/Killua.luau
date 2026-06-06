local KilluaKeys = {}
function GetData()
	local Config = {
		Name = "LuaU",
		Version = "1.0.0",
		Author = "Yera"
	}
end

-- ── keyword ───────────────────────────────────────
local keywordColor = Color3.fromRGB(80, 200, 255)
KilluaKeys["and"] = { type = "keyword", color = keywordColor }
KilluaKeys["do"] = { type = "keyword", color = keywordColor }
KilluaKeys["end"] = { type = "keyword", color = keywordColor }
KilluaKeys["export"] = { type = "keyword", color = keywordColor }
KilluaKeys["function"] = { type = "keyword", color = keywordColor }
KilluaKeys["in"] = { type = "keyword", color = keywordColor }
KilluaKeys["inf"] = { type = "keyword", color = keywordColor }
KilluaKeys["local"] = { type = "keyword", color = keywordColor }
KilluaKeys["not"] = { type = "keyword", color = keywordColor }
KilluaKeys["or"] = { type = "keyword", color = keywordColor }
KilluaKeys["then"] = { type = "keyword", color = keywordColor }
KilluaKeys["type"] = { type = "keyword", color = keywordColor }
KilluaKeys["self"] = { type = "keyword", color = keywordColor }

-- ── flow ──────────────────────────────────────────
local flowColor = Color3.fromRGB(80, 200, 255)
KilluaKeys["break"] = { type = "flow", color = flowColor }
KilluaKeys["continue"] = { type = "flow", color = flowColor }
KilluaKeys["else"] = { type = "flow", color = flowColor }
KilluaKeys["elseif"] = { type = "flow", color = flowColor }
KilluaKeys["for"] = { type = "flow", color = flowColor }
KilluaKeys["if"] = { type = "flow", color = flowColor }
KilluaKeys["repeat"] = { type = "flow", color = flowColor }
KilluaKeys["return"] = { type = "flow", color = flowColor }
KilluaKeys["until"] = { type = "flow", color = flowColor }
KilluaKeys["while"] = { type = "flow", color = flowColor }

-- ── literal ───────────────────────────────────────
local literalColor = Color3.fromRGB(220, 235, 255)
KilluaKeys["false"] = { type = "literal", color = literalColor }
KilluaKeys["nil"] = { type = "literal", color = literalColor }
KilluaKeys["true"] = { type = "literal", color = literalColor }

-- ── operator ──────────────────────────────────────
local operatorColor = Color3.fromRGB(180, 190, 210)
KilluaKeys["op_add"] = { type = "operator", color = operatorColor }
KilluaKeys["op_assign"] = { type = "operator", color = operatorColor }
KilluaKeys["op_concat"] = { type = "operator", color = operatorColor }
KilluaKeys["op_div"] = { type = "operator", color = operatorColor }
KilluaKeys["op_eq"] = { type = "operator", color = operatorColor }
KilluaKeys["op_floordiv"] = { type = "operator", color = operatorColor }
KilluaKeys["op_ge"] = { type = "operator", color = operatorColor }
KilluaKeys["op_gt"] = { type = "operator", color = operatorColor }
KilluaKeys["op_le"] = { type = "operator", color = operatorColor }
KilluaKeys["op_len"] = { type = "operator", color = operatorColor }
KilluaKeys["op_lt"] = { type = "operator", color = operatorColor }
KilluaKeys["op_mod"] = { type = "operator", color = operatorColor }
KilluaKeys["op_mul"] = { type = "operator", color = operatorColor }
KilluaKeys["op_neq"] = { type = "operator", color = operatorColor }
KilluaKeys["op_pow"] = { type = "operator", color = operatorColor }
KilluaKeys["op_sub"] = { type = "operator", color = operatorColor }
KilluaKeys["op_unm"] = { type = "operator", color = operatorColor }

-- ── type_annotation ───────────────────────────────
local typeColor = Color3.fromRGB(50, 160, 230)
KilluaKeys["op_ampersand"] = { type = "type_annotation", color = typeColor }
KilluaKeys["op_arrow"] = { type = "type_annotation", color = typeColor }
KilluaKeys["op_colon"] = { type = "type_annotation", color = typeColor }
KilluaKeys["op_pipe"] = { type = "type_annotation", color = typeColor }
KilluaKeys["op_question"] = { type = "type_annotation", color = typeColor }
KilluaKeys["op_typecast"] = { type = "type_annotation", color = typeColor }
KilluaKeys["typeof"] = { type = "type_annotation", color = typeColor }

-- ── builtin ───────────────────────────────────────
local builtinColor = Color3.fromRGB(100, 215, 255)
KilluaKeys["assert"] = { type = "builtin", color = builtinColor }
KilluaKeys["collectgarbage"] = { type = "builtin", color = builtinColor }
KilluaKeys["error"] = { type = "builtin", color = builtinColor }
KilluaKeys["gcinfo"] = { type = "builtin", color = builtinColor }
KilluaKeys["getfenv"] = { type = "builtin", color = builtinColor }
KilluaKeys["getmetatable"] = { type = "builtin", color = builtinColor }
KilluaKeys["ipairs"] = { type = "builtin", color = builtinColor }
KilluaKeys["loadstring"] = { type = "builtin", color = builtinColor }
KilluaKeys["newproxy"] = { type = "builtin", color = builtinColor }
KilluaKeys["next"] = { type = "builtin", color = builtinColor }
KilluaKeys["pairs"] = { type = "builtin", color = builtinColor }
KilluaKeys["pcall"] = { type = "builtin", color = builtinColor }
KilluaKeys["print"] = { type = "builtin", color = builtinColor }
KilluaKeys["rawequal"] = { type = "builtin", color = builtinColor }
KilluaKeys["rawget"] = { type = "builtin", color = builtinColor }
KilluaKeys["rawlen"] = { type = "builtin", color = builtinColor }
KilluaKeys["rawset"] = { type = "builtin", color = builtinColor }
KilluaKeys["require"] = { type = "builtin", color = builtinColor }
KilluaKeys["select"] = { type = "builtin", color = builtinColor }
KilluaKeys["setfenv"] = { type = "builtin", color = builtinColor }
KilluaKeys["setmetatable"] = { type = "builtin", color = builtinColor }
KilluaKeys["tonumber"] = { type = "builtin", color = builtinColor }
KilluaKeys["tostring"] = { type = "builtin", color = builtinColor }
KilluaKeys["unpack"] = { type = "builtin", color = builtinColor }
KilluaKeys["warn"] = { type = "builtin", color = builtinColor }
KilluaKeys["xpcall"] = { type = "builtin", color = builtinColor }

-- ── global ────────────────────────────────────────
local globalColor = Color3.fromRGB(70, 185, 245)
KilluaKeys["_G"] = { type = "global", color = globalColor }
KilluaKeys["_VERSION"] = { type = "global", color = globalColor }
KilluaKeys["bit32"] = { type = "global", color = globalColor }
KilluaKeys["buffer"] = { type = "global", color = globalColor }
KilluaKeys["coroutine"] = { type = "global", color = globalColor }
KilluaKeys["debug"] = { type = "global", color = globalColor }
KilluaKeys["game"] = { type = "global", color = globalColor }
KilluaKeys["math"] = { type = "global", color = globalColor }
KilluaKeys["os"] = { type = "global", color = globalColor }
KilluaKeys["plugin"] = { type = "global", color = globalColor }
KilluaKeys["script"] = { type = "global", color = globalColor }
KilluaKeys["shared"] = { type = "global", color = globalColor }
KilluaKeys["string"] = { type = "global", color = globalColor }
KilluaKeys["table"] = { type = "global", color = globalColor }
KilluaKeys["task"] = { type = "global", color = globalColor }
KilluaKeys["utf8"] = { type = "global", color = globalColor }
KilluaKeys["vector"] = { type = "global", color = globalColor }
KilluaKeys["workspace"] = { type = "global", color = globalColor }

-- ── type ──────────────────────────────────────────
local dataTypeColor = Color3.fromRGB(50, 160, 230)
KilluaKeys["Axes"] = { type = "type", color = dataTypeColor }
KilluaKeys["BrickColor"] = { type = "type", color = dataTypeColor }
KilluaKeys["CFrame"] = { type = "type", color = dataTypeColor }
KilluaKeys["CatalogSearchParams"] = { type = "type", color = dataTypeColor }
KilluaKeys["Color3"] = { type = "type", color = dataTypeColor }
KilluaKeys["ColorSequence"] = { type = "type", color = dataTypeColor }
KilluaKeys["ColorSequenceKeypoint"] = { type = "type", color = dataTypeColor }
KilluaKeys["DateTime"] = { type = "type", color = dataTypeColor }
KilluaKeys["DockWidgetPluginGuiInfo"] = { type = "type", color = dataTypeColor }
KilluaKeys["Enum"] = { type = "type", color = dataTypeColor }
KilluaKeys["EnumItem"] = { type = "type", color = dataTypeColor }
KilluaKeys["Faces"] = { type = "type", color = dataTypeColor }
KilluaKeys["FloatCurveKey"] = { type = "type", color = dataTypeColor }
KilluaKeys["Font"] = { type = "type", color = dataTypeColor }
KilluaKeys["Instance"] = { type = "type", color = dataTypeColor }
KilluaKeys["NumberRange"] = { type = "type", color = dataTypeColor }
KilluaKeys["NumberSequence"] = { type = "type", color = dataTypeColor }
KilluaKeys["NumberSequenceKeypoint"] = { type = "type", color = dataTypeColor }
KilluaKeys["OverlapParams"] = { type = "type", color = dataTypeColor }
KilluaKeys["PathWaypoint"] = { type = "type", color = dataTypeColor }
KilluaKeys["PhysicalProperties"] = { type = "type", color = dataTypeColor }
KilluaKeys["Ray"] = { type = "type", color = dataTypeColor }
KilluaKeys["RaycastParams"] = { type = "type", color = dataTypeColor }
KilluaKeys["RaycastResult"] = { type = "type", color = dataTypeColor }
KilluaKeys["Rect"] = { type = "type", color = dataTypeColor }
KilluaKeys["Region3"] = { type = "type", color = dataTypeColor }
KilluaKeys["Region3int16"] = { type = "type", color = dataTypeColor }
KilluaKeys["RotationCurveKey"] = { type = "type", color = dataTypeColor }
KilluaKeys["SharedTable"] = { type = "type", color = dataTypeColor }
KilluaKeys["TweenInfo"] = { type = "type", color = dataTypeColor }
KilluaKeys["UDim"] = { type = "type", color = dataTypeColor }
KilluaKeys["UDim2"] = { type = "type", color = dataTypeColor }
KilluaKeys["Vector2"] = { type = "type", color = dataTypeColor }
KilluaKeys["Vector2int16"] = { type = "type", color = dataTypeColor }
KilluaKeys["Vector3"] = { type = "type", color = dataTypeColor }
KilluaKeys["Vector3int16"] = { type = "type", color = dataTypeColor }
KilluaKeys["any"] = { type = "type", color = dataTypeColor }
KilluaKeys["boolean"] = { type = "type", color = dataTypeColor }
KilluaKeys["never"] = { type = "type", color = dataTypeColor }
KilluaKeys["number"] = { type = "type", color = dataTypeColor }
KilluaKeys["thread"] = { type = "type", color = dataTypeColor }
KilluaKeys["unknown"] = { type = "type", color = dataTypeColor }
KilluaKeys["userdata"] = { type = "type", color = dataTypeColor }
KilluaKeys["void"] = { type = "type", color = dataTypeColor }

-- ── metamethod ────────────────────────────────────
local metamethodColor = Color3.fromRGB(210, 225, 255)
KilluaKeys["__add"] = { type = "metamethod", color = metamethodColor }
KilluaKeys["__band"] = { type = "metamethod", color = metamethodColor }
KilluaKeys["__bnot"] = { type = "metamethod", color = metamethodColor }
KilluaKeys["__bor"] = { type = "metamethod", color = metamethodColor }
KilluaKeys["__bxor"] = { type = "metamethod", color = metamethodColor }
KilluaKeys["__call"] = { type = "metamethod", color = metamethodColor }
KilluaKeys["__concat"] = { type = "metamethod", color = metamethodColor }
KilluaKeys["__div"] = { type = "metamethod", color = metamethodColor }
KilluaKeys["__eq"] = { type = "metamethod", color = metamethodColor }
KilluaKeys["__idiv"] = { type = "metamethod", color = metamethodColor }
KilluaKeys["__index"] = { type = "metamethod", color = metamethodColor }
KilluaKeys["__iter"] = { type = "metamethod", color = metamethodColor }
KilluaKeys["__le"] = { type = "metamethod", color = metamethodColor }
KilluaKeys["__len"] = { type = "metamethod", color = metamethodColor }
KilluaKeys["__lt"] = { type = "metamethod", color = metamethodColor }
KilluaKeys["__mod"] = { type = "metamethod", color = metamethodColor }
KilluaKeys["__mul"] = { type = "metamethod", color = metamethodColor }
KilluaKeys["__newindex"] = { type = "metamethod", color = metamethodColor }
KilluaKeys["__pow"] = { type = "metamethod", color = metamethodColor }
KilluaKeys["__shl"] = { type = "metamethod", color = metamethodColor }
KilluaKeys["__shr"] = { type = "metamethod", color = metamethodColor }
KilluaKeys["__sub"] = { type = "metamethod", color = metamethodColor }
KilluaKeys["__tostring"] = { type = "metamethod", color = metamethodColor }
KilluaKeys["__type"] = { type = "metamethod", color = metamethodColor }
KilluaKeys["__unm"] = { type = "metamethod", color = metamethodColor }

-- ── comment ───────────────────────────────────────
local commentColor = Color3.fromRGB(70, 80, 100)
KilluaKeys["comment_multi_close"] = { type = "comment", color = commentColor }
KilluaKeys["comment_multi_open"] = { type = "comment", color = commentColor }
KilluaKeys["comment_single"] = { type = "comment", color = commentColor }

-- ── number ────────────────────────────────────────
local numberColor = Color3.fromRGB(220, 235, 255)
KilluaKeys["num_binary"] = { type = "number", color = numberColor }
KilluaKeys["num_exp"] = { type = "number", color = numberColor }
KilluaKeys["num_float"] = { type = "number", color = numberColor }
KilluaKeys["num_hex"] = { type = "number", color = numberColor }
KilluaKeys["num_inf"] = { type = "number", color = numberColor }
KilluaKeys["num_integer"] = { type = "number", color = numberColor }
KilluaKeys["num_nan"] = { type = "number", color = numberColor }
KilluaKeys["num_separator"] = { type = "number", color = numberColor }

return KilluaKeys