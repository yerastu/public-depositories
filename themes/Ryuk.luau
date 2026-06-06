local RyukKeys = {}
function GetData()
	local Config = {
		Name = "LuaU",
		Version = "1.0.0",
		Author = "Yera"
	}
end

-- ── keyword ───────────────────────────────────────
local keywordColor = Color3.fromRGB(195, 45, 45)
RyukKeys["and"] = { type = "keyword", color = keywordColor }
RyukKeys["do"] = { type = "keyword", color = keywordColor }
RyukKeys["end"] = { type = "keyword", color = keywordColor }
RyukKeys["export"] = { type = "keyword", color = keywordColor }
RyukKeys["function"] = { type = "keyword", color = keywordColor }
RyukKeys["in"] = { type = "keyword", color = keywordColor }
RyukKeys["inf"] = { type = "keyword", color = keywordColor }
RyukKeys["local"] = { type = "keyword", color = keywordColor }
RyukKeys["not"] = { type = "keyword", color = keywordColor }
RyukKeys["or"] = { type = "keyword", color = keywordColor }
RyukKeys["then"] = { type = "keyword", color = keywordColor }
RyukKeys["type"] = { type = "keyword", color = keywordColor }
RyukKeys["self"] = { type = "keyword", color = keywordColor }

-- ── flow ──────────────────────────────────────────
local flowColor = Color3.fromRGB(195, 45, 45)
RyukKeys["break"] = { type = "flow", color = flowColor }
RyukKeys["continue"] = { type = "flow", color = flowColor }
RyukKeys["else"] = { type = "flow", color = flowColor }
RyukKeys["elseif"] = { type = "flow", color = flowColor }
RyukKeys["for"] = { type = "flow", color = flowColor }
RyukKeys["if"] = { type = "flow", color = flowColor }
RyukKeys["repeat"] = { type = "flow", color = flowColor }
RyukKeys["return"] = { type = "flow", color = flowColor }
RyukKeys["until"] = { type = "flow", color = flowColor }
RyukKeys["while"] = { type = "flow", color = flowColor }

-- ── literal ───────────────────────────────────────
local literalColor = Color3.fromRGB(225, 210, 195)
RyukKeys["false"] = { type = "literal", color = literalColor }
RyukKeys["nil"] = { type = "literal", color = literalColor }
RyukKeys["true"] = { type = "literal", color = literalColor }

-- ── operator ──────────────────────────────────────
local operatorColor = Color3.fromRGB(148, 143, 140)
RyukKeys["op_add"] = { type = "operator", color = operatorColor }
RyukKeys["op_assign"] = { type = "operator", color = operatorColor }
RyukKeys["op_concat"] = { type = "operator", color = operatorColor }
RyukKeys["op_div"] = { type = "operator", color = operatorColor }
RyukKeys["op_eq"] = { type = "operator", color = operatorColor }
RyukKeys["op_floordiv"] = { type = "operator", color = operatorColor }
RyukKeys["op_ge"] = { type = "operator", color = operatorColor }
RyukKeys["op_gt"] = { type = "operator", color = operatorColor }
RyukKeys["op_le"] = { type = "operator", color = operatorColor }
RyukKeys["op_len"] = { type = "operator", color = operatorColor }
RyukKeys["op_lt"] = { type = "operator", color = operatorColor }
RyukKeys["op_mod"] = { type = "operator", color = operatorColor }
RyukKeys["op_mul"] = { type = "operator", color = operatorColor }
RyukKeys["op_neq"] = { type = "operator", color = operatorColor }
RyukKeys["op_pow"] = { type = "operator", color = operatorColor }
RyukKeys["op_sub"] = { type = "operator", color = operatorColor }
RyukKeys["op_unm"] = { type = "operator", color = operatorColor }

-- ── type_annotation ───────────────────────────────
local typeColor = Color3.fromRGB(160, 25, 25)
RyukKeys["op_ampersand"] = { type = "type_annotation", color = typeColor }
RyukKeys["op_arrow"] = { type = "type_annotation", color = typeColor }
RyukKeys["op_colon"] = { type = "type_annotation", color = typeColor }
RyukKeys["op_pipe"] = { type = "type_annotation", color = typeColor }
RyukKeys["op_question"] = { type = "type_annotation", color = typeColor }
RyukKeys["op_typecast"] = { type = "type_annotation", color = typeColor }
RyukKeys["typeof"] = { type = "type_annotation", color = typeColor }

-- ── builtin ───────────────────────────────────────
local builtinColor = Color3.fromRGB(210, 60, 60)
RyukKeys["assert"] = { type = "builtin", color = builtinColor }
RyukKeys["collectgarbage"] = { type = "builtin", color = builtinColor }
RyukKeys["error"] = { type = "builtin", color = builtinColor }
RyukKeys["gcinfo"] = { type = "builtin", color = builtinColor }
RyukKeys["getfenv"] = { type = "builtin", color = builtinColor }
RyukKeys["getmetatable"] = { type = "builtin", color = builtinColor }
RyukKeys["ipairs"] = { type = "builtin", color = builtinColor }
RyukKeys["loadstring"] = { type = "builtin", color = builtinColor }
RyukKeys["newproxy"] = { type = "builtin", color = builtinColor }
RyukKeys["next"] = { type = "builtin", color = builtinColor }
RyukKeys["pairs"] = { type = "builtin", color = builtinColor }
RyukKeys["pcall"] = { type = "builtin", color = builtinColor }
RyukKeys["print"] = { type = "builtin", color = builtinColor }
RyukKeys["rawequal"] = { type = "builtin", color = builtinColor }
RyukKeys["rawget"] = { type = "builtin", color = builtinColor }
RyukKeys["rawlen"] = { type = "builtin", color = builtinColor }
RyukKeys["rawset"] = { type = "builtin", color = builtinColor }
RyukKeys["require"] = { type = "builtin", color = builtinColor }
RyukKeys["select"] = { type = "builtin", color = builtinColor }
RyukKeys["setfenv"] = { type = "builtin", color = builtinColor }
RyukKeys["setmetatable"] = { type = "builtin", color = builtinColor }
RyukKeys["tonumber"] = { type = "builtin", color = builtinColor }
RyukKeys["tostring"] = { type = "builtin", color = builtinColor }
RyukKeys["unpack"] = { type = "builtin", color = builtinColor }
RyukKeys["warn"] = { type = "builtin", color = builtinColor }
RyukKeys["xpcall"] = { type = "builtin", color = builtinColor }

-- ── global ────────────────────────────────────────
local globalColor = Color3.fromRGB(180, 38, 38)
RyukKeys["_G"] = { type = "global", color = globalColor }
RyukKeys["_VERSION"] = { type = "global", color = globalColor }
RyukKeys["bit32"] = { type = "global", color = globalColor }
RyukKeys["buffer"] = { type = "global", color = globalColor }
RyukKeys["coroutine"] = { type = "global", color = globalColor }
RyukKeys["debug"] = { type = "global", color = globalColor }
RyukKeys["game"] = { type = "global", color = globalColor }
RyukKeys["math"] = { type = "global", color = globalColor }
RyukKeys["os"] = { type = "global", color = globalColor }
RyukKeys["plugin"] = { type = "global", color = globalColor }
RyukKeys["script"] = { type = "global", color = globalColor }
RyukKeys["shared"] = { type = "global", color = globalColor }
RyukKeys["string"] = { type = "global", color = globalColor }
RyukKeys["table"] = { type = "global", color = globalColor }
RyukKeys["task"] = { type = "global", color = globalColor }
RyukKeys["utf8"] = { type = "global", color = globalColor }
RyukKeys["vector"] = { type = "global", color = globalColor }
RyukKeys["workspace"] = { type = "global", color = globalColor }

-- ── type ──────────────────────────────────────────
local dataTypeColor = Color3.fromRGB(160, 25, 25)
RyukKeys["Axes"] = { type = "type", color = dataTypeColor }
RyukKeys["BrickColor"] = { type = "type", color = dataTypeColor }
RyukKeys["CFrame"] = { type = "type", color = dataTypeColor }
RyukKeys["CatalogSearchParams"] = { type = "type", color = dataTypeColor }
RyukKeys["Color3"] = { type = "type", color = dataTypeColor }
RyukKeys["ColorSequence"] = { type = "type", color = dataTypeColor }
RyukKeys["ColorSequenceKeypoint"] = { type = "type", color = dataTypeColor }
RyukKeys["DateTime"] = { type = "type", color = dataTypeColor }
RyukKeys["DockWidgetPluginGuiInfo"] = { type = "type", color = dataTypeColor }
RyukKeys["Enum"] = { type = "type", color = dataTypeColor }
RyukKeys["EnumItem"] = { type = "type", color = dataTypeColor }
RyukKeys["Faces"] = { type = "type", color = dataTypeColor }
RyukKeys["FloatCurveKey"] = { type = "type", color = dataTypeColor }
RyukKeys["Font"] = { type = "type", color = dataTypeColor }
RyukKeys["Instance"] = { type = "type", color = dataTypeColor }
RyukKeys["NumberRange"] = { type = "type", color = dataTypeColor }
RyukKeys["NumberSequence"] = { type = "type", color = dataTypeColor }
RyukKeys["NumberSequenceKeypoint"] = { type = "type", color = dataTypeColor }
RyukKeys["OverlapParams"] = { type = "type", color = dataTypeColor }
RyukKeys["PathWaypoint"] = { type = "type", color = dataTypeColor }
RyukKeys["PhysicalProperties"] = { type = "type", color = dataTypeColor }
RyukKeys["Ray"] = { type = "type", color = dataTypeColor }
RyukKeys["RaycastParams"] = { type = "type", color = dataTypeColor }
RyukKeys["RaycastResult"] = { type = "type", color = dataTypeColor }
RyukKeys["Rect"] = { type = "type", color = dataTypeColor }
RyukKeys["Region3"] = { type = "type", color = dataTypeColor }
RyukKeys["Region3int16"] = { type = "type", color = dataTypeColor }
RyukKeys["RotationCurveKey"] = { type = "type", color = dataTypeColor }
RyukKeys["SharedTable"] = { type = "type", color = dataTypeColor }
RyukKeys["TweenInfo"] = { type = "type", color = dataTypeColor }
RyukKeys["UDim"] = { type = "type", color = dataTypeColor }
RyukKeys["UDim2"] = { type = "type", color = dataTypeColor }
RyukKeys["Vector2"] = { type = "type", color = dataTypeColor }
RyukKeys["Vector2int16"] = { type = "type", color = dataTypeColor }
RyukKeys["Vector3"] = { type = "type", color = dataTypeColor }
RyukKeys["Vector3int16"] = { type = "type", color = dataTypeColor }
RyukKeys["any"] = { type = "type", color = dataTypeColor }
RyukKeys["boolean"] = { type = "type", color = dataTypeColor }
RyukKeys["never"] = { type = "type", color = dataTypeColor }
RyukKeys["number"] = { type = "type", color = dataTypeColor }
RyukKeys["thread"] = { type = "type", color = dataTypeColor }
RyukKeys["unknown"] = { type = "type", color = dataTypeColor }
RyukKeys["userdata"] = { type = "type", color = dataTypeColor }
RyukKeys["void"] = { type = "type", color = dataTypeColor }

-- ── metamethod ────────────────────────────────────
local metamethodColor = Color3.fromRGB(220, 205, 190)
RyukKeys["__add"] = { type = "metamethod", color = metamethodColor }
RyukKeys["__band"] = { type = "metamethod", color = metamethodColor }
RyukKeys["__bnot"] = { type = "metamethod", color = metamethodColor }
RyukKeys["__bor"] = { type = "metamethod", color = metamethodColor }
RyukKeys["__bxor"] = { type = "metamethod", color = metamethodColor }
RyukKeys["__call"] = { type = "metamethod", color = metamethodColor }
RyukKeys["__concat"] = { type = "metamethod", color = metamethodColor }
RyukKeys["__div"] = { type = "metamethod", color = metamethodColor }
RyukKeys["__eq"] = { type = "metamethod", color = metamethodColor }
RyukKeys["__idiv"] = { type = "metamethod", color = metamethodColor }
RyukKeys["__index"] = { type = "metamethod", color = metamethodColor }
RyukKeys["__iter"] = { type = "metamethod", color = metamethodColor }
RyukKeys["__le"] = { type = "metamethod", color = metamethodColor }
RyukKeys["__len"] = { type = "metamethod", color = metamethodColor }
RyukKeys["__lt"] = { type = "metamethod", color = metamethodColor }
RyukKeys["__mod"] = { type = "metamethod", color = metamethodColor }
RyukKeys["__mul"] = { type = "metamethod", color = metamethodColor }
RyukKeys["__newindex"] = { type = "metamethod", color = metamethodColor }
RyukKeys["__pow"] = { type = "metamethod", color = metamethodColor }
RyukKeys["__shl"] = { type = "metamethod", color = metamethodColor }
RyukKeys["__shr"] = { type = "metamethod", color = metamethodColor }
RyukKeys["__sub"] = { type = "metamethod", color = metamethodColor }
RyukKeys["__tostring"] = { type = "metamethod", color = metamethodColor }
RyukKeys["__type"] = { type = "metamethod", color = metamethodColor }
RyukKeys["__unm"] = { type = "metamethod", color = metamethodColor }

-- ── comment ───────────────────────────────────────
local commentColor = Color3.fromRGB(60, 52, 52)
RyukKeys["comment_multi_close"] = { type = "comment", color = commentColor }
RyukKeys["comment_multi_open"] = { type = "comment", color = commentColor }
RyukKeys["comment_single"] = { type = "comment", color = commentColor }

-- ── number ────────────────────────────────────────
local numberColor = Color3.fromRGB(225, 210, 195)
RyukKeys["num_binary"] = { type = "number", color = numberColor }
RyukKeys["num_exp"] = { type = "number", color = numberColor }
RyukKeys["num_float"] = { type = "number", color = numberColor }
RyukKeys["num_hex"] = { type = "number", color = numberColor }
RyukKeys["num_inf"] = { type = "number", color = numberColor }
RyukKeys["num_integer"] = { type = "number", color = numberColor }
RyukKeys["num_nan"] = { type = "number", color = numberColor }
RyukKeys["num_separator"] = { type = "number", color = numberColor }

return RyukKeys