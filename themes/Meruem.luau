local MeruemKeys = {}
function GetData()
	local Config = {
		Name = "LuaU",
		Version = "1.0.0",
		Author = "Yera"
	}
end

-- ── keyword ───────────────────────────────────────
local keywordColor = Color3.fromRGB(215, 185, 60)
MeruemKeys["and"] = { type = "keyword", color = keywordColor }
MeruemKeys["do"] = { type = "keyword", color = keywordColor }
MeruemKeys["end"] = { type = "keyword", color = keywordColor }
MeruemKeys["export"] = { type = "keyword", color = keywordColor }
MeruemKeys["function"] = { type = "keyword", color = keywordColor }
MeruemKeys["in"] = { type = "keyword", color = keywordColor }
MeruemKeys["inf"] = { type = "keyword", color = keywordColor }
MeruemKeys["local"] = { type = "keyword", color = keywordColor }
MeruemKeys["not"] = { type = "keyword", color = keywordColor }
MeruemKeys["or"] = { type = "keyword", color = keywordColor }
MeruemKeys["then"] = { type = "keyword", color = keywordColor }
MeruemKeys["type"] = { type = "keyword", color = keywordColor }
MeruemKeys["self"] = { type = "keyword", color = keywordColor }

-- ── flow ──────────────────────────────────────────
local flowColor = Color3.fromRGB(215, 185, 60)
MeruemKeys["break"] = { type = "flow", color = flowColor }
MeruemKeys["continue"] = { type = "flow", color = flowColor }
MeruemKeys["else"] = { type = "flow", color = flowColor }
MeruemKeys["elseif"] = { type = "flow", color = flowColor }
MeruemKeys["for"] = { type = "flow", color = flowColor }
MeruemKeys["if"] = { type = "flow", color = flowColor }
MeruemKeys["repeat"] = { type = "flow", color = flowColor }
MeruemKeys["return"] = { type = "flow", color = flowColor }
MeruemKeys["until"] = { type = "flow", color = flowColor }
MeruemKeys["while"] = { type = "flow", color = flowColor }

-- ── literal ───────────────────────────────────────
local literalColor = Color3.fromRGB(180, 225, 130)
MeruemKeys["false"] = { type = "literal", color = literalColor }
MeruemKeys["nil"] = { type = "literal", color = literalColor }
MeruemKeys["true"] = { type = "literal", color = literalColor }

-- ── operator ──────────────────────────────────────
local operatorColor = Color3.fromRGB(170, 168, 160)
MeruemKeys["op_add"] = { type = "operator", color = operatorColor }
MeruemKeys["op_assign"] = { type = "operator", color = operatorColor }
MeruemKeys["op_concat"] = { type = "operator", color = operatorColor }
MeruemKeys["op_div"] = { type = "operator", color = operatorColor }
MeruemKeys["op_eq"] = { type = "operator", color = operatorColor }
MeruemKeys["op_floordiv"] = { type = "operator", color = operatorColor }
MeruemKeys["op_ge"] = { type = "operator", color = operatorColor }
MeruemKeys["op_gt"] = { type = "operator", color = operatorColor }
MeruemKeys["op_le"] = { type = "operator", color = operatorColor }
MeruemKeys["op_len"] = { type = "operator", color = operatorColor }
MeruemKeys["op_lt"] = { type = "operator", color = operatorColor }
MeruemKeys["op_mod"] = { type = "operator", color = operatorColor }
MeruemKeys["op_mul"] = { type = "operator", color = operatorColor }
MeruemKeys["op_neq"] = { type = "operator", color = operatorColor }
MeruemKeys["op_pow"] = { type = "operator", color = operatorColor }
MeruemKeys["op_sub"] = { type = "operator", color = operatorColor }
MeruemKeys["op_unm"] = { type = "operator", color = operatorColor }

-- ── type_annotation ───────────────────────────────
local typeColor = Color3.fromRGB(180, 155, 40)
MeruemKeys["op_ampersand"] = { type = "type_annotation", color = typeColor }
MeruemKeys["op_arrow"] = { type = "type_annotation", color = typeColor }
MeruemKeys["op_colon"] = { type = "type_annotation", color = typeColor }
MeruemKeys["op_pipe"] = { type = "type_annotation", color = typeColor }
MeruemKeys["op_question"] = { type = "type_annotation", color = typeColor }
MeruemKeys["op_typecast"] = { type = "type_annotation", color = typeColor }
MeruemKeys["typeof"] = { type = "type_annotation", color = typeColor }

-- ── builtin ───────────────────────────────────────
local builtinColor = Color3.fromRGB(225, 200, 75)
MeruemKeys["assert"] = { type = "builtin", color = builtinColor }
MeruemKeys["collectgarbage"] = { type = "builtin", color = builtinColor }
MeruemKeys["error"] = { type = "builtin", color = builtinColor }
MeruemKeys["gcinfo"] = { type = "builtin", color = builtinColor }
MeruemKeys["getfenv"] = { type = "builtin", color = builtinColor }
MeruemKeys["getmetatable"] = { type = "builtin", color = builtinColor }
MeruemKeys["ipairs"] = { type = "builtin", color = builtinColor }
MeruemKeys["loadstring"] = { type = "builtin", color = builtinColor }
MeruemKeys["newproxy"] = { type = "builtin", color = builtinColor }
MeruemKeys["next"] = { type = "builtin", color = builtinColor }
MeruemKeys["pairs"] = { type = "builtin", color = builtinColor }
MeruemKeys["pcall"] = { type = "builtin", color = builtinColor }
MeruemKeys["print"] = { type = "builtin", color = builtinColor }
MeruemKeys["rawequal"] = { type = "builtin", color = builtinColor }
MeruemKeys["rawget"] = { type = "builtin", color = builtinColor }
MeruemKeys["rawlen"] = { type = "builtin", color = builtinColor }
MeruemKeys["rawset"] = { type = "builtin", color = builtinColor }
MeruemKeys["require"] = { type = "builtin", color = builtinColor }
MeruemKeys["select"] = { type = "builtin", color = builtinColor }
MeruemKeys["setfenv"] = { type = "builtin", color = builtinColor }
MeruemKeys["setmetatable"] = { type = "builtin", color = builtinColor }
MeruemKeys["tonumber"] = { type = "builtin", color = builtinColor }
MeruemKeys["tostring"] = { type = "builtin", color = builtinColor }
MeruemKeys["unpack"] = { type = "builtin", color = builtinColor }
MeruemKeys["warn"] = { type = "builtin", color = builtinColor }
MeruemKeys["xpcall"] = { type = "builtin", color = builtinColor }

-- ── global ────────────────────────────────────────
local globalColor = Color3.fromRGB(200, 170, 50)
MeruemKeys["_G"] = { type = "global", color = globalColor }
MeruemKeys["_VERSION"] = { type = "global", color = globalColor }
MeruemKeys["bit32"] = { type = "global", color = globalColor }
MeruemKeys["buffer"] = { type = "global", color = globalColor }
MeruemKeys["coroutine"] = { type = "global", color = globalColor }
MeruemKeys["debug"] = { type = "global", color = globalColor }
MeruemKeys["game"] = { type = "global", color = globalColor }
MeruemKeys["math"] = { type = "global", color = globalColor }
MeruemKeys["os"] = { type = "global", color = globalColor }
MeruemKeys["plugin"] = { type = "global", color = globalColor }
MeruemKeys["script"] = { type = "global", color = globalColor }
MeruemKeys["shared"] = { type = "global", color = globalColor }
MeruemKeys["string"] = { type = "global", color = globalColor }
MeruemKeys["table"] = { type = "global", color = globalColor }
MeruemKeys["task"] = { type = "global", color = globalColor }
MeruemKeys["utf8"] = { type = "global", color = globalColor }
MeruemKeys["vector"] = { type = "global", color = globalColor }
MeruemKeys["workspace"] = { type = "global", color = globalColor }

-- ── type ──────────────────────────────────────────
local dataTypeColor = Color3.fromRGB(180, 155, 40)
MeruemKeys["Axes"] = { type = "type", color = dataTypeColor }
MeruemKeys["BrickColor"] = { type = "type", color = dataTypeColor }
MeruemKeys["CFrame"] = { type = "type", color = dataTypeColor }
MeruemKeys["CatalogSearchParams"] = { type = "type", color = dataTypeColor }
MeruemKeys["Color3"] = { type = "type", color = dataTypeColor }
MeruemKeys["ColorSequence"] = { type = "type", color = dataTypeColor }
MeruemKeys["ColorSequenceKeypoint"] = { type = "type", color = dataTypeColor }
MeruemKeys["DateTime"] = { type = "type", color = dataTypeColor }
MeruemKeys["DockWidgetPluginGuiInfo"] = { type = "type", color = dataTypeColor }
MeruemKeys["Enum"] = { type = "type", color = dataTypeColor }
MeruemKeys["EnumItem"] = { type = "type", color = dataTypeColor }
MeruemKeys["Faces"] = { type = "type", color = dataTypeColor }
MeruemKeys["FloatCurveKey"] = { type = "type", color = dataTypeColor }
MeruemKeys["Font"] = { type = "type", color = dataTypeColor }
MeruemKeys["Instance"] = { type = "type", color = dataTypeColor }
MeruemKeys["NumberRange"] = { type = "type", color = dataTypeColor }
MeruemKeys["NumberSequence"] = { type = "type", color = dataTypeColor }
MeruemKeys["NumberSequenceKeypoint"] = { type = "type", color = dataTypeColor }
MeruemKeys["OverlapParams"] = { type = "type", color = dataTypeColor }
MeruemKeys["PathWaypoint"] = { type = "type", color = dataTypeColor }
MeruemKeys["PhysicalProperties"] = { type = "type", color = dataTypeColor }
MeruemKeys["Ray"] = { type = "type", color = dataTypeColor }
MeruemKeys["RaycastParams"] = { type = "type", color = dataTypeColor }
MeruemKeys["RaycastResult"] = { type = "type", color = dataTypeColor }
MeruemKeys["Rect"] = { type = "type", color = dataTypeColor }
MeruemKeys["Region3"] = { type = "type", color = dataTypeColor }
MeruemKeys["Region3int16"] = { type = "type", color = dataTypeColor }
MeruemKeys["RotationCurveKey"] = { type = "type", color = dataTypeColor }
MeruemKeys["SharedTable"] = { type = "type", color = dataTypeColor }
MeruemKeys["TweenInfo"] = { type = "type", color = dataTypeColor }
MeruemKeys["UDim"] = { type = "type", color = dataTypeColor }
MeruemKeys["UDim2"] = { type = "type", color = dataTypeColor }
MeruemKeys["Vector2"] = { type = "type", color = dataTypeColor }
MeruemKeys["Vector2int16"] = { type = "type", color = dataTypeColor }
MeruemKeys["Vector3"] = { type = "type", color = dataTypeColor }
MeruemKeys["Vector3int16"] = { type = "type", color = dataTypeColor }
MeruemKeys["any"] = { type = "type", color = dataTypeColor }
MeruemKeys["boolean"] = { type = "type", color = dataTypeColor }
MeruemKeys["never"] = { type = "type", color = dataTypeColor }
MeruemKeys["number"] = { type = "type", color = dataTypeColor }
MeruemKeys["thread"] = { type = "type", color = dataTypeColor }
MeruemKeys["unknown"] = { type = "type", color = dataTypeColor }
MeruemKeys["userdata"] = { type = "type", color = dataTypeColor }
MeruemKeys["void"] = { type = "type", color = dataTypeColor }

-- ── metamethod ────────────────────────────────────
local metamethodColor = Color3.fromRGB(172, 220, 125)
MeruemKeys["__add"] = { type = "metamethod", color = metamethodColor }
MeruemKeys["__band"] = { type = "metamethod", color = metamethodColor }
MeruemKeys["__bnot"] = { type = "metamethod", color = metamethodColor }
MeruemKeys["__bor"] = { type = "metamethod", color = metamethodColor }
MeruemKeys["__bxor"] = { type = "metamethod", color = metamethodColor }
MeruemKeys["__call"] = { type = "metamethod", color = metamethodColor }
MeruemKeys["__concat"] = { type = "metamethod", color = metamethodColor }
MeruemKeys["__div"] = { type = "metamethod", color = metamethodColor }
MeruemKeys["__eq"] = { type = "metamethod", color = metamethodColor }
MeruemKeys["__idiv"] = { type = "metamethod", color = metamethodColor }
MeruemKeys["__index"] = { type = "metamethod", color = metamethodColor }
MeruemKeys["__iter"] = { type = "metamethod", color = metamethodColor }
MeruemKeys["__le"] = { type = "metamethod", color = metamethodColor }
MeruemKeys["__len"] = { type = "metamethod", color = metamethodColor }
MeruemKeys["__lt"] = { type = "metamethod", color = metamethodColor }
MeruemKeys["__mod"] = { type = "metamethod", color = metamethodColor }
MeruemKeys["__mul"] = { type = "metamethod", color = metamethodColor }
MeruemKeys["__newindex"] = { type = "metamethod", color = metamethodColor }
MeruemKeys["__pow"] = { type = "metamethod", color = metamethodColor }
MeruemKeys["__shl"] = { type = "metamethod", color = metamethodColor }
MeruemKeys["__shr"] = { type = "metamethod", color = metamethodColor }
MeruemKeys["__sub"] = { type = "metamethod", color = metamethodColor }
MeruemKeys["__tostring"] = { type = "metamethod", color = metamethodColor }
MeruemKeys["__type"] = { type = "metamethod", color = metamethodColor }
MeruemKeys["__unm"] = { type = "metamethod", color = metamethodColor }

-- ── comment ───────────────────────────────────────
local commentColor = Color3.fromRGB(68, 66, 55)
MeruemKeys["comment_multi_close"] = { type = "comment", color = commentColor }
MeruemKeys["comment_multi_open"] = { type = "comment", color = commentColor }
MeruemKeys["comment_single"] = { type = "comment", color = commentColor }

-- ── number ────────────────────────────────────────
local numberColor = Color3.fromRGB(180, 225, 130)
MeruemKeys["num_binary"] = { type = "number", color = numberColor }
MeruemKeys["num_exp"] = { type = "number", color = numberColor }
MeruemKeys["num_float"] = { type = "number", color = numberColor }
MeruemKeys["num_hex"] = { type = "number", color = numberColor }
MeruemKeys["num_inf"] = { type = "number", color = numberColor }
MeruemKeys["num_integer"] = { type = "number", color = numberColor }
MeruemKeys["num_nan"] = { type = "number", color = numberColor }
MeruemKeys["num_separator"] = { type = "number", color = numberColor }

return MeruemKeys