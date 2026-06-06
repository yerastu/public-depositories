local MuzanKeys = {}
function GetData()
	local Config = {
		Name = "LuaU",
		Version = "1.0.0",
		Author = "Yera"
	}
end

-- ── keyword ───────────────────────────────────────
local keywordColor = Color3.fromRGB(210, 60, 100)
MuzanKeys["and"] = { type = "keyword", color = keywordColor }
MuzanKeys["do"] = { type = "keyword", color = keywordColor }
MuzanKeys["end"] = { type = "keyword", color = keywordColor }
MuzanKeys["export"] = { type = "keyword", color = keywordColor }
MuzanKeys["function"] = { type = "keyword", color = keywordColor }
MuzanKeys["in"] = { type = "keyword", color = keywordColor }
MuzanKeys["inf"] = { type = "keyword", color = keywordColor }
MuzanKeys["local"] = { type = "keyword", color = keywordColor }
MuzanKeys["not"] = { type = "keyword", color = keywordColor }
MuzanKeys["or"] = { type = "keyword", color = keywordColor }
MuzanKeys["then"] = { type = "keyword", color = keywordColor }
MuzanKeys["type"] = { type = "keyword", color = keywordColor }
MuzanKeys["self"] = { type = "keyword", color = keywordColor }

-- ── flow ──────────────────────────────────────────
local flowColor = Color3.fromRGB(210, 60, 100)
MuzanKeys["break"] = { type = "flow", color = flowColor }
MuzanKeys["continue"] = { type = "flow", color = flowColor }
MuzanKeys["else"] = { type = "flow", color = flowColor }
MuzanKeys["elseif"] = { type = "flow", color = flowColor }
MuzanKeys["for"] = { type = "flow", color = flowColor }
MuzanKeys["if"] = { type = "flow", color = flowColor }
MuzanKeys["repeat"] = { type = "flow", color = flowColor }
MuzanKeys["return"] = { type = "flow", color = flowColor }
MuzanKeys["until"] = { type = "flow", color = flowColor }
MuzanKeys["while"] = { type = "flow", color = flowColor }

-- ── literal ───────────────────────────────────────
local literalColor = Color3.fromRGB(245, 175, 190)
MuzanKeys["false"] = { type = "literal", color = literalColor }
MuzanKeys["nil"] = { type = "literal", color = literalColor }
MuzanKeys["true"] = { type = "literal", color = literalColor }

-- ── operator ──────────────────────────────────────
local operatorColor = Color3.fromRGB(180, 170, 175)
MuzanKeys["op_add"] = { type = "operator", color = operatorColor }
MuzanKeys["op_assign"] = { type = "operator", color = operatorColor }
MuzanKeys["op_concat"] = { type = "operator", color = operatorColor }
MuzanKeys["op_div"] = { type = "operator", color = operatorColor }
MuzanKeys["op_eq"] = { type = "operator", color = operatorColor }
MuzanKeys["op_floordiv"] = { type = "operator", color = operatorColor }
MuzanKeys["op_ge"] = { type = "operator", color = operatorColor }
MuzanKeys["op_gt"] = { type = "operator", color = operatorColor }
MuzanKeys["op_le"] = { type = "operator", color = operatorColor }
MuzanKeys["op_len"] = { type = "operator", color = operatorColor }
MuzanKeys["op_lt"] = { type = "operator", color = operatorColor }
MuzanKeys["op_mod"] = { type = "operator", color = operatorColor }
MuzanKeys["op_mul"] = { type = "operator", color = operatorColor }
MuzanKeys["op_neq"] = { type = "operator", color = operatorColor }
MuzanKeys["op_pow"] = { type = "operator", color = operatorColor }
MuzanKeys["op_sub"] = { type = "operator", color = operatorColor }
MuzanKeys["op_unm"] = { type = "operator", color = operatorColor }

-- ── type_annotation ───────────────────────────────
local typeColor = Color3.fromRGB(175, 35, 70)
MuzanKeys["op_ampersand"] = { type = "type_annotation", color = typeColor }
MuzanKeys["op_arrow"] = { type = "type_annotation", color = typeColor }
MuzanKeys["op_colon"] = { type = "type_annotation", color = typeColor }
MuzanKeys["op_pipe"] = { type = "type_annotation", color = typeColor }
MuzanKeys["op_question"] = { type = "type_annotation", color = typeColor }
MuzanKeys["op_typecast"] = { type = "type_annotation", color = typeColor }
MuzanKeys["typeof"] = { type = "type_annotation", color = typeColor }

-- ── builtin ───────────────────────────────────────
local builtinColor = Color3.fromRGB(225, 80, 115)
MuzanKeys["assert"] = { type = "builtin", color = builtinColor }
MuzanKeys["collectgarbage"] = { type = "builtin", color = builtinColor }
MuzanKeys["error"] = { type = "builtin", color = builtinColor }
MuzanKeys["gcinfo"] = { type = "builtin", color = builtinColor }
MuzanKeys["getfenv"] = { type = "builtin", color = builtinColor }
MuzanKeys["getmetatable"] = { type = "builtin", color = builtinColor }
MuzanKeys["ipairs"] = { type = "builtin", color = builtinColor }
MuzanKeys["loadstring"] = { type = "builtin", color = builtinColor }
MuzanKeys["newproxy"] = { type = "builtin", color = builtinColor }
MuzanKeys["next"] = { type = "builtin", color = builtinColor }
MuzanKeys["pairs"] = { type = "builtin", color = builtinColor }
MuzanKeys["pcall"] = { type = "builtin", color = builtinColor }
MuzanKeys["print"] = { type = "builtin", color = builtinColor }
MuzanKeys["rawequal"] = { type = "builtin", color = builtinColor }
MuzanKeys["rawget"] = { type = "builtin", color = builtinColor }
MuzanKeys["rawlen"] = { type = "builtin", color = builtinColor }
MuzanKeys["rawset"] = { type = "builtin", color = builtinColor }
MuzanKeys["require"] = { type = "builtin", color = builtinColor }
MuzanKeys["select"] = { type = "builtin", color = builtinColor }
MuzanKeys["setfenv"] = { type = "builtin", color = builtinColor }
MuzanKeys["setmetatable"] = { type = "builtin", color = builtinColor }
MuzanKeys["tonumber"] = { type = "builtin", color = builtinColor }
MuzanKeys["tostring"] = { type = "builtin", color = builtinColor }
MuzanKeys["unpack"] = { type = "builtin", color = builtinColor }
MuzanKeys["warn"] = { type = "builtin", color = builtinColor }
MuzanKeys["xpcall"] = { type = "builtin", color = builtinColor }

-- ── global ────────────────────────────────────────
local globalColor = Color3.fromRGB(195, 50, 85)
MuzanKeys["_G"] = { type = "global", color = globalColor }
MuzanKeys["_VERSION"] = { type = "global", color = globalColor }
MuzanKeys["bit32"] = { type = "global", color = globalColor }
MuzanKeys["buffer"] = { type = "global", color = globalColor }
MuzanKeys["coroutine"] = { type = "global", color = globalColor }
MuzanKeys["debug"] = { type = "global", color = globalColor }
MuzanKeys["game"] = { type = "global", color = globalColor }
MuzanKeys["math"] = { type = "global", color = globalColor }
MuzanKeys["os"] = { type = "global", color = globalColor }
MuzanKeys["plugin"] = { type = "global", color = globalColor }
MuzanKeys["script"] = { type = "global", color = globalColor }
MuzanKeys["shared"] = { type = "global", color = globalColor }
MuzanKeys["string"] = { type = "global", color = globalColor }
MuzanKeys["table"] = { type = "global", color = globalColor }
MuzanKeys["task"] = { type = "global", color = globalColor }
MuzanKeys["utf8"] = { type = "global", color = globalColor }
MuzanKeys["vector"] = { type = "global", color = globalColor }
MuzanKeys["workspace"] = { type = "global", color = globalColor }

-- ── type ──────────────────────────────────────────
local dataTypeColor = Color3.fromRGB(175, 35, 70)
MuzanKeys["Axes"] = { type = "type", color = dataTypeColor }
MuzanKeys["BrickColor"] = { type = "type", color = dataTypeColor }
MuzanKeys["CFrame"] = { type = "type", color = dataTypeColor }
MuzanKeys["CatalogSearchParams"] = { type = "type", color = dataTypeColor }
MuzanKeys["Color3"] = { type = "type", color = dataTypeColor }
MuzanKeys["ColorSequence"] = { type = "type", color = dataTypeColor }
MuzanKeys["ColorSequenceKeypoint"] = { type = "type", color = dataTypeColor }
MuzanKeys["DateTime"] = { type = "type", color = dataTypeColor }
MuzanKeys["DockWidgetPluginGuiInfo"] = { type = "type", color = dataTypeColor }
MuzanKeys["Enum"] = { type = "type", color = dataTypeColor }
MuzanKeys["EnumItem"] = { type = "type", color = dataTypeColor }
MuzanKeys["Faces"] = { type = "type", color = dataTypeColor }
MuzanKeys["FloatCurveKey"] = { type = "type", color = dataTypeColor }
MuzanKeys["Font"] = { type = "type", color = dataTypeColor }
MuzanKeys["Instance"] = { type = "type", color = dataTypeColor }
MuzanKeys["NumberRange"] = { type = "type", color = dataTypeColor }
MuzanKeys["NumberSequence"] = { type = "type", color = dataTypeColor }
MuzanKeys["NumberSequenceKeypoint"] = { type = "type", color = dataTypeColor }
MuzanKeys["OverlapParams"] = { type = "type", color = dataTypeColor }
MuzanKeys["PathWaypoint"] = { type = "type", color = dataTypeColor }
MuzanKeys["PhysicalProperties"] = { type = "type", color = dataTypeColor }
MuzanKeys["Ray"] = { type = "type", color = dataTypeColor }
MuzanKeys["RaycastParams"] = { type = "type", color = dataTypeColor }
MuzanKeys["RaycastResult"] = { type = "type", color = dataTypeColor }
MuzanKeys["Rect"] = { type = "type", color = dataTypeColor }
MuzanKeys["Region3"] = { type = "type", color = dataTypeColor }
MuzanKeys["Region3int16"] = { type = "type", color = dataTypeColor }
MuzanKeys["RotationCurveKey"] = { type = "type", color = dataTypeColor }
MuzanKeys["SharedTable"] = { type = "type", color = dataTypeColor }
MuzanKeys["TweenInfo"] = { type = "type", color = dataTypeColor }
MuzanKeys["UDim"] = { type = "type", color = dataTypeColor }
MuzanKeys["UDim2"] = { type = "type", color = dataTypeColor }
MuzanKeys["Vector2"] = { type = "type", color = dataTypeColor }
MuzanKeys["Vector2int16"] = { type = "type", color = dataTypeColor }
MuzanKeys["Vector3"] = { type = "type", color = dataTypeColor }
MuzanKeys["Vector3int16"] = { type = "type", color = dataTypeColor }
MuzanKeys["any"] = { type = "type", color = dataTypeColor }
MuzanKeys["boolean"] = { type = "type", color = dataTypeColor }
MuzanKeys["never"] = { type = "type", color = dataTypeColor }
MuzanKeys["number"] = { type = "type", color = dataTypeColor }
MuzanKeys["thread"] = { type = "type", color = dataTypeColor }
MuzanKeys["unknown"] = { type = "type", color = dataTypeColor }
MuzanKeys["userdata"] = { type = "type", color = dataTypeColor }
MuzanKeys["void"] = { type = "type", color = dataTypeColor }

-- ── metamethod ────────────────────────────────────
local metamethodColor = Color3.fromRGB(240, 160, 180)
MuzanKeys["__add"] = { type = "metamethod", color = metamethodColor }
MuzanKeys["__band"] = { type = "metamethod", color = metamethodColor }
MuzanKeys["__bnot"] = { type = "metamethod", color = metamethodColor }
MuzanKeys["__bor"] = { type = "metamethod", color = metamethodColor }
MuzanKeys["__bxor"] = { type = "metamethod", color = metamethodColor }
MuzanKeys["__call"] = { type = "metamethod", color = metamethodColor }
MuzanKeys["__concat"] = { type = "metamethod", color = metamethodColor }
MuzanKeys["__div"] = { type = "metamethod", color = metamethodColor }
MuzanKeys["__eq"] = { type = "metamethod", color = metamethodColor }
MuzanKeys["__idiv"] = { type = "metamethod", color = metamethodColor }
MuzanKeys["__index"] = { type = "metamethod", color = metamethodColor }
MuzanKeys["__iter"] = { type = "metamethod", color = metamethodColor }
MuzanKeys["__le"] = { type = "metamethod", color = metamethodColor }
MuzanKeys["__len"] = { type = "metamethod", color = metamethodColor }
MuzanKeys["__lt"] = { type = "metamethod", color = metamethodColor }
MuzanKeys["__mod"] = { type = "metamethod", color = metamethodColor }
MuzanKeys["__mul"] = { type = "metamethod", color = metamethodColor }
MuzanKeys["__newindex"] = { type = "metamethod", color = metamethodColor }
MuzanKeys["__pow"] = { type = "metamethod", color = metamethodColor }
MuzanKeys["__shl"] = { type = "metamethod", color = metamethodColor }
MuzanKeys["__shr"] = { type = "metamethod", color = metamethodColor }
MuzanKeys["__sub"] = { type = "metamethod", color = metamethodColor }
MuzanKeys["__tostring"] = { type = "metamethod", color = metamethodColor }
MuzanKeys["__type"] = { type = "metamethod", color = metamethodColor }
MuzanKeys["__unm"] = { type = "metamethod", color = metamethodColor }

-- ── comment ───────────────────────────────────────
local commentColor = Color3.fromRGB(72, 60, 65)
MuzanKeys["comment_multi_close"] = { type = "comment", color = commentColor }
MuzanKeys["comment_multi_open"] = { type = "comment", color = commentColor }
MuzanKeys["comment_single"] = { type = "comment", color = commentColor }

-- ── number ────────────────────────────────────────
local numberColor = Color3.fromRGB(245, 175, 190)
MuzanKeys["num_binary"] = { type = "number", color = numberColor }
MuzanKeys["num_exp"] = { type = "number", color = numberColor }
MuzanKeys["num_float"] = { type = "number", color = numberColor }
MuzanKeys["num_hex"] = { type = "number", color = numberColor }
MuzanKeys["num_inf"] = { type = "number", color = numberColor }
MuzanKeys["num_integer"] = { type = "number", color = numberColor }
MuzanKeys["num_nan"] = { type = "number", color = numberColor }
MuzanKeys["num_separator"] = { type = "number", color = numberColor }

return MuzanKeys