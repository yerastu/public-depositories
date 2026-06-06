local VinlandKeys = {}
function GetData()
	local Config = {
		Name = "LuaU",
		Version = "1.0.0",
		Author = "Yera"
	}
end

-- ── keyword ───────────────────────────────────────
local keywordColor = Color3.fromRGB(215, 178, 75)
VinlandKeys["and"] = { type = "keyword", color = keywordColor }
VinlandKeys["do"] = { type = "keyword", color = keywordColor }
VinlandKeys["end"] = { type = "keyword", color = keywordColor }
VinlandKeys["export"] = { type = "keyword", color = keywordColor }
VinlandKeys["function"] = { type = "keyword", color = keywordColor }
VinlandKeys["in"] = { type = "keyword", color = keywordColor }
VinlandKeys["inf"] = { type = "keyword", color = keywordColor }
VinlandKeys["local"] = { type = "keyword", color = keywordColor }
VinlandKeys["not"] = { type = "keyword", color = keywordColor }
VinlandKeys["or"] = { type = "keyword", color = keywordColor }
VinlandKeys["then"] = { type = "keyword", color = keywordColor }
VinlandKeys["type"] = { type = "keyword", color = keywordColor }
VinlandKeys["self"] = { type = "keyword", color = keywordColor }

-- ── flow ──────────────────────────────────────────
local flowColor = Color3.fromRGB(215, 178, 75)
VinlandKeys["break"] = { type = "flow", color = flowColor }
VinlandKeys["continue"] = { type = "flow", color = flowColor }
VinlandKeys["else"] = { type = "flow", color = flowColor }
VinlandKeys["elseif"] = { type = "flow", color = flowColor }
VinlandKeys["for"] = { type = "flow", color = flowColor }
VinlandKeys["if"] = { type = "flow", color = flowColor }
VinlandKeys["repeat"] = { type = "flow", color = flowColor }
VinlandKeys["return"] = { type = "flow", color = flowColor }
VinlandKeys["until"] = { type = "flow", color = flowColor }
VinlandKeys["while"] = { type = "flow", color = flowColor }

-- ── literal ───────────────────────────────────────
local literalColor = Color3.fromRGB(165, 215, 235)
VinlandKeys["false"] = { type = "literal", color = literalColor }
VinlandKeys["nil"] = { type = "literal", color = literalColor }
VinlandKeys["true"] = { type = "literal", color = literalColor }

-- ── operator ──────────────────────────────────────
local operatorColor = Color3.fromRGB(162, 168, 172)
VinlandKeys["op_add"] = { type = "operator", color = operatorColor }
VinlandKeys["op_assign"] = { type = "operator", color = operatorColor }
VinlandKeys["op_concat"] = { type = "operator", color = operatorColor }
VinlandKeys["op_div"] = { type = "operator", color = operatorColor }
VinlandKeys["op_eq"] = { type = "operator", color = operatorColor }
VinlandKeys["op_floordiv"] = { type = "operator", color = operatorColor }
VinlandKeys["op_ge"] = { type = "operator", color = operatorColor }
VinlandKeys["op_gt"] = { type = "operator", color = operatorColor }
VinlandKeys["op_le"] = { type = "operator", color = operatorColor }
VinlandKeys["op_len"] = { type = "operator", color = operatorColor }
VinlandKeys["op_lt"] = { type = "operator", color = operatorColor }
VinlandKeys["op_mod"] = { type = "operator", color = operatorColor }
VinlandKeys["op_mul"] = { type = "operator", color = operatorColor }
VinlandKeys["op_neq"] = { type = "operator", color = operatorColor }
VinlandKeys["op_pow"] = { type = "operator", color = operatorColor }
VinlandKeys["op_sub"] = { type = "operator", color = operatorColor }
VinlandKeys["op_unm"] = { type = "operator", color = operatorColor }

-- ── type_annotation ───────────────────────────────
local typeColor = Color3.fromRGB(180, 148, 50)
VinlandKeys["op_ampersand"] = { type = "type_annotation", color = typeColor }
VinlandKeys["op_arrow"] = { type = "type_annotation", color = typeColor }
VinlandKeys["op_colon"] = { type = "type_annotation", color = typeColor }
VinlandKeys["op_pipe"] = { type = "type_annotation", color = typeColor }
VinlandKeys["op_question"] = { type = "type_annotation", color = typeColor }
VinlandKeys["op_typecast"] = { type = "type_annotation", color = typeColor }
VinlandKeys["typeof"] = { type = "type_annotation", color = typeColor }

-- ── builtin ───────────────────────────────────────
local builtinColor = Color3.fromRGB(228, 192, 92)
VinlandKeys["assert"] = { type = "builtin", color = builtinColor }
VinlandKeys["collectgarbage"] = { type = "builtin", color = builtinColor }
VinlandKeys["error"] = { type = "builtin", color = builtinColor }
VinlandKeys["gcinfo"] = { type = "builtin", color = builtinColor }
VinlandKeys["getfenv"] = { type = "builtin", color = builtinColor }
VinlandKeys["getmetatable"] = { type = "builtin", color = builtinColor }
VinlandKeys["ipairs"] = { type = "builtin", color = builtinColor }
VinlandKeys["loadstring"] = { type = "builtin", color = builtinColor }
VinlandKeys["newproxy"] = { type = "builtin", color = builtinColor }
VinlandKeys["next"] = { type = "builtin", color = builtinColor }
VinlandKeys["pairs"] = { type = "builtin", color = builtinColor }
VinlandKeys["pcall"] = { type = "builtin", color = builtinColor }
VinlandKeys["print"] = { type = "builtin", color = builtinColor }
VinlandKeys["rawequal"] = { type = "builtin", color = builtinColor }
VinlandKeys["rawget"] = { type = "builtin", color = builtinColor }
VinlandKeys["rawlen"] = { type = "builtin", color = builtinColor }
VinlandKeys["rawset"] = { type = "builtin", color = builtinColor }
VinlandKeys["require"] = { type = "builtin", color = builtinColor }
VinlandKeys["select"] = { type = "builtin", color = builtinColor }
VinlandKeys["setfenv"] = { type = "builtin", color = builtinColor }
VinlandKeys["setmetatable"] = { type = "builtin", color = builtinColor }
VinlandKeys["tonumber"] = { type = "builtin", color = builtinColor }
VinlandKeys["tostring"] = { type = "builtin", color = builtinColor }
VinlandKeys["unpack"] = { type = "builtin", color = builtinColor }
VinlandKeys["warn"] = { type = "builtin", color = builtinColor }
VinlandKeys["xpcall"] = { type = "builtin", color = builtinColor }

-- ── global ────────────────────────────────────────
local globalColor = Color3.fromRGB(200, 165, 62)
VinlandKeys["_G"] = { type = "global", color = globalColor }
VinlandKeys["_VERSION"] = { type = "global", color = globalColor }
VinlandKeys["bit32"] = { type = "global", color = globalColor }
VinlandKeys["buffer"] = { type = "global", color = globalColor }
VinlandKeys["coroutine"] = { type = "global", color = globalColor }
VinlandKeys["debug"] = { type = "global", color = globalColor }
VinlandKeys["game"] = { type = "global", color = globalColor }
VinlandKeys["math"] = { type = "global", color = globalColor }
VinlandKeys["os"] = { type = "global", color = globalColor }
VinlandKeys["plugin"] = { type = "global", color = globalColor }
VinlandKeys["script"] = { type = "global", color = globalColor }
VinlandKeys["shared"] = { type = "global", color = globalColor }
VinlandKeys["string"] = { type = "global", color = globalColor }
VinlandKeys["table"] = { type = "global", color = globalColor }
VinlandKeys["task"] = { type = "global", color = globalColor }
VinlandKeys["utf8"] = { type = "global", color = globalColor }
VinlandKeys["vector"] = { type = "global", color = globalColor }
VinlandKeys["workspace"] = { type = "global", color = globalColor }

-- ── type ──────────────────────────────────────────
local dataTypeColor = Color3.fromRGB(180, 148, 50)
VinlandKeys["Axes"] = { type = "type", color = dataTypeColor }
VinlandKeys["BrickColor"] = { type = "type", color = dataTypeColor }
VinlandKeys["CFrame"] = { type = "type", color = dataTypeColor }
VinlandKeys["CatalogSearchParams"] = { type = "type", color = dataTypeColor }
VinlandKeys["Color3"] = { type = "type", color = dataTypeColor }
VinlandKeys["ColorSequence"] = { type = "type", color = dataTypeColor }
VinlandKeys["ColorSequenceKeypoint"] = { type = "type", color = dataTypeColor }
VinlandKeys["DateTime"] = { type = "type", color = dataTypeColor }
VinlandKeys["DockWidgetPluginGuiInfo"] = { type = "type", color = dataTypeColor }
VinlandKeys["Enum"] = { type = "type", color = dataTypeColor }
VinlandKeys["EnumItem"] = { type = "type", color = dataTypeColor }
VinlandKeys["Faces"] = { type = "type", color = dataTypeColor }
VinlandKeys["FloatCurveKey"] = { type = "type", color = dataTypeColor }
VinlandKeys["Font"] = { type = "type", color = dataTypeColor }
VinlandKeys["Instance"] = { type = "type", color = dataTypeColor }
VinlandKeys["NumberRange"] = { type = "type", color = dataTypeColor }
VinlandKeys["NumberSequence"] = { type = "type", color = dataTypeColor }
VinlandKeys["NumberSequenceKeypoint"] = { type = "type", color = dataTypeColor }
VinlandKeys["OverlapParams"] = { type = "type", color = dataTypeColor }
VinlandKeys["PathWaypoint"] = { type = "type", color = dataTypeColor }
VinlandKeys["PhysicalProperties"] = { type = "type", color = dataTypeColor }
VinlandKeys["Ray"] = { type = "type", color = dataTypeColor }
VinlandKeys["RaycastParams"] = { type = "type", color = dataTypeColor }
VinlandKeys["RaycastResult"] = { type = "type", color = dataTypeColor }
VinlandKeys["Rect"] = { type = "type", color = dataTypeColor }
VinlandKeys["Region3"] = { type = "type", color = dataTypeColor }
VinlandKeys["Region3int16"] = { type = "type", color = dataTypeColor }
VinlandKeys["RotationCurveKey"] = { type = "type", color = dataTypeColor }
VinlandKeys["SharedTable"] = { type = "type", color = dataTypeColor }
VinlandKeys["TweenInfo"] = { type = "type", color = dataTypeColor }
VinlandKeys["UDim"] = { type = "type", color = dataTypeColor }
VinlandKeys["UDim2"] = { type = "type", color = dataTypeColor }
VinlandKeys["Vector2"] = { type = "type", color = dataTypeColor }
VinlandKeys["Vector2int16"] = { type = "type", color = dataTypeColor }
VinlandKeys["Vector3"] = { type = "type", color = dataTypeColor }
VinlandKeys["Vector3int16"] = { type = "type", color = dataTypeColor }
VinlandKeys["any"] = { type = "type", color = dataTypeColor }
VinlandKeys["boolean"] = { type = "type", color = dataTypeColor }
VinlandKeys["never"] = { type = "type", color = dataTypeColor }
VinlandKeys["number"] = { type = "type", color = dataTypeColor }
VinlandKeys["thread"] = { type = "type", color = dataTypeColor }
VinlandKeys["unknown"] = { type = "type", color = dataTypeColor }
VinlandKeys["userdata"] = { type = "type", color = dataTypeColor }
VinlandKeys["void"] = { type = "type", color = dataTypeColor }

-- ── metamethod ────────────────────────────────────
local metamethodColor = Color3.fromRGB(158, 210, 230)
VinlandKeys["__add"] = { type = "metamethod", color = metamethodColor }
VinlandKeys["__band"] = { type = "metamethod", color = metamethodColor }
VinlandKeys["__bnot"] = { type = "metamethod", color = metamethodColor }
VinlandKeys["__bor"] = { type = "metamethod", color = metamethodColor }
VinlandKeys["__bxor"] = { type = "metamethod", color = metamethodColor }
VinlandKeys["__call"] = { type = "metamethod", color = metamethodColor }
VinlandKeys["__concat"] = { type = "metamethod", color = metamethodColor }
VinlandKeys["__div"] = { type = "metamethod", color = metamethodColor }
VinlandKeys["__eq"] = { type = "metamethod", color = metamethodColor }
VinlandKeys["__idiv"] = { type = "metamethod", color = metamethodColor }
VinlandKeys["__index"] = { type = "metamethod", color = metamethodColor }
VinlandKeys["__iter"] = { type = "metamethod", color = metamethodColor }
VinlandKeys["__le"] = { type = "metamethod", color = metamethodColor }
VinlandKeys["__len"] = { type = "metamethod", color = metamethodColor }
VinlandKeys["__lt"] = { type = "metamethod", color = metamethodColor }
VinlandKeys["__mod"] = { type = "metamethod", color = metamethodColor }
VinlandKeys["__mul"] = { type = "metamethod", color = metamethodColor }
VinlandKeys["__newindex"] = { type = "metamethod", color = metamethodColor }
VinlandKeys["__pow"] = { type = "metamethod", color = metamethodColor }
VinlandKeys["__shl"] = { type = "metamethod", color = metamethodColor }
VinlandKeys["__shr"] = { type = "metamethod", color = metamethodColor }
VinlandKeys["__sub"] = { type = "metamethod", color = metamethodColor }
VinlandKeys["__tostring"] = { type = "metamethod", color = metamethodColor }
VinlandKeys["__type"] = { type = "metamethod", color = metamethodColor }
VinlandKeys["__unm"] = { type = "metamethod", color = metamethodColor }

-- ── comment ───────────────────────────────────────
local commentColor = Color3.fromRGB(62, 68, 72)
VinlandKeys["comment_multi_close"] = { type = "comment", color = commentColor }
VinlandKeys["comment_multi_open"] = { type = "comment", color = commentColor }
VinlandKeys["comment_single"] = { type = "comment", color = commentColor }

-- ── number ────────────────────────────────────────
local numberColor = Color3.fromRGB(165, 215, 235)
VinlandKeys["num_binary"] = { type = "number", color = numberColor }
VinlandKeys["num_exp"] = { type = "number", color = numberColor }
VinlandKeys["num_float"] = { type = "number", color = numberColor }
VinlandKeys["num_hex"] = { type = "number", color = numberColor }
VinlandKeys["num_inf"] = { type = "number", color = numberColor }
VinlandKeys["num_integer"] = { type = "number", color = numberColor }
VinlandKeys["num_nan"] = { type = "number", color = numberColor }
VinlandKeys["num_separator"] = { type = "number", color = numberColor }

return VinlandKeys