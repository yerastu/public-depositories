local NagatoKeys = {}
function GetData()
	local Config = {
		Name = "LuaU",
		Version = "1.0.0",
		Author = "Yera"
	}
end

-- ── keyword ───────────────────────────────────────
local keywordColor = Color3.fromRGB(150, 80, 200)
NagatoKeys["and"] = { type = "keyword", color = keywordColor }
NagatoKeys["do"] = { type = "keyword", color = keywordColor }
NagatoKeys["end"] = { type = "keyword", color = keywordColor }
NagatoKeys["export"] = { type = "keyword", color = keywordColor }
NagatoKeys["function"] = { type = "keyword", color = keywordColor }
NagatoKeys["in"] = { type = "keyword", color = keywordColor }
NagatoKeys["inf"] = { type = "keyword", color = keywordColor }
NagatoKeys["local"] = { type = "keyword", color = keywordColor }
NagatoKeys["not"] = { type = "keyword", color = keywordColor }
NagatoKeys["or"] = { type = "keyword", color = keywordColor }
NagatoKeys["then"] = { type = "keyword", color = keywordColor }
NagatoKeys["type"] = { type = "keyword", color = keywordColor }
NagatoKeys["self"] = { type = "keyword", color = keywordColor }

-- ── flow ──────────────────────────────────────────
local flowColor = Color3.fromRGB(150, 80, 200)
NagatoKeys["break"] = { type = "flow", color = flowColor }
NagatoKeys["continue"] = { type = "flow", color = flowColor }
NagatoKeys["else"] = { type = "flow", color = flowColor }
NagatoKeys["elseif"] = { type = "flow", color = flowColor }
NagatoKeys["for"] = { type = "flow", color = flowColor }
NagatoKeys["if"] = { type = "flow", color = flowColor }
NagatoKeys["repeat"] = { type = "flow", color = flowColor }
NagatoKeys["return"] = { type = "flow", color = flowColor }
NagatoKeys["until"] = { type = "flow", color = flowColor }
NagatoKeys["while"] = { type = "flow", color = flowColor }

-- ── literal ───────────────────────────────────────
local literalColor = Color3.fromRGB(210, 185, 240)
NagatoKeys["false"] = { type = "literal", color = literalColor }
NagatoKeys["nil"] = { type = "literal", color = literalColor }
NagatoKeys["true"] = { type = "literal", color = literalColor }

-- ── operator ──────────────────────────────────────
local operatorColor = Color3.fromRGB(165, 160, 175)
NagatoKeys["op_add"] = { type = "operator", color = operatorColor }
NagatoKeys["op_assign"] = { type = "operator", color = operatorColor }
NagatoKeys["op_concat"] = { type = "operator", color = operatorColor }
NagatoKeys["op_div"] = { type = "operator", color = operatorColor }
NagatoKeys["op_eq"] = { type = "operator", color = operatorColor }
NagatoKeys["op_floordiv"] = { type = "operator", color = operatorColor }
NagatoKeys["op_ge"] = { type = "operator", color = operatorColor }
NagatoKeys["op_gt"] = { type = "operator", color = operatorColor }
NagatoKeys["op_le"] = { type = "operator", color = operatorColor }
NagatoKeys["op_len"] = { type = "operator", color = operatorColor }
NagatoKeys["op_lt"] = { type = "operator", color = operatorColor }
NagatoKeys["op_mod"] = { type = "operator", color = operatorColor }
NagatoKeys["op_mul"] = { type = "operator", color = operatorColor }
NagatoKeys["op_neq"] = { type = "operator", color = operatorColor }
NagatoKeys["op_pow"] = { type = "operator", color = operatorColor }
NagatoKeys["op_sub"] = { type = "operator", color = operatorColor }
NagatoKeys["op_unm"] = { type = "operator", color = operatorColor }

-- ── type_annotation ───────────────────────────────
local typeColor = Color3.fromRGB(115, 55, 170)
NagatoKeys["op_ampersand"] = { type = "type_annotation", color = typeColor }
NagatoKeys["op_arrow"] = { type = "type_annotation", color = typeColor }
NagatoKeys["op_colon"] = { type = "type_annotation", color = typeColor }
NagatoKeys["op_pipe"] = { type = "type_annotation", color = typeColor }
NagatoKeys["op_question"] = { type = "type_annotation", color = typeColor }
NagatoKeys["op_typecast"] = { type = "type_annotation", color = typeColor }
NagatoKeys["typeof"] = { type = "type_annotation", color = typeColor }

-- ── builtin ───────────────────────────────────────
local builtinColor = Color3.fromRGB(165, 95, 215)
NagatoKeys["assert"] = { type = "builtin", color = builtinColor }
NagatoKeys["collectgarbage"] = { type = "builtin", color = builtinColor }
NagatoKeys["error"] = { type = "builtin", color = builtinColor }
NagatoKeys["gcinfo"] = { type = "builtin", color = builtinColor }
NagatoKeys["getfenv"] = { type = "builtin", color = builtinColor }
NagatoKeys["getmetatable"] = { type = "builtin", color = builtinColor }
NagatoKeys["ipairs"] = { type = "builtin", color = builtinColor }
NagatoKeys["loadstring"] = { type = "builtin", color = builtinColor }
NagatoKeys["newproxy"] = { type = "builtin", color = builtinColor }
NagatoKeys["next"] = { type = "builtin", color = builtinColor }
NagatoKeys["pairs"] = { type = "builtin", color = builtinColor }
NagatoKeys["pcall"] = { type = "builtin", color = builtinColor }
NagatoKeys["print"] = { type = "builtin", color = builtinColor }
NagatoKeys["rawequal"] = { type = "builtin", color = builtinColor }
NagatoKeys["rawget"] = { type = "builtin", color = builtinColor }
NagatoKeys["rawlen"] = { type = "builtin", color = builtinColor }
NagatoKeys["rawset"] = { type = "builtin", color = builtinColor }
NagatoKeys["require"] = { type = "builtin", color = builtinColor }
NagatoKeys["select"] = { type = "builtin", color = builtinColor }
NagatoKeys["setfenv"] = { type = "builtin", color = builtinColor }
NagatoKeys["setmetatable"] = { type = "builtin", color = builtinColor }
NagatoKeys["tonumber"] = { type = "builtin", color = builtinColor }
NagatoKeys["tostring"] = { type = "builtin", color = builtinColor }
NagatoKeys["unpack"] = { type = "builtin", color = builtinColor }
NagatoKeys["warn"] = { type = "builtin", color = builtinColor }
NagatoKeys["xpcall"] = { type = "builtin", color = builtinColor }

-- ── global ────────────────────────────────────────
local globalColor = Color3.fromRGB(138, 70, 185)
NagatoKeys["_G"] = { type = "global", color = globalColor }
NagatoKeys["_VERSION"] = { type = "global", color = globalColor }
NagatoKeys["bit32"] = { type = "global", color = globalColor }
NagatoKeys["buffer"] = { type = "global", color = globalColor }
NagatoKeys["coroutine"] = { type = "global", color = globalColor }
NagatoKeys["debug"] = { type = "global", color = globalColor }
NagatoKeys["game"] = { type = "global", color = globalColor }
NagatoKeys["math"] = { type = "global", color = globalColor }
NagatoKeys["os"] = { type = "global", color = globalColor }
NagatoKeys["plugin"] = { type = "global", color = globalColor }
NagatoKeys["script"] = { type = "global", color = globalColor }
NagatoKeys["shared"] = { type = "global", color = globalColor }
NagatoKeys["string"] = { type = "global", color = globalColor }
NagatoKeys["table"] = { type = "global", color = globalColor }
NagatoKeys["task"] = { type = "global", color = globalColor }
NagatoKeys["utf8"] = { type = "global", color = globalColor }
NagatoKeys["vector"] = { type = "global", color = globalColor }
NagatoKeys["workspace"] = { type = "global", color = globalColor }

-- ── type ──────────────────────────────────────────
local dataTypeColor = Color3.fromRGB(115, 55, 170)
NagatoKeys["Axes"] = { type = "type", color = dataTypeColor }
NagatoKeys["BrickColor"] = { type = "type", color = dataTypeColor }
NagatoKeys["CFrame"] = { type = "type", color = dataTypeColor }
NagatoKeys["CatalogSearchParams"] = { type = "type", color = dataTypeColor }
NagatoKeys["Color3"] = { type = "type", color = dataTypeColor }
NagatoKeys["ColorSequence"] = { type = "type", color = dataTypeColor }
NagatoKeys["ColorSequenceKeypoint"] = { type = "type", color = dataTypeColor }
NagatoKeys["DateTime"] = { type = "type", color = dataTypeColor }
NagatoKeys["DockWidgetPluginGuiInfo"] = { type = "type", color = dataTypeColor }
NagatoKeys["Enum"] = { type = "type", color = dataTypeColor }
NagatoKeys["EnumItem"] = { type = "type", color = dataTypeColor }
NagatoKeys["Faces"] = { type = "type", color = dataTypeColor }
NagatoKeys["FloatCurveKey"] = { type = "type", color = dataTypeColor }
NagatoKeys["Font"] = { type = "type", color = dataTypeColor }
NagatoKeys["Instance"] = { type = "type", color = dataTypeColor }
NagatoKeys["NumberRange"] = { type = "type", color = dataTypeColor }
NagatoKeys["NumberSequence"] = { type = "type", color = dataTypeColor }
NagatoKeys["NumberSequenceKeypoint"] = { type = "type", color = dataTypeColor }
NagatoKeys["OverlapParams"] = { type = "type", color = dataTypeColor }
NagatoKeys["PathWaypoint"] = { type = "type", color = dataTypeColor }
NagatoKeys["PhysicalProperties"] = { type = "type", color = dataTypeColor }
NagatoKeys["Ray"] = { type = "type", color = dataTypeColor }
NagatoKeys["RaycastParams"] = { type = "type", color = dataTypeColor }
NagatoKeys["RaycastResult"] = { type = "type", color = dataTypeColor }
NagatoKeys["Rect"] = { type = "type", color = dataTypeColor }
NagatoKeys["Region3"] = { type = "type", color = dataTypeColor }
NagatoKeys["Region3int16"] = { type = "type", color = dataTypeColor }
NagatoKeys["RotationCurveKey"] = { type = "type", color = dataTypeColor }
NagatoKeys["SharedTable"] = { type = "type", color = dataTypeColor }
NagatoKeys["TweenInfo"] = { type = "type", color = dataTypeColor }
NagatoKeys["UDim"] = { type = "type", color = dataTypeColor }
NagatoKeys["UDim2"] = { type = "type", color = dataTypeColor }
NagatoKeys["Vector2"] = { type = "type", color = dataTypeColor }
NagatoKeys["Vector2int16"] = { type = "type", color = dataTypeColor }
NagatoKeys["Vector3"] = { type = "type", color = dataTypeColor }
NagatoKeys["Vector3int16"] = { type = "type", color = dataTypeColor }
NagatoKeys["any"] = { type = "type", color = dataTypeColor }
NagatoKeys["boolean"] = { type = "type", color = dataTypeColor }
NagatoKeys["never"] = { type = "type", color = dataTypeColor }
NagatoKeys["number"] = { type = "type", color = dataTypeColor }
NagatoKeys["thread"] = { type = "type", color = dataTypeColor }
NagatoKeys["unknown"] = { type = "type", color = dataTypeColor }
NagatoKeys["userdata"] = { type = "type", color = dataTypeColor }
NagatoKeys["void"] = { type = "type", color = dataTypeColor }

-- ── metamethod ────────────────────────────────────
local metamethodColor = Color3.fromRGB(200, 175, 235)
NagatoKeys["__add"] = { type = "metamethod", color = metamethodColor }
NagatoKeys["__band"] = { type = "metamethod", color = metamethodColor }
NagatoKeys["__bnot"] = { type = "metamethod", color = metamethodColor }
NagatoKeys["__bor"] = { type = "metamethod", color = metamethodColor }
NagatoKeys["__bxor"] = { type = "metamethod", color = metamethodColor }
NagatoKeys["__call"] = { type = "metamethod", color = metamethodColor }
NagatoKeys["__concat"] = { type = "metamethod", color = metamethodColor }
NagatoKeys["__div"] = { type = "metamethod", color = metamethodColor }
NagatoKeys["__eq"] = { type = "metamethod", color = metamethodColor }
NagatoKeys["__idiv"] = { type = "metamethod", color = metamethodColor }
NagatoKeys["__index"] = { type = "metamethod", color = metamethodColor }
NagatoKeys["__iter"] = { type = "metamethod", color = metamethodColor }
NagatoKeys["__le"] = { type = "metamethod", color = metamethodColor }
NagatoKeys["__len"] = { type = "metamethod", color = metamethodColor }
NagatoKeys["__lt"] = { type = "metamethod", color = metamethodColor }
NagatoKeys["__mod"] = { type = "metamethod", color = metamethodColor }
NagatoKeys["__mul"] = { type = "metamethod", color = metamethodColor }
NagatoKeys["__newindex"] = { type = "metamethod", color = metamethodColor }
NagatoKeys["__pow"] = { type = "metamethod", color = metamethodColor }
NagatoKeys["__shl"] = { type = "metamethod", color = metamethodColor }
NagatoKeys["__shr"] = { type = "metamethod", color = metamethodColor }
NagatoKeys["__sub"] = { type = "metamethod", color = metamethodColor }
NagatoKeys["__tostring"] = { type = "metamethod", color = metamethodColor }
NagatoKeys["__type"] = { type = "metamethod", color = metamethodColor }
NagatoKeys["__unm"] = { type = "metamethod", color = metamethodColor }

-- ── comment ───────────────────────────────────────
local commentColor = Color3.fromRGB(68, 62, 82)
NagatoKeys["comment_multi_close"] = { type = "comment", color = commentColor }
NagatoKeys["comment_multi_open"] = { type = "comment", color = commentColor }
NagatoKeys["comment_single"] = { type = "comment", color = commentColor }

-- ── number ────────────────────────────────────────
local numberColor = Color3.fromRGB(210, 185, 240)
NagatoKeys["num_binary"] = { type = "number", color = numberColor }
NagatoKeys["num_exp"] = { type = "number", color = numberColor }
NagatoKeys["num_float"] = { type = "number", color = numberColor }
NagatoKeys["num_hex"] = { type = "number", color = numberColor }
NagatoKeys["num_inf"] = { type = "number", color = numberColor }
NagatoKeys["num_integer"] = { type = "number", color = numberColor }
NagatoKeys["num_nan"] = { type = "number", color = numberColor }
NagatoKeys["num_separator"] = { type = "number", color = numberColor }

return NagatoKeys