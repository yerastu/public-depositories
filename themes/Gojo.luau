local GojoKeys = {}
function GetData()
	local Config = {
		Name = "LuaU",
		Version = "1.0.0",
		Author = "Yera"
	}
end

-- ── keyword ───────────────────────────────────────
local keywordColor = Color3.fromRGB(120, 210, 255)
GojoKeys["and"] = { type = "keyword", color = keywordColor }
GojoKeys["do"] = { type = "keyword", color = keywordColor }
GojoKeys["end"] = { type = "keyword", color = keywordColor }
GojoKeys["export"] = { type = "keyword", color = keywordColor }
GojoKeys["function"] = { type = "keyword", color = keywordColor }
GojoKeys["in"] = { type = "keyword", color = keywordColor }
GojoKeys["inf"] = { type = "keyword", color = keywordColor }
GojoKeys["local"] = { type = "keyword", color = keywordColor }
GojoKeys["not"] = { type = "keyword", color = keywordColor }
GojoKeys["or"] = { type = "keyword", color = keywordColor }
GojoKeys["then"] = { type = "keyword", color = keywordColor }
GojoKeys["type"] = { type = "keyword", color = keywordColor }
GojoKeys["self"] = { type = "keyword", color = keywordColor }

-- ── flow ──────────────────────────────────────────
local flowColor = Color3.fromRGB(120, 210, 255)
GojoKeys["break"] = { type = "flow", color = flowColor }
GojoKeys["continue"] = { type = "flow", color = flowColor }
GojoKeys["else"] = { type = "flow", color = flowColor }
GojoKeys["elseif"] = { type = "flow", color = flowColor }
GojoKeys["for"] = { type = "flow", color = flowColor }
GojoKeys["if"] = { type = "flow", color = flowColor }
GojoKeys["repeat"] = { type = "flow", color = flowColor }
GojoKeys["return"] = { type = "flow", color = flowColor }
GojoKeys["until"] = { type = "flow", color = flowColor }
GojoKeys["while"] = { type = "flow", color = flowColor }

-- ── literal ───────────────────────────────────────
local literalColor = Color3.fromRGB(230, 245, 255)
GojoKeys["false"] = { type = "literal", color = literalColor }
GojoKeys["nil"] = { type = "literal", color = literalColor }
GojoKeys["true"] = { type = "literal", color = literalColor }

-- ── operator ──────────────────────────────────────
local operatorColor = Color3.fromRGB(185, 195, 215)
GojoKeys["op_add"] = { type = "operator", color = operatorColor }
GojoKeys["op_assign"] = { type = "operator", color = operatorColor }
GojoKeys["op_concat"] = { type = "operator", color = operatorColor }
GojoKeys["op_div"] = { type = "operator", color = operatorColor }
GojoKeys["op_eq"] = { type = "operator", color = operatorColor }
GojoKeys["op_floordiv"] = { type = "operator", color = operatorColor }
GojoKeys["op_ge"] = { type = "operator", color = operatorColor }
GojoKeys["op_gt"] = { type = "operator", color = operatorColor }
GojoKeys["op_le"] = { type = "operator", color = operatorColor }
GojoKeys["op_len"] = { type = "operator", color = operatorColor }
GojoKeys["op_lt"] = { type = "operator", color = operatorColor }
GojoKeys["op_mod"] = { type = "operator", color = operatorColor }
GojoKeys["op_mul"] = { type = "operator", color = operatorColor }
GojoKeys["op_neq"] = { type = "operator", color = operatorColor }
GojoKeys["op_pow"] = { type = "operator", color = operatorColor }
GojoKeys["op_sub"] = { type = "operator", color = operatorColor }
GojoKeys["op_unm"] = { type = "operator", color = operatorColor }

-- ── type_annotation ───────────────────────────────
local typeColor = Color3.fromRGB(80, 175, 245)
GojoKeys["op_ampersand"] = { type = "type_annotation", color = typeColor }
GojoKeys["op_arrow"] = { type = "type_annotation", color = typeColor }
GojoKeys["op_colon"] = { type = "type_annotation", color = typeColor }
GojoKeys["op_pipe"] = { type = "type_annotation", color = typeColor }
GojoKeys["op_question"] = { type = "type_annotation", color = typeColor }
GojoKeys["op_typecast"] = { type = "type_annotation", color = typeColor }
GojoKeys["typeof"] = { type = "type_annotation", color = typeColor }

-- ── builtin ───────────────────────────────────────
local builtinColor = Color3.fromRGB(140, 220, 255)
GojoKeys["assert"] = { type = "builtin", color = builtinColor }
GojoKeys["collectgarbage"] = { type = "builtin", color = builtinColor }
GojoKeys["error"] = { type = "builtin", color = builtinColor }
GojoKeys["gcinfo"] = { type = "builtin", color = builtinColor }
GojoKeys["getfenv"] = { type = "builtin", color = builtinColor }
GojoKeys["getmetatable"] = { type = "builtin", color = builtinColor }
GojoKeys["ipairs"] = { type = "builtin", color = builtinColor }
GojoKeys["loadstring"] = { type = "builtin", color = builtinColor }
GojoKeys["newproxy"] = { type = "builtin", color = builtinColor }
GojoKeys["next"] = { type = "builtin", color = builtinColor }
GojoKeys["pairs"] = { type = "builtin", color = builtinColor }
GojoKeys["pcall"] = { type = "builtin", color = builtinColor }
GojoKeys["print"] = { type = "builtin", color = builtinColor }
GojoKeys["rawequal"] = { type = "builtin", color = builtinColor }
GojoKeys["rawget"] = { type = "builtin", color = builtinColor }
GojoKeys["rawlen"] = { type = "builtin", color = builtinColor }
GojoKeys["rawset"] = { type = "builtin", color = builtinColor }
GojoKeys["require"] = { type = "builtin", color = builtinColor }
GojoKeys["select"] = { type = "builtin", color = builtinColor }
GojoKeys["setfenv"] = { type = "builtin", color = builtinColor }
GojoKeys["setmetatable"] = { type = "builtin", color = builtinColor }
GojoKeys["tonumber"] = { type = "builtin", color = builtinColor }
GojoKeys["tostring"] = { type = "builtin", color = builtinColor }
GojoKeys["unpack"] = { type = "builtin", color = builtinColor }
GojoKeys["warn"] = { type = "builtin", color = builtinColor }
GojoKeys["xpcall"] = { type = "builtin", color = builtinColor }

-- ── global ────────────────────────────────────────
local globalColor = Color3.fromRGB(105, 200, 255)
GojoKeys["_G"] = { type = "global", color = globalColor }
GojoKeys["_VERSION"] = { type = "global", color = globalColor }
GojoKeys["bit32"] = { type = "global", color = globalColor }
GojoKeys["buffer"] = { type = "global", color = globalColor }
GojoKeys["coroutine"] = { type = "global", color = globalColor }
GojoKeys["debug"] = { type = "global", color = globalColor }
GojoKeys["game"] = { type = "global", color = globalColor }
GojoKeys["math"] = { type = "global", color = globalColor }
GojoKeys["os"] = { type = "global", color = globalColor }
GojoKeys["plugin"] = { type = "global", color = globalColor }
GojoKeys["script"] = { type = "global", color = globalColor }
GojoKeys["shared"] = { type = "global", color = globalColor }
GojoKeys["string"] = { type = "global", color = globalColor }
GojoKeys["table"] = { type = "global", color = globalColor }
GojoKeys["task"] = { type = "global", color = globalColor }
GojoKeys["utf8"] = { type = "global", color = globalColor }
GojoKeys["vector"] = { type = "global", color = globalColor }
GojoKeys["workspace"] = { type = "global", color = globalColor }

-- ── type ──────────────────────────────────────────
local dataTypeColor = Color3.fromRGB(80, 175, 245)
GojoKeys["Axes"] = { type = "type", color = dataTypeColor }
GojoKeys["BrickColor"] = { type = "type", color = dataTypeColor }
GojoKeys["CFrame"] = { type = "type", color = dataTypeColor }
GojoKeys["CatalogSearchParams"] = { type = "type", color = dataTypeColor }
GojoKeys["Color3"] = { type = "type", color = dataTypeColor }
GojoKeys["ColorSequence"] = { type = "type", color = dataTypeColor }
GojoKeys["ColorSequenceKeypoint"] = { type = "type", color = dataTypeColor }
GojoKeys["DateTime"] = { type = "type", color = dataTypeColor }
GojoKeys["DockWidgetPluginGuiInfo"] = { type = "type", color = dataTypeColor }
GojoKeys["Enum"] = { type = "type", color = dataTypeColor }
GojoKeys["EnumItem"] = { type = "type", color = dataTypeColor }
GojoKeys["Faces"] = { type = "type", color = dataTypeColor }
GojoKeys["FloatCurveKey"] = { type = "type", color = dataTypeColor }
GojoKeys["Font"] = { type = "type", color = dataTypeColor }
GojoKeys["Instance"] = { type = "type", color = dataTypeColor }
GojoKeys["NumberRange"] = { type = "type", color = dataTypeColor }
GojoKeys["NumberSequence"] = { type = "type", color = dataTypeColor }
GojoKeys["NumberSequenceKeypoint"] = { type = "type", color = dataTypeColor }
GojoKeys["OverlapParams"] = { type = "type", color = dataTypeColor }
GojoKeys["PathWaypoint"] = { type = "type", color = dataTypeColor }
GojoKeys["PhysicalProperties"] = { type = "type", color = dataTypeColor }
GojoKeys["Ray"] = { type = "type", color = dataTypeColor }
GojoKeys["RaycastParams"] = { type = "type", color = dataTypeColor }
GojoKeys["RaycastResult"] = { type = "type", color = dataTypeColor }
GojoKeys["Rect"] = { type = "type", color = dataTypeColor }
GojoKeys["Region3"] = { type = "type", color = dataTypeColor }
GojoKeys["Region3int16"] = { type = "type", color = dataTypeColor }
GojoKeys["RotationCurveKey"] = { type = "type", color = dataTypeColor }
GojoKeys["SharedTable"] = { type = "type", color = dataTypeColor }
GojoKeys["TweenInfo"] = { type = "type", color = dataTypeColor }
GojoKeys["UDim"] = { type = "type", color = dataTypeColor }
GojoKeys["UDim2"] = { type = "type", color = dataTypeColor }
GojoKeys["Vector2"] = { type = "type", color = dataTypeColor }
GojoKeys["Vector2int16"] = { type = "type", color = dataTypeColor }
GojoKeys["Vector3"] = { type = "type", color = dataTypeColor }
GojoKeys["Vector3int16"] = { type = "type", color = dataTypeColor }
GojoKeys["any"] = { type = "type", color = dataTypeColor }
GojoKeys["boolean"] = { type = "type", color = dataTypeColor }
GojoKeys["never"] = { type = "type", color = dataTypeColor }
GojoKeys["number"] = { type = "type", color = dataTypeColor }
GojoKeys["thread"] = { type = "type", color = dataTypeColor }
GojoKeys["unknown"] = { type = "type", color = dataTypeColor }
GojoKeys["userdata"] = { type = "type", color = dataTypeColor }
GojoKeys["void"] = { type = "type", color = dataTypeColor }

-- ── metamethod ────────────────────────────────────
local metamethodColor = Color3.fromRGB(220, 240, 255)
GojoKeys["__add"] = { type = "metamethod", color = metamethodColor }
GojoKeys["__band"] = { type = "metamethod", color = metamethodColor }
GojoKeys["__bnot"] = { type = "metamethod", color = metamethodColor }
GojoKeys["__bor"] = { type = "metamethod", color = metamethodColor }
GojoKeys["__bxor"] = { type = "metamethod", color = metamethodColor }
GojoKeys["__call"] = { type = "metamethod", color = metamethodColor }
GojoKeys["__concat"] = { type = "metamethod", color = metamethodColor }
GojoKeys["__div"] = { type = "metamethod", color = metamethodColor }
GojoKeys["__eq"] = { type = "metamethod", color = metamethodColor }
GojoKeys["__idiv"] = { type = "metamethod", color = metamethodColor }
GojoKeys["__index"] = { type = "metamethod", color = metamethodColor }
GojoKeys["__iter"] = { type = "metamethod", color = metamethodColor }
GojoKeys["__le"] = { type = "metamethod", color = metamethodColor }
GojoKeys["__len"] = { type = "metamethod", color = metamethodColor }
GojoKeys["__lt"] = { type = "metamethod", color = metamethodColor }
GojoKeys["__mod"] = { type = "metamethod", color = metamethodColor }
GojoKeys["__mul"] = { type = "metamethod", color = metamethodColor }
GojoKeys["__newindex"] = { type = "metamethod", color = metamethodColor }
GojoKeys["__pow"] = { type = "metamethod", color = metamethodColor }
GojoKeys["__shl"] = { type = "metamethod", color = metamethodColor }
GojoKeys["__shr"] = { type = "metamethod", color = metamethodColor }
GojoKeys["__sub"] = { type = "metamethod", color = metamethodColor }
GojoKeys["__tostring"] = { type = "metamethod", color = metamethodColor }
GojoKeys["__type"] = { type = "metamethod", color = metamethodColor }
GojoKeys["__unm"] = { type = "metamethod", color = metamethodColor }

-- ── comment ───────────────────────────────────────
local commentColor = Color3.fromRGB(68, 78, 100)
GojoKeys["comment_multi_close"] = { type = "comment", color = commentColor }
GojoKeys["comment_multi_open"] = { type = "comment", color = commentColor }
GojoKeys["comment_single"] = { type = "comment", color = commentColor }

-- ── number ────────────────────────────────────────
local numberColor = Color3.fromRGB(230, 245, 255)
GojoKeys["num_binary"] = { type = "number", color = numberColor }
GojoKeys["num_exp"] = { type = "number", color = numberColor }
GojoKeys["num_float"] = { type = "number", color = numberColor }
GojoKeys["num_hex"] = { type = "number", color = numberColor }
GojoKeys["num_inf"] = { type = "number", color = numberColor }
GojoKeys["num_integer"] = { type = "number", color = numberColor }
GojoKeys["num_nan"] = { type = "number", color = numberColor }
GojoKeys["num_separator"] = { type = "number", color = numberColor }

return GojoKeys