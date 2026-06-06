local RyomenKeys = {}
function GetData()
	local Config = {
		Name = "LuaU",
		Version = "1.0.0",
		Author = "Yera"
	}
end

-- ── keyword ───────────────────────────────────────
local keywordColor = Color3.fromRGB(240, 110, 60)
RyomenKeys["and"] = { type = "keyword", color = keywordColor }
RyomenKeys["do"] = { type = "keyword", color = keywordColor }
RyomenKeys["end"] = { type = "keyword", color = keywordColor }
RyomenKeys["export"] = { type = "keyword", color = keywordColor }
RyomenKeys["function"] = { type = "keyword", color = keywordColor }
RyomenKeys["in"] = { type = "keyword", color = keywordColor }
RyomenKeys["inf"] = { type = "keyword", color = keywordColor }
RyomenKeys["local"] = { type = "keyword", color = keywordColor }
RyomenKeys["not"] = { type = "keyword", color = keywordColor }
RyomenKeys["or"] = { type = "keyword", color = keywordColor }
RyomenKeys["then"] = { type = "keyword", color = keywordColor }
RyomenKeys["type"] = { type = "keyword", color = keywordColor }
RyomenKeys["self"] = { type = "keyword", color = keywordColor }

-- ── flow ──────────────────────────────────────────
local flowColor = Color3.fromRGB(240, 110, 60)
RyomenKeys["break"] = { type = "flow", color = flowColor }
RyomenKeys["continue"] = { type = "flow", color = flowColor }
RyomenKeys["else"] = { type = "flow", color = flowColor }
RyomenKeys["elseif"] = { type = "flow", color = flowColor }
RyomenKeys["for"] = { type = "flow", color = flowColor }
RyomenKeys["if"] = { type = "flow", color = flowColor }
RyomenKeys["repeat"] = { type = "flow", color = flowColor }
RyomenKeys["return"] = { type = "flow", color = flowColor }
RyomenKeys["until"] = { type = "flow", color = flowColor }
RyomenKeys["while"] = { type = "flow", color = flowColor }

-- ── literal ───────────────────────────────────────
local literalColor = Color3.fromRGB(250, 215, 180)
RyomenKeys["false"] = { type = "literal", color = literalColor }
RyomenKeys["nil"] = { type = "literal", color = literalColor }
RyomenKeys["true"] = { type = "literal", color = literalColor }

-- ── operator ──────────────────────────────────────
local operatorColor = Color3.fromRGB(185, 178, 170)
RyomenKeys["op_add"] = { type = "operator", color = operatorColor }
RyomenKeys["op_assign"] = { type = "operator", color = operatorColor }
RyomenKeys["op_concat"] = { type = "operator", color = operatorColor }
RyomenKeys["op_div"] = { type = "operator", color = operatorColor }
RyomenKeys["op_eq"] = { type = "operator", color = operatorColor }
RyomenKeys["op_floordiv"] = { type = "operator", color = operatorColor }
RyomenKeys["op_ge"] = { type = "operator", color = operatorColor }
RyomenKeys["op_gt"] = { type = "operator", color = operatorColor }
RyomenKeys["op_le"] = { type = "operator", color = operatorColor }
RyomenKeys["op_len"] = { type = "operator", color = operatorColor }
RyomenKeys["op_lt"] = { type = "operator", color = operatorColor }
RyomenKeys["op_mod"] = { type = "operator", color = operatorColor }
RyomenKeys["op_mul"] = { type = "operator", color = operatorColor }
RyomenKeys["op_neq"] = { type = "operator", color = operatorColor }
RyomenKeys["op_pow"] = { type = "operator", color = operatorColor }
RyomenKeys["op_sub"] = { type = "operator", color = operatorColor }
RyomenKeys["op_unm"] = { type = "operator", color = operatorColor }

-- ── type_annotation ───────────────────────────────
local typeColor = Color3.fromRGB(210, 80, 40)
RyomenKeys["op_ampersand"] = { type = "type_annotation", color = typeColor }
RyomenKeys["op_arrow"] = { type = "type_annotation", color = typeColor }
RyomenKeys["op_colon"] = { type = "type_annotation", color = typeColor }
RyomenKeys["op_pipe"] = { type = "type_annotation", color = typeColor }
RyomenKeys["op_question"] = { type = "type_annotation", color = typeColor }
RyomenKeys["op_typecast"] = { type = "type_annotation", color = typeColor }
RyomenKeys["typeof"] = { type = "type_annotation", color = typeColor }

-- ── builtin ───────────────────────────────────────
local builtinColor = Color3.fromRGB(245, 130, 80)
RyomenKeys["assert"] = { type = "builtin", color = builtinColor }
RyomenKeys["collectgarbage"] = { type = "builtin", color = builtinColor }
RyomenKeys["error"] = { type = "builtin", color = builtinColor }
RyomenKeys["gcinfo"] = { type = "builtin", color = builtinColor }
RyomenKeys["getfenv"] = { type = "builtin", color = builtinColor }
RyomenKeys["getmetatable"] = { type = "builtin", color = builtinColor }
RyomenKeys["ipairs"] = { type = "builtin", color = builtinColor }
RyomenKeys["loadstring"] = { type = "builtin", color = builtinColor }
RyomenKeys["newproxy"] = { type = "builtin", color = builtinColor }
RyomenKeys["next"] = { type = "builtin", color = builtinColor }
RyomenKeys["pairs"] = { type = "builtin", color = builtinColor }
RyomenKeys["pcall"] = { type = "builtin", color = builtinColor }
RyomenKeys["print"] = { type = "builtin", color = builtinColor }
RyomenKeys["rawequal"] = { type = "builtin", color = builtinColor }
RyomenKeys["rawget"] = { type = "builtin", color = builtinColor }
RyomenKeys["rawlen"] = { type = "builtin", color = builtinColor }
RyomenKeys["rawset"] = { type = "builtin", color = builtinColor }
RyomenKeys["require"] = { type = "builtin", color = builtinColor }
RyomenKeys["select"] = { type = "builtin", color = builtinColor }
RyomenKeys["setfenv"] = { type = "builtin", color = builtinColor }
RyomenKeys["setmetatable"] = { type = "builtin", color = builtinColor }
RyomenKeys["tonumber"] = { type = "builtin", color = builtinColor }
RyomenKeys["tostring"] = { type = "builtin", color = builtinColor }
RyomenKeys["unpack"] = { type = "builtin", color = builtinColor }
RyomenKeys["warn"] = { type = "builtin", color = builtinColor }
RyomenKeys["xpcall"] = { type = "builtin", color = builtinColor }

-- ── global ────────────────────────────────────────
local globalColor = Color3.fromRGB(225, 100, 55)
RyomenKeys["_G"] = { type = "global", color = globalColor }
RyomenKeys["_VERSION"] = { type = "global", color = globalColor }
RyomenKeys["bit32"] = { type = "global", color = globalColor }
RyomenKeys["buffer"] = { type = "global", color = globalColor }
RyomenKeys["coroutine"] = { type = "global", color = globalColor }
RyomenKeys["debug"] = { type = "global", color = globalColor }
RyomenKeys["game"] = { type = "global", color = globalColor }
RyomenKeys["math"] = { type = "global", color = globalColor }
RyomenKeys["os"] = { type = "global", color = globalColor }
RyomenKeys["plugin"] = { type = "global", color = globalColor }
RyomenKeys["script"] = { type = "global", color = globalColor }
RyomenKeys["shared"] = { type = "global", color = globalColor }
RyomenKeys["string"] = { type = "global", color = globalColor }
RyomenKeys["table"] = { type = "global", color = globalColor }
RyomenKeys["task"] = { type = "global", color = globalColor }
RyomenKeys["utf8"] = { type = "global", color = globalColor }
RyomenKeys["vector"] = { type = "global", color = globalColor }
RyomenKeys["workspace"] = { type = "global", color = globalColor }

-- ── type ──────────────────────────────────────────
local dataTypeColor = Color3.fromRGB(210, 80, 40)
RyomenKeys["Axes"] = { type = "type", color = dataTypeColor }
RyomenKeys["BrickColor"] = { type = "type", color = dataTypeColor }
RyomenKeys["CFrame"] = { type = "type", color = dataTypeColor }
RyomenKeys["CatalogSearchParams"] = { type = "type", color = dataTypeColor }
RyomenKeys["Color3"] = { type = "type", color = dataTypeColor }
RyomenKeys["ColorSequence"] = { type = "type", color = dataTypeColor }
RyomenKeys["ColorSequenceKeypoint"] = { type = "type", color = dataTypeColor }
RyomenKeys["DateTime"] = { type = "type", color = dataTypeColor }
RyomenKeys["DockWidgetPluginGuiInfo"] = { type = "type", color = dataTypeColor }
RyomenKeys["Enum"] = { type = "type", color = dataTypeColor }
RyomenKeys["EnumItem"] = { type = "type", color = dataTypeColor }
RyomenKeys["Faces"] = { type = "type", color = dataTypeColor }
RyomenKeys["FloatCurveKey"] = { type = "type", color = dataTypeColor }
RyomenKeys["Font"] = { type = "type", color = dataTypeColor }
RyomenKeys["Instance"] = { type = "type", color = dataTypeColor }
RyomenKeys["NumberRange"] = { type = "type", color = dataTypeColor }
RyomenKeys["NumberSequence"] = { type = "type", color = dataTypeColor }
RyomenKeys["NumberSequenceKeypoint"] = { type = "type", color = dataTypeColor }
RyomenKeys["OverlapParams"] = { type = "type", color = dataTypeColor }
RyomenKeys["PathWaypoint"] = { type = "type", color = dataTypeColor }
RyomenKeys["PhysicalProperties"] = { type = "type", color = dataTypeColor }
RyomenKeys["Ray"] = { type = "type", color = dataTypeColor }
RyomenKeys["RaycastParams"] = { type = "type", color = dataTypeColor }
RyomenKeys["RaycastResult"] = { type = "type", color = dataTypeColor }
RyomenKeys["Rect"] = { type = "type", color = dataTypeColor }
RyomenKeys["Region3"] = { type = "type", color = dataTypeColor }
RyomenKeys["Region3int16"] = { type = "type", color = dataTypeColor }
RyomenKeys["RotationCurveKey"] = { type = "type", color = dataTypeColor }
RyomenKeys["SharedTable"] = { type = "type", color = dataTypeColor }
RyomenKeys["TweenInfo"] = { type = "type", color = dataTypeColor }
RyomenKeys["UDim"] = { type = "type", color = dataTypeColor }
RyomenKeys["UDim2"] = { type = "type", color = dataTypeColor }
RyomenKeys["Vector2"] = { type = "type", color = dataTypeColor }
RyomenKeys["Vector2int16"] = { type = "type", color = dataTypeColor }
RyomenKeys["Vector3"] = { type = "type", color = dataTypeColor }
RyomenKeys["Vector3int16"] = { type = "type", color = dataTypeColor }
RyomenKeys["any"] = { type = "type", color = dataTypeColor }
RyomenKeys["boolean"] = { type = "type", color = dataTypeColor }
RyomenKeys["never"] = { type = "type", color = dataTypeColor }
RyomenKeys["number"] = { type = "type", color = dataTypeColor }
RyomenKeys["thread"] = { type = "type", color = dataTypeColor }
RyomenKeys["unknown"] = { type = "type", color = dataTypeColor }
RyomenKeys["userdata"] = { type = "type", color = dataTypeColor }
RyomenKeys["void"] = { type = "type", color = dataTypeColor }

-- ── metamethod ────────────────────────────────────
local metamethodColor = Color3.fromRGB(245, 200, 160)
RyomenKeys["__add"] = { type = "metamethod", color = metamethodColor }
RyomenKeys["__band"] = { type = "metamethod", color = metamethodColor }
RyomenKeys["__bnot"] = { type = "metamethod", color = metamethodColor }
RyomenKeys["__bor"] = { type = "metamethod", color = metamethodColor }
RyomenKeys["__bxor"] = { type = "metamethod", color = metamethodColor }
RyomenKeys["__call"] = { type = "metamethod", color = metamethodColor }
RyomenKeys["__concat"] = { type = "metamethod", color = metamethodColor }
RyomenKeys["__div"] = { type = "metamethod", color = metamethodColor }
RyomenKeys["__eq"] = { type = "metamethod", color = metamethodColor }
RyomenKeys["__idiv"] = { type = "metamethod", color = metamethodColor }
RyomenKeys["__index"] = { type = "metamethod", color = metamethodColor }
RyomenKeys["__iter"] = { type = "metamethod", color = metamethodColor }
RyomenKeys["__le"] = { type = "metamethod", color = metamethodColor }
RyomenKeys["__len"] = { type = "metamethod", color = metamethodColor }
RyomenKeys["__lt"] = { type = "metamethod", color = metamethodColor }
RyomenKeys["__mod"] = { type = "metamethod", color = metamethodColor }
RyomenKeys["__mul"] = { type = "metamethod", color = metamethodColor }
RyomenKeys["__newindex"] = { type = "metamethod", color = metamethodColor }
RyomenKeys["__pow"] = { type = "metamethod", color = metamethodColor }
RyomenKeys["__shl"] = { type = "metamethod", color = metamethodColor }
RyomenKeys["__shr"] = { type = "metamethod", color = metamethodColor }
RyomenKeys["__sub"] = { type = "metamethod", color = metamethodColor }
RyomenKeys["__tostring"] = { type = "metamethod", color = metamethodColor }
RyomenKeys["__type"] = { type = "metamethod", color = metamethodColor }
RyomenKeys["__unm"] = { type = "metamethod", color = metamethodColor }

-- ── comment ───────────────────────────────────────
local commentColor = Color3.fromRGB(72, 65, 60)
RyomenKeys["comment_multi_close"] = { type = "comment", color = commentColor }
RyomenKeys["comment_multi_open"] = { type = "comment", color = commentColor }
RyomenKeys["comment_single"] = { type = "comment", color = commentColor }

-- ── number ────────────────────────────────────────
local numberColor = Color3.fromRGB(250, 215, 180)
RyomenKeys["num_binary"] = { type = "number", color = numberColor }
RyomenKeys["num_exp"] = { type = "number", color = numberColor }
RyomenKeys["num_float"] = { type = "number", color = numberColor }
RyomenKeys["num_hex"] = { type = "number", color = numberColor }
RyomenKeys["num_inf"] = { type = "number", color = numberColor }
RyomenKeys["num_integer"] = { type = "number", color = numberColor }
RyomenKeys["num_nan"] = { type = "number", color = numberColor }
RyomenKeys["num_separator"] = { type = "number", color = numberColor }

return RyomenKeys