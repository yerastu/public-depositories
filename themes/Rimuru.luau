local RimuruKeys = {}
function GetData()
	local Config = {
		Name = "LuaU",
		Version = "1.0.0",
		Author = "Yera"
	}
end

-- ── keyword ───────────────────────────────────────
local keywordColor = Color3.fromRGB(60, 210, 185)
RimuruKeys["and"] = { type = "keyword", color = keywordColor }
RimuruKeys["do"] = { type = "keyword", color = keywordColor }
RimuruKeys["end"] = { type = "keyword", color = keywordColor }
RimuruKeys["export"] = { type = "keyword", color = keywordColor }
RimuruKeys["function"] = { type = "keyword", color = keywordColor }
RimuruKeys["in"] = { type = "keyword", color = keywordColor }
RimuruKeys["inf"] = { type = "keyword", color = keywordColor }
RimuruKeys["local"] = { type = "keyword", color = keywordColor }
RimuruKeys["not"] = { type = "keyword", color = keywordColor }
RimuruKeys["or"] = { type = "keyword", color = keywordColor }
RimuruKeys["then"] = { type = "keyword", color = keywordColor }
RimuruKeys["type"] = { type = "keyword", color = keywordColor }
RimuruKeys["self"] = { type = "keyword", color = keywordColor }

-- ── flow ──────────────────────────────────────────
local flowColor = Color3.fromRGB(60, 210, 185)
RimuruKeys["break"] = { type = "flow", color = flowColor }
RimuruKeys["continue"] = { type = "flow", color = flowColor }
RimuruKeys["else"] = { type = "flow", color = flowColor }
RimuruKeys["elseif"] = { type = "flow", color = flowColor }
RimuruKeys["for"] = { type = "flow", color = flowColor }
RimuruKeys["if"] = { type = "flow", color = flowColor }
RimuruKeys["repeat"] = { type = "flow", color = flowColor }
RimuruKeys["return"] = { type = "flow", color = flowColor }
RimuruKeys["until"] = { type = "flow", color = flowColor }
RimuruKeys["while"] = { type = "flow", color = flowColor }

-- ── literal ───────────────────────────────────────
local literalColor = Color3.fromRGB(240, 210, 90)
RimuruKeys["false"] = { type = "literal", color = literalColor }
RimuruKeys["nil"] = { type = "literal", color = literalColor }
RimuruKeys["true"] = { type = "literal", color = literalColor }

-- ── operator ──────────────────────────────────────
local operatorColor = Color3.fromRGB(170, 185, 185)
RimuruKeys["op_add"] = { type = "operator", color = operatorColor }
RimuruKeys["op_assign"] = { type = "operator", color = operatorColor }
RimuruKeys["op_concat"] = { type = "operator", color = operatorColor }
RimuruKeys["op_div"] = { type = "operator", color = operatorColor }
RimuruKeys["op_eq"] = { type = "operator", color = operatorColor }
RimuruKeys["op_floordiv"] = { type = "operator", color = operatorColor }
RimuruKeys["op_ge"] = { type = "operator", color = operatorColor }
RimuruKeys["op_gt"] = { type = "operator", color = operatorColor }
RimuruKeys["op_le"] = { type = "operator", color = operatorColor }
RimuruKeys["op_len"] = { type = "operator", color = operatorColor }
RimuruKeys["op_lt"] = { type = "operator", color = operatorColor }
RimuruKeys["op_mod"] = { type = "operator", color = operatorColor }
RimuruKeys["op_mul"] = { type = "operator", color = operatorColor }
RimuruKeys["op_neq"] = { type = "operator", color = operatorColor }
RimuruKeys["op_pow"] = { type = "operator", color = operatorColor }
RimuruKeys["op_sub"] = { type = "operator", color = operatorColor }
RimuruKeys["op_unm"] = { type = "operator", color = operatorColor }

-- ── type_annotation ───────────────────────────────
local typeColor = Color3.fromRGB(35, 180, 160)
RimuruKeys["op_ampersand"] = { type = "type_annotation", color = typeColor }
RimuruKeys["op_arrow"] = { type = "type_annotation", color = typeColor }
RimuruKeys["op_colon"] = { type = "type_annotation", color = typeColor }
RimuruKeys["op_pipe"] = { type = "type_annotation", color = typeColor }
RimuruKeys["op_question"] = { type = "type_annotation", color = typeColor }
RimuruKeys["op_typecast"] = { type = "type_annotation", color = typeColor }
RimuruKeys["typeof"] = { type = "type_annotation", color = typeColor }

-- ── builtin ───────────────────────────────────────
local builtinColor = Color3.fromRGB(75, 220, 200)
RimuruKeys["assert"] = { type = "builtin", color = builtinColor }
RimuruKeys["collectgarbage"] = { type = "builtin", color = builtinColor }
RimuruKeys["error"] = { type = "builtin", color = builtinColor }
RimuruKeys["gcinfo"] = { type = "builtin", color = builtinColor }
RimuruKeys["getfenv"] = { type = "builtin", color = builtinColor }
RimuruKeys["getmetatable"] = { type = "builtin", color = builtinColor }
RimuruKeys["ipairs"] = { type = "builtin", color = builtinColor }
RimuruKeys["loadstring"] = { type = "builtin", color = builtinColor }
RimuruKeys["newproxy"] = { type = "builtin", color = builtinColor }
RimuruKeys["next"] = { type = "builtin", color = builtinColor }
RimuruKeys["pairs"] = { type = "builtin", color = builtinColor }
RimuruKeys["pcall"] = { type = "builtin", color = builtinColor }
RimuruKeys["print"] = { type = "builtin", color = builtinColor }
RimuruKeys["rawequal"] = { type = "builtin", color = builtinColor }
RimuruKeys["rawget"] = { type = "builtin", color = builtinColor }
RimuruKeys["rawlen"] = { type = "builtin", color = builtinColor }
RimuruKeys["rawset"] = { type = "builtin", color = builtinColor }
RimuruKeys["require"] = { type = "builtin", color = builtinColor }
RimuruKeys["select"] = { type = "builtin", color = builtinColor }
RimuruKeys["setfenv"] = { type = "builtin", color = builtinColor }
RimuruKeys["setmetatable"] = { type = "builtin", color = builtinColor }
RimuruKeys["tonumber"] = { type = "builtin", color = builtinColor }
RimuruKeys["tostring"] = { type = "builtin", color = builtinColor }
RimuruKeys["unpack"] = { type = "builtin", color = builtinColor }
RimuruKeys["warn"] = { type = "builtin", color = builtinColor }
RimuruKeys["xpcall"] = { type = "builtin", color = builtinColor }

-- ── global ────────────────────────────────────────
local globalColor = Color3.fromRGB(50, 198, 175)
RimuruKeys["_G"] = { type = "global", color = globalColor }
RimuruKeys["_VERSION"] = { type = "global", color = globalColor }
RimuruKeys["bit32"] = { type = "global", color = globalColor }
RimuruKeys["buffer"] = { type = "global", color = globalColor }
RimuruKeys["coroutine"] = { type = "global", color = globalColor }
RimuruKeys["debug"] = { type = "global", color = globalColor }
RimuruKeys["game"] = { type = "global", color = globalColor }
RimuruKeys["math"] = { type = "global", color = globalColor }
RimuruKeys["os"] = { type = "global", color = globalColor }
RimuruKeys["plugin"] = { type = "global", color = globalColor }
RimuruKeys["script"] = { type = "global", color = globalColor }
RimuruKeys["shared"] = { type = "global", color = globalColor }
RimuruKeys["string"] = { type = "global", color = globalColor }
RimuruKeys["table"] = { type = "global", color = globalColor }
RimuruKeys["task"] = { type = "global", color = globalColor }
RimuruKeys["utf8"] = { type = "global", color = globalColor }
RimuruKeys["vector"] = { type = "global", color = globalColor }
RimuruKeys["workspace"] = { type = "global", color = globalColor }

-- ── type ──────────────────────────────────────────
local dataTypeColor = Color3.fromRGB(35, 180, 160)
RimuruKeys["Axes"] = { type = "type", color = dataTypeColor }
RimuruKeys["BrickColor"] = { type = "type", color = dataTypeColor }
RimuruKeys["CFrame"] = { type = "type", color = dataTypeColor }
RimuruKeys["CatalogSearchParams"] = { type = "type", color = dataTypeColor }
RimuruKeys["Color3"] = { type = "type", color = dataTypeColor }
RimuruKeys["ColorSequence"] = { type = "type", color = dataTypeColor }
RimuruKeys["ColorSequenceKeypoint"] = { type = "type", color = dataTypeColor }
RimuruKeys["DateTime"] = { type = "type", color = dataTypeColor }
RimuruKeys["DockWidgetPluginGuiInfo"] = { type = "type", color = dataTypeColor }
RimuruKeys["Enum"] = { type = "type", color = dataTypeColor }
RimuruKeys["EnumItem"] = { type = "type", color = dataTypeColor }
RimuruKeys["Faces"] = { type = "type", color = dataTypeColor }
RimuruKeys["FloatCurveKey"] = { type = "type", color = dataTypeColor }
RimuruKeys["Font"] = { type = "type", color = dataTypeColor }
RimuruKeys["Instance"] = { type = "type", color = dataTypeColor }
RimuruKeys["NumberRange"] = { type = "type", color = dataTypeColor }
RimuruKeys["NumberSequence"] = { type = "type", color = dataTypeColor }
RimuruKeys["NumberSequenceKeypoint"] = { type = "type", color = dataTypeColor }
RimuruKeys["OverlapParams"] = { type = "type", color = dataTypeColor }
RimuruKeys["PathWaypoint"] = { type = "type", color = dataTypeColor }
RimuruKeys["PhysicalProperties"] = { type = "type", color = dataTypeColor }
RimuruKeys["Ray"] = { type = "type", color = dataTypeColor }
RimuruKeys["RaycastParams"] = { type = "type", color = dataTypeColor }
RimuruKeys["RaycastResult"] = { type = "type", color = dataTypeColor }
RimuruKeys["Rect"] = { type = "type", color = dataTypeColor }
RimuruKeys["Region3"] = { type = "type", color = dataTypeColor }
RimuruKeys["Region3int16"] = { type = "type", color = dataTypeColor }
RimuruKeys["RotationCurveKey"] = { type = "type", color = dataTypeColor }
RimuruKeys["SharedTable"] = { type = "type", color = dataTypeColor }
RimuruKeys["TweenInfo"] = { type = "type", color = dataTypeColor }
RimuruKeys["UDim"] = { type = "type", color = dataTypeColor }
RimuruKeys["UDim2"] = { type = "type", color = dataTypeColor }
RimuruKeys["Vector2"] = { type = "type", color = dataTypeColor }
RimuruKeys["Vector2int16"] = { type = "type", color = dataTypeColor }
RimuruKeys["Vector3"] = { type = "type", color = dataTypeColor }
RimuruKeys["Vector3int16"] = { type = "type", color = dataTypeColor }
RimuruKeys["any"] = { type = "type", color = dataTypeColor }
RimuruKeys["boolean"] = { type = "type", color = dataTypeColor }
RimuruKeys["never"] = { type = "type", color = dataTypeColor }
RimuruKeys["number"] = { type = "type", color = dataTypeColor }
RimuruKeys["thread"] = { type = "type", color = dataTypeColor }
RimuruKeys["unknown"] = { type = "type", color = dataTypeColor }
RimuruKeys["userdata"] = { type = "type", color = dataTypeColor }
RimuruKeys["void"] = { type = "type", color = dataTypeColor }

-- ── metamethod ────────────────────────────────────
local metamethodColor = Color3.fromRGB(230, 205, 85)
RimuruKeys["__add"] = { type = "metamethod", color = metamethodColor }
RimuruKeys["__band"] = { type = "metamethod", color = metamethodColor }
RimuruKeys["__bnot"] = { type = "metamethod", color = metamethodColor }
RimuruKeys["__bor"] = { type = "metamethod", color = metamethodColor }
RimuruKeys["__bxor"] = { type = "metamethod", color = metamethodColor }
RimuruKeys["__call"] = { type = "metamethod", color = metamethodColor }
RimuruKeys["__concat"] = { type = "metamethod", color = metamethodColor }
RimuruKeys["__div"] = { type = "metamethod", color = metamethodColor }
RimuruKeys["__eq"] = { type = "metamethod", color = metamethodColor }
RimuruKeys["__idiv"] = { type = "metamethod", color = metamethodColor }
RimuruKeys["__index"] = { type = "metamethod", color = metamethodColor }
RimuruKeys["__iter"] = { type = "metamethod", color = metamethodColor }
RimuruKeys["__le"] = { type = "metamethod", color = metamethodColor }
RimuruKeys["__len"] = { type = "metamethod", color = metamethodColor }
RimuruKeys["__lt"] = { type = "metamethod", color = metamethodColor }
RimuruKeys["__mod"] = { type = "metamethod", color = metamethodColor }
RimuruKeys["__mul"] = { type = "metamethod", color = metamethodColor }
RimuruKeys["__newindex"] = { type = "metamethod", color = metamethodColor }
RimuruKeys["__pow"] = { type = "metamethod", color = metamethodColor }
RimuruKeys["__shl"] = { type = "metamethod", color = metamethodColor }
RimuruKeys["__shr"] = { type = "metamethod", color = metamethodColor }
RimuruKeys["__sub"] = { type = "metamethod", color = metamethodColor }
RimuruKeys["__tostring"] = { type = "metamethod", color = metamethodColor }
RimuruKeys["__type"] = { type = "metamethod", color = metamethodColor }
RimuruKeys["__unm"] = { type = "metamethod", color = metamethodColor }

-- ── comment ───────────────────────────────────────
local commentColor = Color3.fromRGB(60, 78, 75)
RimuruKeys["comment_multi_close"] = { type = "comment", color = commentColor }
RimuruKeys["comment_multi_open"] = { type = "comment", color = commentColor }
RimuruKeys["comment_single"] = { type = "comment", color = commentColor }

-- ── number ────────────────────────────────────────
local numberColor = Color3.fromRGB(240, 210, 90)
RimuruKeys["num_binary"] = { type = "number", color = numberColor }
RimuruKeys["num_exp"] = { type = "number", color = numberColor }
RimuruKeys["num_float"] = { type = "number", color = numberColor }
RimuruKeys["num_hex"] = { type = "number", color = numberColor }
RimuruKeys["num_inf"] = { type = "number", color = numberColor }
RimuruKeys["num_integer"] = { type = "number", color = numberColor }
RimuruKeys["num_nan"] = { type = "number", color = numberColor }
RimuruKeys["num_separator"] = { type = "number", color = numberColor }

return RimuruKeys