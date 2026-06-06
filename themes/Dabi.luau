local DabiKeys = {}
function GetData()
	local Config = {
		Name = "LuaU",
		Version = "1.0.0",
		Author = "Yera"
	}
end

-- ── keyword ───────────────────────────────────────
local keywordColor = Color3.fromRGB(55, 175, 230)
DabiKeys["and"] = { type = "keyword", color = keywordColor }
DabiKeys["do"] = { type = "keyword", color = keywordColor }
DabiKeys["end"] = { type = "keyword", color = keywordColor }
DabiKeys["export"] = { type = "keyword", color = keywordColor }
DabiKeys["function"] = { type = "keyword", color = keywordColor }
DabiKeys["in"] = { type = "keyword", color = keywordColor }
DabiKeys["inf"] = { type = "keyword", color = keywordColor }
DabiKeys["local"] = { type = "keyword", color = keywordColor }
DabiKeys["not"] = { type = "keyword", color = keywordColor }
DabiKeys["or"] = { type = "keyword", color = keywordColor }
DabiKeys["then"] = { type = "keyword", color = keywordColor }
DabiKeys["type"] = { type = "keyword", color = keywordColor }
DabiKeys["self"] = { type = "keyword", color = keywordColor }

-- ── flow ──────────────────────────────────────────
local flowColor = Color3.fromRGB(55, 175, 230)
DabiKeys["break"] = { type = "flow", color = flowColor }
DabiKeys["continue"] = { type = "flow", color = flowColor }
DabiKeys["else"] = { type = "flow", color = flowColor }
DabiKeys["elseif"] = { type = "flow", color = flowColor }
DabiKeys["for"] = { type = "flow", color = flowColor }
DabiKeys["if"] = { type = "flow", color = flowColor }
DabiKeys["repeat"] = { type = "flow", color = flowColor }
DabiKeys["return"] = { type = "flow", color = flowColor }
DabiKeys["until"] = { type = "flow", color = flowColor }
DabiKeys["while"] = { type = "flow", color = flowColor }

-- ── literal ───────────────────────────────────────
local literalColor = Color3.fromRGB(200, 218, 235)
DabiKeys["false"] = { type = "literal", color = literalColor }
DabiKeys["nil"] = { type = "literal", color = literalColor }
DabiKeys["true"] = { type = "literal", color = literalColor }

-- ── operator ──────────────────────────────────────
local operatorColor = Color3.fromRGB(155, 162, 172)
DabiKeys["op_add"] = { type = "operator", color = operatorColor }
DabiKeys["op_assign"] = { type = "operator", color = operatorColor }
DabiKeys["op_concat"] = { type = "operator", color = operatorColor }
DabiKeys["op_div"] = { type = "operator", color = operatorColor }
DabiKeys["op_eq"] = { type = "operator", color = operatorColor }
DabiKeys["op_floordiv"] = { type = "operator", color = operatorColor }
DabiKeys["op_ge"] = { type = "operator", color = operatorColor }
DabiKeys["op_gt"] = { type = "operator", color = operatorColor }
DabiKeys["op_le"] = { type = "operator", color = operatorColor }
DabiKeys["op_len"] = { type = "operator", color = operatorColor }
DabiKeys["op_lt"] = { type = "operator", color = operatorColor }
DabiKeys["op_mod"] = { type = "operator", color = operatorColor }
DabiKeys["op_mul"] = { type = "operator", color = operatorColor }
DabiKeys["op_neq"] = { type = "operator", color = operatorColor }
DabiKeys["op_pow"] = { type = "operator", color = operatorColor }
DabiKeys["op_sub"] = { type = "operator", color = operatorColor }
DabiKeys["op_unm"] = { type = "operator", color = operatorColor }

-- ── type_annotation ───────────────────────────────
local typeColor = Color3.fromRGB(30, 145, 205)
DabiKeys["op_ampersand"] = { type = "type_annotation", color = typeColor }
DabiKeys["op_arrow"] = { type = "type_annotation", color = typeColor }
DabiKeys["op_colon"] = { type = "type_annotation", color = typeColor }
DabiKeys["op_pipe"] = { type = "type_annotation", color = typeColor }
DabiKeys["op_question"] = { type = "type_annotation", color = typeColor }
DabiKeys["op_typecast"] = { type = "type_annotation", color = typeColor }
DabiKeys["typeof"] = { type = "type_annotation", color = typeColor }

-- ── builtin ───────────────────────────────────────
local builtinColor = Color3.fromRGB(70, 188, 238)
DabiKeys["assert"] = { type = "builtin", color = builtinColor }
DabiKeys["collectgarbage"] = { type = "builtin", color = builtinColor }
DabiKeys["error"] = { type = "builtin", color = builtinColor }
DabiKeys["gcinfo"] = { type = "builtin", color = builtinColor }
DabiKeys["getfenv"] = { type = "builtin", color = builtinColor }
DabiKeys["getmetatable"] = { type = "builtin", color = builtinColor }
DabiKeys["ipairs"] = { type = "builtin", color = builtinColor }
DabiKeys["loadstring"] = { type = "builtin", color = builtinColor }
DabiKeys["newproxy"] = { type = "builtin", color = builtinColor }
DabiKeys["next"] = { type = "builtin", color = builtinColor }
DabiKeys["pairs"] = { type = "builtin", color = builtinColor }
DabiKeys["pcall"] = { type = "builtin", color = builtinColor }
DabiKeys["print"] = { type = "builtin", color = builtinColor }
DabiKeys["rawequal"] = { type = "builtin", color = builtinColor }
DabiKeys["rawget"] = { type = "builtin", color = builtinColor }
DabiKeys["rawlen"] = { type = "builtin", color = builtinColor }
DabiKeys["rawset"] = { type = "builtin", color = builtinColor }
DabiKeys["require"] = { type = "builtin", color = builtinColor }
DabiKeys["select"] = { type = "builtin", color = builtinColor }
DabiKeys["setfenv"] = { type = "builtin", color = builtinColor }
DabiKeys["setmetatable"] = { type = "builtin", color = builtinColor }
DabiKeys["tonumber"] = { type = "builtin", color = builtinColor }
DabiKeys["tostring"] = { type = "builtin", color = builtinColor }
DabiKeys["unpack"] = { type = "builtin", color = builtinColor }
DabiKeys["warn"] = { type = "builtin", color = builtinColor }
DabiKeys["xpcall"] = { type = "builtin", color = builtinColor }

-- ── global ────────────────────────────────────────
local globalColor = Color3.fromRGB(45, 162, 220)
DabiKeys["_G"] = { type = "global", color = globalColor }
DabiKeys["_VERSION"] = { type = "global", color = globalColor }
DabiKeys["bit32"] = { type = "global", color = globalColor }
DabiKeys["buffer"] = { type = "global", color = globalColor }
DabiKeys["coroutine"] = { type = "global", color = globalColor }
DabiKeys["debug"] = { type = "global", color = globalColor }
DabiKeys["game"] = { type = "global", color = globalColor }
DabiKeys["math"] = { type = "global", color = globalColor }
DabiKeys["os"] = { type = "global", color = globalColor }
DabiKeys["plugin"] = { type = "global", color = globalColor }
DabiKeys["script"] = { type = "global", color = globalColor }
DabiKeys["shared"] = { type = "global", color = globalColor }
DabiKeys["string"] = { type = "global", color = globalColor }
DabiKeys["table"] = { type = "global", color = globalColor }
DabiKeys["task"] = { type = "global", color = globalColor }
DabiKeys["utf8"] = { type = "global", color = globalColor }
DabiKeys["vector"] = { type = "global", color = globalColor }
DabiKeys["workspace"] = { type = "global", color = globalColor }

-- ── type ──────────────────────────────────────────
local dataTypeColor = Color3.fromRGB(30, 145, 205)
DabiKeys["Axes"] = { type = "type", color = dataTypeColor }
DabiKeys["BrickColor"] = { type = "type", color = dataTypeColor }
DabiKeys["CFrame"] = { type = "type", color = dataTypeColor }
DabiKeys["CatalogSearchParams"] = { type = "type", color = dataTypeColor }
DabiKeys["Color3"] = { type = "type", color = dataTypeColor }
DabiKeys["ColorSequence"] = { type = "type", color = dataTypeColor }
DabiKeys["ColorSequenceKeypoint"] = { type = "type", color = dataTypeColor }
DabiKeys["DateTime"] = { type = "type", color = dataTypeColor }
DabiKeys["DockWidgetPluginGuiInfo"] = { type = "type", color = dataTypeColor }
DabiKeys["Enum"] = { type = "type", color = dataTypeColor }
DabiKeys["EnumItem"] = { type = "type", color = dataTypeColor }
DabiKeys["Faces"] = { type = "type", color = dataTypeColor }
DabiKeys["FloatCurveKey"] = { type = "type", color = dataTypeColor }
DabiKeys["Font"] = { type = "type", color = dataTypeColor }
DabiKeys["Instance"] = { type = "type", color = dataTypeColor }
DabiKeys["NumberRange"] = { type = "type", color = dataTypeColor }
DabiKeys["NumberSequence"] = { type = "type", color = dataTypeColor }
DabiKeys["NumberSequenceKeypoint"] = { type = "type", color = dataTypeColor }
DabiKeys["OverlapParams"] = { type = "type", color = dataTypeColor }
DabiKeys["PathWaypoint"] = { type = "type", color = dataTypeColor }
DabiKeys["PhysicalProperties"] = { type = "type", color = dataTypeColor }
DabiKeys["Ray"] = { type = "type", color = dataTypeColor }
DabiKeys["RaycastParams"] = { type = "type", color = dataTypeColor }
DabiKeys["RaycastResult"] = { type = "type", color = dataTypeColor }
DabiKeys["Rect"] = { type = "type", color = dataTypeColor }
DabiKeys["Region3"] = { type = "type", color = dataTypeColor }
DabiKeys["Region3int16"] = { type = "type", color = dataTypeColor }
DabiKeys["RotationCurveKey"] = { type = "type", color = dataTypeColor }
DabiKeys["SharedTable"] = { type = "type", color = dataTypeColor }
DabiKeys["TweenInfo"] = { type = "type", color = dataTypeColor }
DabiKeys["UDim"] = { type = "type", color = dataTypeColor }
DabiKeys["UDim2"] = { type = "type", color = dataTypeColor }
DabiKeys["Vector2"] = { type = "type", color = dataTypeColor }
DabiKeys["Vector2int16"] = { type = "type", color = dataTypeColor }
DabiKeys["Vector3"] = { type = "type", color = dataTypeColor }
DabiKeys["Vector3int16"] = { type = "type", color = dataTypeColor }
DabiKeys["any"] = { type = "type", color = dataTypeColor }
DabiKeys["boolean"] = { type = "type", color = dataTypeColor }
DabiKeys["never"] = { type = "type", color = dataTypeColor }
DabiKeys["number"] = { type = "type", color = dataTypeColor }
DabiKeys["thread"] = { type = "type", color = dataTypeColor }
DabiKeys["unknown"] = { type = "type", color = dataTypeColor }
DabiKeys["userdata"] = { type = "type", color = dataTypeColor }
DabiKeys["void"] = { type = "type", color = dataTypeColor }

-- ── metamethod ────────────────────────────────────
local metamethodColor = Color3.fromRGB(192, 212, 230)
DabiKeys["__add"] = { type = "metamethod", color = metamethodColor }
DabiKeys["__band"] = { type = "metamethod", color = metamethodColor }
DabiKeys["__bnot"] = { type = "metamethod", color = metamethodColor }
DabiKeys["__bor"] = { type = "metamethod", color = metamethodColor }
DabiKeys["__bxor"] = { type = "metamethod", color = metamethodColor }
DabiKeys["__call"] = { type = "metamethod", color = metamethodColor }
DabiKeys["__concat"] = { type = "metamethod", color = metamethodColor }
DabiKeys["__div"] = { type = "metamethod", color = metamethodColor }
DabiKeys["__eq"] = { type = "metamethod", color = metamethodColor }
DabiKeys["__idiv"] = { type = "metamethod", color = metamethodColor }
DabiKeys["__index"] = { type = "metamethod", color = metamethodColor }
DabiKeys["__iter"] = { type = "metamethod", color = metamethodColor }
DabiKeys["__le"] = { type = "metamethod", color = metamethodColor }
DabiKeys["__len"] = { type = "metamethod", color = metamethodColor }
DabiKeys["__lt"] = { type = "metamethod", color = metamethodColor }
DabiKeys["__mod"] = { type = "metamethod", color = metamethodColor }
DabiKeys["__mul"] = { type = "metamethod", color = metamethodColor }
DabiKeys["__newindex"] = { type = "metamethod", color = metamethodColor }
DabiKeys["__pow"] = { type = "metamethod", color = metamethodColor }
DabiKeys["__shl"] = { type = "metamethod", color = metamethodColor }
DabiKeys["__shr"] = { type = "metamethod", color = metamethodColor }
DabiKeys["__sub"] = { type = "metamethod", color = metamethodColor }
DabiKeys["__tostring"] = { type = "metamethod", color = metamethodColor }
DabiKeys["__type"] = { type = "metamethod", color = metamethodColor }
DabiKeys["__unm"] = { type = "metamethod", color = metamethodColor }

-- ── comment ───────────────────────────────────────
local commentColor = Color3.fromRGB(58, 68, 80)
DabiKeys["comment_multi_close"] = { type = "comment", color = commentColor }
DabiKeys["comment_multi_open"] = { type = "comment", color = commentColor }
DabiKeys["comment_single"] = { type = "comment", color = commentColor }

-- ── number ────────────────────────────────────────
local numberColor = Color3.fromRGB(200, 218, 235)
DabiKeys["num_binary"] = { type = "number", color = numberColor }
DabiKeys["num_exp"] = { type = "number", color = numberColor }
DabiKeys["num_float"] = { type = "number", color = numberColor }
DabiKeys["num_hex"] = { type = "number", color = numberColor }
DabiKeys["num_inf"] = { type = "number", color = numberColor }
DabiKeys["num_integer"] = { type = "number", color = numberColor }
DabiKeys["num_nan"] = { type = "number", color = numberColor }
DabiKeys["num_separator"] = { type = "number", color = numberColor }

return DabiKeys