local ShiroKeys = {}
function GetData()
	local Config = {
		Name = "LuaU",
		Version = "1.0.0",
		Author = "Yera"
	}
end

-- ── keyword ───────────────────────────────────────
local keywordColor = Color3.fromRGB(210, 215, 240)
ShiroKeys["and"] = { type = "keyword", color = keywordColor }
ShiroKeys["do"] = { type = "keyword", color = keywordColor }
ShiroKeys["end"] = { type = "keyword", color = keywordColor }
ShiroKeys["export"] = { type = "keyword", color = keywordColor }
ShiroKeys["function"] = { type = "keyword", color = keywordColor }
ShiroKeys["in"] = { type = "keyword", color = keywordColor }
ShiroKeys["inf"] = { type = "keyword", color = keywordColor }
ShiroKeys["local"] = { type = "keyword", color = keywordColor }
ShiroKeys["not"] = { type = "keyword", color = keywordColor }
ShiroKeys["or"] = { type = "keyword", color = keywordColor }
ShiroKeys["then"] = { type = "keyword", color = keywordColor }
ShiroKeys["type"] = { type = "keyword", color = keywordColor }
ShiroKeys["self"] = { type = "keyword", color = keywordColor }

-- ── flow ──────────────────────────────────────────
local flowColor = Color3.fromRGB(210, 215, 240)
ShiroKeys["break"] = { type = "flow", color = flowColor }
ShiroKeys["continue"] = { type = "flow", color = flowColor }
ShiroKeys["else"] = { type = "flow", color = flowColor }
ShiroKeys["elseif"] = { type = "flow", color = flowColor }
ShiroKeys["for"] = { type = "flow", color = flowColor }
ShiroKeys["if"] = { type = "flow", color = flowColor }
ShiroKeys["repeat"] = { type = "flow", color = flowColor }
ShiroKeys["return"] = { type = "flow", color = flowColor }
ShiroKeys["until"] = { type = "flow", color = flowColor }
ShiroKeys["while"] = { type = "flow", color = flowColor }

-- ── literal ───────────────────────────────────────
local literalColor = Color3.fromRGB(175, 195, 255)
ShiroKeys["false"] = { type = "literal", color = literalColor }
ShiroKeys["nil"] = { type = "literal", color = literalColor }
ShiroKeys["true"] = { type = "literal", color = literalColor }

-- ── operator ──────────────────────────────────────
local operatorColor = Color3.fromRGB(155, 158, 172)
ShiroKeys["op_add"] = { type = "operator", color = operatorColor }
ShiroKeys["op_assign"] = { type = "operator", color = operatorColor }
ShiroKeys["op_concat"] = { type = "operator", color = operatorColor }
ShiroKeys["op_div"] = { type = "operator", color = operatorColor }
ShiroKeys["op_eq"] = { type = "operator", color = operatorColor }
ShiroKeys["op_floordiv"] = { type = "operator", color = operatorColor }
ShiroKeys["op_ge"] = { type = "operator", color = operatorColor }
ShiroKeys["op_gt"] = { type = "operator", color = operatorColor }
ShiroKeys["op_le"] = { type = "operator", color = operatorColor }
ShiroKeys["op_len"] = { type = "operator", color = operatorColor }
ShiroKeys["op_lt"] = { type = "operator", color = operatorColor }
ShiroKeys["op_mod"] = { type = "operator", color = operatorColor }
ShiroKeys["op_mul"] = { type = "operator", color = operatorColor }
ShiroKeys["op_neq"] = { type = "operator", color = operatorColor }
ShiroKeys["op_pow"] = { type = "operator", color = operatorColor }
ShiroKeys["op_sub"] = { type = "operator", color = operatorColor }
ShiroKeys["op_unm"] = { type = "operator", color = operatorColor }

-- ── type_annotation ───────────────────────────────
local typeColor = Color3.fromRGB(170, 178, 220)
ShiroKeys["op_ampersand"] = { type = "type_annotation", color = typeColor }
ShiroKeys["op_arrow"] = { type = "type_annotation", color = typeColor }
ShiroKeys["op_colon"] = { type = "type_annotation", color = typeColor }
ShiroKeys["op_pipe"] = { type = "type_annotation", color = typeColor }
ShiroKeys["op_question"] = { type = "type_annotation", color = typeColor }
ShiroKeys["op_typecast"] = { type = "type_annotation", color = typeColor }
ShiroKeys["typeof"] = { type = "type_annotation", color = typeColor }

-- ── builtin ───────────────────────────────────────
local builtinColor = Color3.fromRGB(220, 225, 248)
ShiroKeys["assert"] = { type = "builtin", color = builtinColor }
ShiroKeys["collectgarbage"] = { type = "builtin", color = builtinColor }
ShiroKeys["error"] = { type = "builtin", color = builtinColor }
ShiroKeys["gcinfo"] = { type = "builtin", color = builtinColor }
ShiroKeys["getfenv"] = { type = "builtin", color = builtinColor }
ShiroKeys["getmetatable"] = { type = "builtin", color = builtinColor }
ShiroKeys["ipairs"] = { type = "builtin", color = builtinColor }
ShiroKeys["loadstring"] = { type = "builtin", color = builtinColor }
ShiroKeys["newproxy"] = { type = "builtin", color = builtinColor }
ShiroKeys["next"] = { type = "builtin", color = builtinColor }
ShiroKeys["pairs"] = { type = "builtin", color = builtinColor }
ShiroKeys["pcall"] = { type = "builtin", color = builtinColor }
ShiroKeys["print"] = { type = "builtin", color = builtinColor }
ShiroKeys["rawequal"] = { type = "builtin", color = builtinColor }
ShiroKeys["rawget"] = { type = "builtin", color = builtinColor }
ShiroKeys["rawlen"] = { type = "builtin", color = builtinColor }
ShiroKeys["rawset"] = { type = "builtin", color = builtinColor }
ShiroKeys["require"] = { type = "builtin", color = builtinColor }
ShiroKeys["select"] = { type = "builtin", color = builtinColor }
ShiroKeys["setfenv"] = { type = "builtin", color = builtinColor }
ShiroKeys["setmetatable"] = { type = "builtin", color = builtinColor }
ShiroKeys["tonumber"] = { type = "builtin", color = builtinColor }
ShiroKeys["tostring"] = { type = "builtin", color = builtinColor }
ShiroKeys["unpack"] = { type = "builtin", color = builtinColor }
ShiroKeys["warn"] = { type = "builtin", color = builtinColor }
ShiroKeys["xpcall"] = { type = "builtin", color = builtinColor }

-- ── global ────────────────────────────────────────
local globalColor = Color3.fromRGB(198, 205, 235)
ShiroKeys["_G"] = { type = "global", color = globalColor }
ShiroKeys["_VERSION"] = { type = "global", color = globalColor }
ShiroKeys["bit32"] = { type = "global", color = globalColor }
ShiroKeys["buffer"] = { type = "global", color = globalColor }
ShiroKeys["coroutine"] = { type = "global", color = globalColor }
ShiroKeys["debug"] = { type = "global", color = globalColor }
ShiroKeys["game"] = { type = "global", color = globalColor }
ShiroKeys["math"] = { type = "global", color = globalColor }
ShiroKeys["os"] = { type = "global", color = globalColor }
ShiroKeys["plugin"] = { type = "global", color = globalColor }
ShiroKeys["script"] = { type = "global", color = globalColor }
ShiroKeys["shared"] = { type = "global", color = globalColor }
ShiroKeys["string"] = { type = "global", color = globalColor }
ShiroKeys["table"] = { type = "global", color = globalColor }
ShiroKeys["task"] = { type = "global", color = globalColor }
ShiroKeys["utf8"] = { type = "global", color = globalColor }
ShiroKeys["vector"] = { type = "global", color = globalColor }
ShiroKeys["workspace"] = { type = "global", color = globalColor }

-- ── type ──────────────────────────────────────────
local dataTypeColor = Color3.fromRGB(170, 178, 220)
ShiroKeys["Axes"] = { type = "type", color = dataTypeColor }
ShiroKeys["BrickColor"] = { type = "type", color = dataTypeColor }
ShiroKeys["CFrame"] = { type = "type", color = dataTypeColor }
ShiroKeys["CatalogSearchParams"] = { type = "type", color = dataTypeColor }
ShiroKeys["Color3"] = { type = "type", color = dataTypeColor }
ShiroKeys["ColorSequence"] = { type = "type", color = dataTypeColor }
ShiroKeys["ColorSequenceKeypoint"] = { type = "type", color = dataTypeColor }
ShiroKeys["DateTime"] = { type = "type", color = dataTypeColor }
ShiroKeys["DockWidgetPluginGuiInfo"] = { type = "type", color = dataTypeColor }
ShiroKeys["Enum"] = { type = "type", color = dataTypeColor }
ShiroKeys["EnumItem"] = { type = "type", color = dataTypeColor }
ShiroKeys["Faces"] = { type = "type", color = dataTypeColor }
ShiroKeys["FloatCurveKey"] = { type = "type", color = dataTypeColor }
ShiroKeys["Font"] = { type = "type", color = dataTypeColor }
ShiroKeys["Instance"] = { type = "type", color = dataTypeColor }
ShiroKeys["NumberRange"] = { type = "type", color = dataTypeColor }
ShiroKeys["NumberSequence"] = { type = "type", color = dataTypeColor }
ShiroKeys["NumberSequenceKeypoint"] = { type = "type", color = dataTypeColor }
ShiroKeys["OverlapParams"] = { type = "type", color = dataTypeColor }
ShiroKeys["PathWaypoint"] = { type = "type", color = dataTypeColor }
ShiroKeys["PhysicalProperties"] = { type = "type", color = dataTypeColor }
ShiroKeys["Ray"] = { type = "type", color = dataTypeColor }
ShiroKeys["RaycastParams"] = { type = "type", color = dataTypeColor }
ShiroKeys["RaycastResult"] = { type = "type", color = dataTypeColor }
ShiroKeys["Rect"] = { type = "type", color = dataTypeColor }
ShiroKeys["Region3"] = { type = "type", color = dataTypeColor }
ShiroKeys["Region3int16"] = { type = "type", color = dataTypeColor }
ShiroKeys["RotationCurveKey"] = { type = "type", color = dataTypeColor }
ShiroKeys["SharedTable"] = { type = "type", color = dataTypeColor }
ShiroKeys["TweenInfo"] = { type = "type", color = dataTypeColor }
ShiroKeys["UDim"] = { type = "type", color = dataTypeColor }
ShiroKeys["UDim2"] = { type = "type", color = dataTypeColor }
ShiroKeys["Vector2"] = { type = "type", color = dataTypeColor }
ShiroKeys["Vector2int16"] = { type = "type", color = dataTypeColor }
ShiroKeys["Vector3"] = { type = "type", color = dataTypeColor }
ShiroKeys["Vector3int16"] = { type = "type", color = dataTypeColor }
ShiroKeys["any"] = { type = "type", color = dataTypeColor }
ShiroKeys["boolean"] = { type = "type", color = dataTypeColor }
ShiroKeys["never"] = { type = "type", color = dataTypeColor }
ShiroKeys["number"] = { type = "type", color = dataTypeColor }
ShiroKeys["thread"] = { type = "type", color = dataTypeColor }
ShiroKeys["unknown"] = { type = "type", color = dataTypeColor }
ShiroKeys["userdata"] = { type = "type", color = dataTypeColor }
ShiroKeys["void"] = { type = "type", color = dataTypeColor }

-- ── metamethod ────────────────────────────────────
local metamethodColor = Color3.fromRGB(168, 188, 252)
ShiroKeys["__add"] = { type = "metamethod", color = metamethodColor }
ShiroKeys["__band"] = { type = "metamethod", color = metamethodColor }
ShiroKeys["__bnot"] = { type = "metamethod", color = metamethodColor }
ShiroKeys["__bor"] = { type = "metamethod", color = metamethodColor }
ShiroKeys["__bxor"] = { type = "metamethod", color = metamethodColor }
ShiroKeys["__call"] = { type = "metamethod", color = metamethodColor }
ShiroKeys["__concat"] = { type = "metamethod", color = metamethodColor }
ShiroKeys["__div"] = { type = "metamethod", color = metamethodColor }
ShiroKeys["__eq"] = { type = "metamethod", color = metamethodColor }
ShiroKeys["__idiv"] = { type = "metamethod", color = metamethodColor }
ShiroKeys["__index"] = { type = "metamethod", color = metamethodColor }
ShiroKeys["__iter"] = { type = "metamethod", color = metamethodColor }
ShiroKeys["__le"] = { type = "metamethod", color = metamethodColor }
ShiroKeys["__len"] = { type = "metamethod", color = metamethodColor }
ShiroKeys["__lt"] = { type = "metamethod", color = metamethodColor }
ShiroKeys["__mod"] = { type = "metamethod", color = metamethodColor }
ShiroKeys["__mul"] = { type = "metamethod", color = metamethodColor }
ShiroKeys["__newindex"] = { type = "metamethod", color = metamethodColor }
ShiroKeys["__pow"] = { type = "metamethod", color = metamethodColor }
ShiroKeys["__shl"] = { type = "metamethod", color = metamethodColor }
ShiroKeys["__shr"] = { type = "metamethod", color = metamethodColor }
ShiroKeys["__sub"] = { type = "metamethod", color = metamethodColor }
ShiroKeys["__tostring"] = { type = "metamethod", color = metamethodColor }
ShiroKeys["__type"] = { type = "metamethod", color = metamethodColor }
ShiroKeys["__unm"] = { type = "metamethod", color = metamethodColor }

-- ── comment ───────────────────────────────────────
local commentColor = Color3.fromRGB(68, 70, 88)
ShiroKeys["comment_multi_close"] = { type = "comment", color = commentColor }
ShiroKeys["comment_multi_open"] = { type = "comment", color = commentColor }
ShiroKeys["comment_single"] = { type = "comment", color = commentColor }

-- ── number ────────────────────────────────────────
local numberColor = Color3.fromRGB(175, 195, 255)
ShiroKeys["num_binary"] = { type = "number", color = numberColor }
ShiroKeys["num_exp"] = { type = "number", color = numberColor }
ShiroKeys["num_float"] = { type = "number", color = numberColor }
ShiroKeys["num_hex"] = { type = "number", color = numberColor }
ShiroKeys["num_inf"] = { type = "number", color = numberColor }
ShiroKeys["num_integer"] = { type = "number", color = numberColor }
ShiroKeys["num_nan"] = { type = "number", color = numberColor }
ShiroKeys["num_separator"] = { type = "number", color = numberColor }

return ShiroKeys