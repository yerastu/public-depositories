local KurapikaKeys = {}
function GetData()
	local Config = {
		Name = "LuaU",
		Version = "1.0.0",
		Author = "Yera"
	}
end

-- ── keyword ───────────────────────────────────────
local keywordColor = Color3.fromRGB(215, 65, 65)
KurapikaKeys["and"] = { type = "keyword", color = keywordColor }
KurapikaKeys["do"] = { type = "keyword", color = keywordColor }
KurapikaKeys["end"] = { type = "keyword", color = keywordColor }
KurapikaKeys["export"] = { type = "keyword", color = keywordColor }
KurapikaKeys["function"] = { type = "keyword", color = keywordColor }
KurapikaKeys["in"] = { type = "keyword", color = keywordColor }
KurapikaKeys["inf"] = { type = "keyword", color = keywordColor }
KurapikaKeys["local"] = { type = "keyword", color = keywordColor }
KurapikaKeys["not"] = { type = "keyword", color = keywordColor }
KurapikaKeys["or"] = { type = "keyword", color = keywordColor }
KurapikaKeys["then"] = { type = "keyword", color = keywordColor }
KurapikaKeys["type"] = { type = "keyword", color = keywordColor }
KurapikaKeys["self"] = { type = "keyword", color = keywordColor }

-- ── flow ──────────────────────────────────────────
local flowColor = Color3.fromRGB(215, 65, 65)
KurapikaKeys["break"] = { type = "flow", color = flowColor }
KurapikaKeys["continue"] = { type = "flow", color = flowColor }
KurapikaKeys["else"] = { type = "flow", color = flowColor }
KurapikaKeys["elseif"] = { type = "flow", color = flowColor }
KurapikaKeys["for"] = { type = "flow", color = flowColor }
KurapikaKeys["if"] = { type = "flow", color = flowColor }
KurapikaKeys["repeat"] = { type = "flow", color = flowColor }
KurapikaKeys["return"] = { type = "flow", color = flowColor }
KurapikaKeys["until"] = { type = "flow", color = flowColor }
KurapikaKeys["while"] = { type = "flow", color = flowColor }

-- ── literal ───────────────────────────────────────
local literalColor = Color3.fromRGB(235, 195, 90)
KurapikaKeys["false"] = { type = "literal", color = literalColor }
KurapikaKeys["nil"] = { type = "literal", color = literalColor }
KurapikaKeys["true"] = { type = "literal", color = literalColor }

-- ── operator ──────────────────────────────────────
local operatorColor = Color3.fromRGB(165, 160, 158)
KurapikaKeys["op_add"] = { type = "operator", color = operatorColor }
KurapikaKeys["op_assign"] = { type = "operator", color = operatorColor }
KurapikaKeys["op_concat"] = { type = "operator", color = operatorColor }
KurapikaKeys["op_div"] = { type = "operator", color = operatorColor }
KurapikaKeys["op_eq"] = { type = "operator", color = operatorColor }
KurapikaKeys["op_floordiv"] = { type = "operator", color = operatorColor }
KurapikaKeys["op_ge"] = { type = "operator", color = operatorColor }
KurapikaKeys["op_gt"] = { type = "operator", color = operatorColor }
KurapikaKeys["op_le"] = { type = "operator", color = operatorColor }
KurapikaKeys["op_len"] = { type = "operator", color = operatorColor }
KurapikaKeys["op_lt"] = { type = "operator", color = operatorColor }
KurapikaKeys["op_mod"] = { type = "operator", color = operatorColor }
KurapikaKeys["op_mul"] = { type = "operator", color = operatorColor }
KurapikaKeys["op_neq"] = { type = "operator", color = operatorColor }
KurapikaKeys["op_pow"] = { type = "operator", color = operatorColor }
KurapikaKeys["op_sub"] = { type = "operator", color = operatorColor }
KurapikaKeys["op_unm"] = { type = "operator", color = operatorColor }

-- ── type_annotation ───────────────────────────────
local typeColor = Color3.fromRGB(180, 38, 38)
KurapikaKeys["op_ampersand"] = { type = "type_annotation", color = typeColor }
KurapikaKeys["op_arrow"] = { type = "type_annotation", color = typeColor }
KurapikaKeys["op_colon"] = { type = "type_annotation", color = typeColor }
KurapikaKeys["op_pipe"] = { type = "type_annotation", color = typeColor }
KurapikaKeys["op_question"] = { type = "type_annotation", color = typeColor }
KurapikaKeys["op_typecast"] = { type = "type_annotation", color = typeColor }
KurapikaKeys["typeof"] = { type = "type_annotation", color = typeColor }

-- ── builtin ───────────────────────────────────────
local builtinColor = Color3.fromRGB(228, 82, 82)
KurapikaKeys["assert"] = { type = "builtin", color = builtinColor }
KurapikaKeys["collectgarbage"] = { type = "builtin", color = builtinColor }
KurapikaKeys["error"] = { type = "builtin", color = builtinColor }
KurapikaKeys["gcinfo"] = { type = "builtin", color = builtinColor }
KurapikaKeys["getfenv"] = { type = "builtin", color = builtinColor }
KurapikaKeys["getmetatable"] = { type = "builtin", color = builtinColor }
KurapikaKeys["ipairs"] = { type = "builtin", color = builtinColor }
KurapikaKeys["loadstring"] = { type = "builtin", color = builtinColor }
KurapikaKeys["newproxy"] = { type = "builtin", color = builtinColor }
KurapikaKeys["next"] = { type = "builtin", color = builtinColor }
KurapikaKeys["pairs"] = { type = "builtin", color = builtinColor }
KurapikaKeys["pcall"] = { type = "builtin", color = builtinColor }
KurapikaKeys["print"] = { type = "builtin", color = builtinColor }
KurapikaKeys["rawequal"] = { type = "builtin", color = builtinColor }
KurapikaKeys["rawget"] = { type = "builtin", color = builtinColor }
KurapikaKeys["rawlen"] = { type = "builtin", color = builtinColor }
KurapikaKeys["rawset"] = { type = "builtin", color = builtinColor }
KurapikaKeys["require"] = { type = "builtin", color = builtinColor }
KurapikaKeys["select"] = { type = "builtin", color = builtinColor }
KurapikaKeys["setfenv"] = { type = "builtin", color = builtinColor }
KurapikaKeys["setmetatable"] = { type = "builtin", color = builtinColor }
KurapikaKeys["tonumber"] = { type = "builtin", color = builtinColor }
KurapikaKeys["tostring"] = { type = "builtin", color = builtinColor }
KurapikaKeys["unpack"] = { type = "builtin", color = builtinColor }
KurapikaKeys["warn"] = { type = "builtin", color = builtinColor }
KurapikaKeys["xpcall"] = { type = "builtin", color = builtinColor }

-- ── global ────────────────────────────────────────
local globalColor = Color3.fromRGB(200, 52, 52)
KurapikaKeys["_G"] = { type = "global", color = globalColor }
KurapikaKeys["_VERSION"] = { type = "global", color = globalColor }
KurapikaKeys["bit32"] = { type = "global", color = globalColor }
KurapikaKeys["buffer"] = { type = "global", color = globalColor }
KurapikaKeys["coroutine"] = { type = "global", color = globalColor }
KurapikaKeys["debug"] = { type = "global", color = globalColor }
KurapikaKeys["game"] = { type = "global", color = globalColor }
KurapikaKeys["math"] = { type = "global", color = globalColor }
KurapikaKeys["os"] = { type = "global", color = globalColor }
KurapikaKeys["plugin"] = { type = "global", color = globalColor }
KurapikaKeys["script"] = { type = "global", color = globalColor }
KurapikaKeys["shared"] = { type = "global", color = globalColor }
KurapikaKeys["string"] = { type = "global", color = globalColor }
KurapikaKeys["table"] = { type = "global", color = globalColor }
KurapikaKeys["task"] = { type = "global", color = globalColor }
KurapikaKeys["utf8"] = { type = "global", color = globalColor }
KurapikaKeys["vector"] = { type = "global", color = globalColor }
KurapikaKeys["workspace"] = { type = "global", color = globalColor }

-- ── type ──────────────────────────────────────────
local dataTypeColor = Color3.fromRGB(180, 38, 38)
KurapikaKeys["Axes"] = { type = "type", color = dataTypeColor }
KurapikaKeys["BrickColor"] = { type = "type", color = dataTypeColor }
KurapikaKeys["CFrame"] = { type = "type", color = dataTypeColor }
KurapikaKeys["CatalogSearchParams"] = { type = "type", color = dataTypeColor }
KurapikaKeys["Color3"] = { type = "type", color = dataTypeColor }
KurapikaKeys["ColorSequence"] = { type = "type", color = dataTypeColor }
KurapikaKeys["ColorSequenceKeypoint"] = { type = "type", color = dataTypeColor }
KurapikaKeys["DateTime"] = { type = "type", color = dataTypeColor }
KurapikaKeys["DockWidgetPluginGuiInfo"] = { type = "type", color = dataTypeColor }
KurapikaKeys["Enum"] = { type = "type", color = dataTypeColor }
KurapikaKeys["EnumItem"] = { type = "type", color = dataTypeColor }
KurapikaKeys["Faces"] = { type = "type", color = dataTypeColor }
KurapikaKeys["FloatCurveKey"] = { type = "type", color = dataTypeColor }
KurapikaKeys["Font"] = { type = "type", color = dataTypeColor }
KurapikaKeys["Instance"] = { type = "type", color = dataTypeColor }
KurapikaKeys["NumberRange"] = { type = "type", color = dataTypeColor }
KurapikaKeys["NumberSequence"] = { type = "type", color = dataTypeColor }
KurapikaKeys["NumberSequenceKeypoint"] = { type = "type", color = dataTypeColor }
KurapikaKeys["OverlapParams"] = { type = "type", color = dataTypeColor }
KurapikaKeys["PathWaypoint"] = { type = "type", color = dataTypeColor }
KurapikaKeys["PhysicalProperties"] = { type = "type", color = dataTypeColor }
KurapikaKeys["Ray"] = { type = "type", color = dataTypeColor }
KurapikaKeys["RaycastParams"] = { type = "type", color = dataTypeColor }
KurapikaKeys["RaycastResult"] = { type = "type", color = dataTypeColor }
KurapikaKeys["Rect"] = { type = "type", color = dataTypeColor }
KurapikaKeys["Region3"] = { type = "type", color = dataTypeColor }
KurapikaKeys["Region3int16"] = { type = "type", color = dataTypeColor }
KurapikaKeys["RotationCurveKey"] = { type = "type", color = dataTypeColor }
KurapikaKeys["SharedTable"] = { type = "type", color = dataTypeColor }
KurapikaKeys["TweenInfo"] = { type = "type", color = dataTypeColor }
KurapikaKeys["UDim"] = { type = "type", color = dataTypeColor }
KurapikaKeys["UDim2"] = { type = "type", color = dataTypeColor }
KurapikaKeys["Vector2"] = { type = "type", color = dataTypeColor }
KurapikaKeys["Vector2int16"] = { type = "type", color = dataTypeColor }
KurapikaKeys["Vector3"] = { type = "type", color = dataTypeColor }
KurapikaKeys["Vector3int16"] = { type = "type", color = dataTypeColor }
KurapikaKeys["any"] = { type = "type", color = dataTypeColor }
KurapikaKeys["boolean"] = { type = "type", color = dataTypeColor }
KurapikaKeys["never"] = { type = "type", color = dataTypeColor }
KurapikaKeys["number"] = { type = "type", color = dataTypeColor }
KurapikaKeys["thread"] = { type = "type", color = dataTypeColor }
KurapikaKeys["unknown"] = { type = "type", color = dataTypeColor }
KurapikaKeys["userdata"] = { type = "type", color = dataTypeColor }
KurapikaKeys["void"] = { type = "type", color = dataTypeColor }

-- ── metamethod ────────────────────────────────────
local metamethodColor = Color3.fromRGB(230, 188, 85)
KurapikaKeys["__add"] = { type = "metamethod", color = metamethodColor }
KurapikaKeys["__band"] = { type = "metamethod", color = metamethodColor }
KurapikaKeys["__bnot"] = { type = "metamethod", color = metamethodColor }
KurapikaKeys["__bor"] = { type = "metamethod", color = metamethodColor }
KurapikaKeys["__bxor"] = { type = "metamethod", color = metamethodColor }
KurapikaKeys["__call"] = { type = "metamethod", color = metamethodColor }
KurapikaKeys["__concat"] = { type = "metamethod", color = metamethodColor }
KurapikaKeys["__div"] = { type = "metamethod", color = metamethodColor }
KurapikaKeys["__eq"] = { type = "metamethod", color = metamethodColor }
KurapikaKeys["__idiv"] = { type = "metamethod", color = metamethodColor }
KurapikaKeys["__index"] = { type = "metamethod", color = metamethodColor }
KurapikaKeys["__iter"] = { type = "metamethod", color = metamethodColor }
KurapikaKeys["__le"] = { type = "metamethod", color = metamethodColor }
KurapikaKeys["__len"] = { type = "metamethod", color = metamethodColor }
KurapikaKeys["__lt"] = { type = "metamethod", color = metamethodColor }
KurapikaKeys["__mod"] = { type = "metamethod", color = metamethodColor }
KurapikaKeys["__mul"] = { type = "metamethod", color = metamethodColor }
KurapikaKeys["__newindex"] = { type = "metamethod", color = metamethodColor }
KurapikaKeys["__pow"] = { type = "metamethod", color = metamethodColor }
KurapikaKeys["__shl"] = { type = "metamethod", color = metamethodColor }
KurapikaKeys["__shr"] = { type = "metamethod", color = metamethodColor }
KurapikaKeys["__sub"] = { type = "metamethod", color = metamethodColor }
KurapikaKeys["__tostring"] = { type = "metamethod", color = metamethodColor }
KurapikaKeys["__type"] = { type = "metamethod", color = metamethodColor }
KurapikaKeys["__unm"] = { type = "metamethod", color = metamethodColor }

-- ── comment ───────────────────────────────────────
local commentColor = Color3.fromRGB(65, 55, 55)
KurapikaKeys["comment_multi_close"] = { type = "comment", color = commentColor }
KurapikaKeys["comment_multi_open"] = { type = "comment", color = commentColor }
KurapikaKeys["comment_single"] = { type = "comment", color = commentColor }

-- ── number ────────────────────────────────────────
local numberColor = Color3.fromRGB(235, 195, 90)
KurapikaKeys["num_binary"] = { type = "number", color = numberColor }
KurapikaKeys["num_exp"] = { type = "number", color = numberColor }
KurapikaKeys["num_float"] = { type = "number", color = numberColor }
KurapikaKeys["num_hex"] = { type = "number", color = numberColor }
KurapikaKeys["num_inf"] = { type = "number", color = numberColor }
KurapikaKeys["num_integer"] = { type = "number", color = numberColor }
KurapikaKeys["num_nan"] = { type = "number", color = numberColor }
KurapikaKeys["num_separator"] = { type = "number", color = numberColor }

return KurapikaKeys