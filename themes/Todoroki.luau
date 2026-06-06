local TodorokiKeys = {}
function GetData()
	local Config = {
		Name = "LuaU",
		Version = "1.0.0",
		Author = "Yera"
	}
end

-- ── keyword ───────────────────────────────────────
local keywordColor = Color3.fromRGB(80, 185, 235)
TodorokiKeys["and"] = { type = "keyword", color = keywordColor }
TodorokiKeys["do"] = { type = "keyword", color = keywordColor }
TodorokiKeys["end"] = { type = "keyword", color = keywordColor }
TodorokiKeys["export"] = { type = "keyword", color = keywordColor }
TodorokiKeys["function"] = { type = "keyword", color = keywordColor }
TodorokiKeys["in"] = { type = "keyword", color = keywordColor }
TodorokiKeys["inf"] = { type = "keyword", color = keywordColor }
TodorokiKeys["local"] = { type = "keyword", color = keywordColor }
TodorokiKeys["not"] = { type = "keyword", color = keywordColor }
TodorokiKeys["or"] = { type = "keyword", color = keywordColor }
TodorokiKeys["then"] = { type = "keyword", color = keywordColor }
TodorokiKeys["type"] = { type = "keyword", color = keywordColor }
TodorokiKeys["self"] = { type = "keyword", color = keywordColor }

-- ── flow ──────────────────────────────────────────
local flowColor = Color3.fromRGB(235, 115, 50)
TodorokiKeys["break"] = { type = "flow", color = flowColor }
TodorokiKeys["continue"] = { type = "flow", color = flowColor }
TodorokiKeys["else"] = { type = "flow", color = flowColor }
TodorokiKeys["elseif"] = { type = "flow", color = flowColor }
TodorokiKeys["for"] = { type = "flow", color = flowColor }
TodorokiKeys["if"] = { type = "flow", color = flowColor }
TodorokiKeys["repeat"] = { type = "flow", color = flowColor }
TodorokiKeys["return"] = { type = "flow", color = flowColor }
TodorokiKeys["until"] = { type = "flow", color = flowColor }
TodorokiKeys["while"] = { type = "flow", color = flowColor }

-- ── literal ───────────────────────────────────────
local literalColor = Color3.fromRGB(230, 240, 250)
TodorokiKeys["false"] = { type = "literal", color = literalColor }
TodorokiKeys["nil"] = { type = "literal", color = literalColor }
TodorokiKeys["true"] = { type = "literal", color = literalColor }

-- ── operator ──────────────────────────────────────
local operatorColor = Color3.fromRGB(175, 185, 200)
TodorokiKeys["op_add"] = { type = "operator", color = operatorColor }
TodorokiKeys["op_assign"] = { type = "operator", color = operatorColor }
TodorokiKeys["op_concat"] = { type = "operator", color = operatorColor }
TodorokiKeys["op_div"] = { type = "operator", color = operatorColor }
TodorokiKeys["op_eq"] = { type = "operator", color = operatorColor }
TodorokiKeys["op_floordiv"] = { type = "operator", color = operatorColor }
TodorokiKeys["op_ge"] = { type = "operator", color = operatorColor }
TodorokiKeys["op_gt"] = { type = "operator", color = operatorColor }
TodorokiKeys["op_le"] = { type = "operator", color = operatorColor }
TodorokiKeys["op_len"] = { type = "operator", color = operatorColor }
TodorokiKeys["op_lt"] = { type = "operator", color = operatorColor }
TodorokiKeys["op_mod"] = { type = "operator", color = operatorColor }
TodorokiKeys["op_mul"] = { type = "operator", color = operatorColor }
TodorokiKeys["op_neq"] = { type = "operator", color = operatorColor }
TodorokiKeys["op_pow"] = { type = "operator", color = operatorColor }
TodorokiKeys["op_sub"] = { type = "operator", color = operatorColor }
TodorokiKeys["op_unm"] = { type = "operator", color = operatorColor }

-- ── type_annotation ───────────────────────────────
local typeColor = Color3.fromRGB(50, 155, 215)
TodorokiKeys["op_ampersand"] = { type = "type_annotation", color = typeColor }
TodorokiKeys["op_arrow"] = { type = "type_annotation", color = typeColor }
TodorokiKeys["op_colon"] = { type = "type_annotation", color = typeColor }
TodorokiKeys["op_pipe"] = { type = "type_annotation", color = typeColor }
TodorokiKeys["op_question"] = { type = "type_annotation", color = typeColor }
TodorokiKeys["op_typecast"] = { type = "type_annotation", color = typeColor }
TodorokiKeys["typeof"] = { type = "type_annotation", color = typeColor }

-- ── builtin ───────────────────────────────────────
local builtinColor = Color3.fromRGB(100, 200, 245)
TodorokiKeys["assert"] = { type = "builtin", color = builtinColor }
TodorokiKeys["collectgarbage"] = { type = "builtin", color = builtinColor }
TodorokiKeys["error"] = { type = "builtin", color = builtinColor }
TodorokiKeys["gcinfo"] = { type = "builtin", color = builtinColor }
TodorokiKeys["getfenv"] = { type = "builtin", color = builtinColor }
TodorokiKeys["getmetatable"] = { type = "builtin", color = builtinColor }
TodorokiKeys["ipairs"] = { type = "builtin", color = builtinColor }
TodorokiKeys["loadstring"] = { type = "builtin", color = builtinColor }
TodorokiKeys["newproxy"] = { type = "builtin", color = builtinColor }
TodorokiKeys["next"] = { type = "builtin", color = builtinColor }
TodorokiKeys["pairs"] = { type = "builtin", color = builtinColor }
TodorokiKeys["pcall"] = { type = "builtin", color = builtinColor }
TodorokiKeys["print"] = { type = "builtin", color = builtinColor }
TodorokiKeys["rawequal"] = { type = "builtin", color = builtinColor }
TodorokiKeys["rawget"] = { type = "builtin", color = builtinColor }
TodorokiKeys["rawlen"] = { type = "builtin", color = builtinColor }
TodorokiKeys["rawset"] = { type = "builtin", color = builtinColor }
TodorokiKeys["require"] = { type = "builtin", color = builtinColor }
TodorokiKeys["select"] = { type = "builtin", color = builtinColor }
TodorokiKeys["setfenv"] = { type = "builtin", color = builtinColor }
TodorokiKeys["setmetatable"] = { type = "builtin", color = builtinColor }
TodorokiKeys["tonumber"] = { type = "builtin", color = builtinColor }
TodorokiKeys["tostring"] = { type = "builtin", color = builtinColor }
TodorokiKeys["unpack"] = { type = "builtin", color = builtinColor }
TodorokiKeys["warn"] = { type = "builtin", color = builtinColor }
TodorokiKeys["xpcall"] = { type = "builtin", color = builtinColor }

-- ── global ────────────────────────────────────────
local globalColor = Color3.fromRGB(65, 170, 225)
TodorokiKeys["_G"] = { type = "global", color = globalColor }
TodorokiKeys["_VERSION"] = { type = "global", color = globalColor }
TodorokiKeys["bit32"] = { type = "global", color = globalColor }
TodorokiKeys["buffer"] = { type = "global", color = globalColor }
TodorokiKeys["coroutine"] = { type = "global", color = globalColor }
TodorokiKeys["debug"] = { type = "global", color = globalColor }
TodorokiKeys["game"] = { type = "global", color = globalColor }
TodorokiKeys["math"] = { type = "global", color = globalColor }
TodorokiKeys["os"] = { type = "global", color = globalColor }
TodorokiKeys["plugin"] = { type = "global", color = globalColor }
TodorokiKeys["script"] = { type = "global", color = globalColor }
TodorokiKeys["shared"] = { type = "global", color = globalColor }
TodorokiKeys["string"] = { type = "global", color = globalColor }
TodorokiKeys["table"] = { type = "global", color = globalColor }
TodorokiKeys["task"] = { type = "global", color = globalColor }
TodorokiKeys["utf8"] = { type = "global", color = globalColor }
TodorokiKeys["vector"] = { type = "global", color = globalColor }
TodorokiKeys["workspace"] = { type = "global", color = globalColor }

-- ── type ──────────────────────────────────────────
local dataTypeColor = Color3.fromRGB(50, 155, 215)
TodorokiKeys["Axes"] = { type = "type", color = dataTypeColor }
TodorokiKeys["BrickColor"] = { type = "type", color = dataTypeColor }
TodorokiKeys["CFrame"] = { type = "type", color = dataTypeColor }
TodorokiKeys["CatalogSearchParams"] = { type = "type", color = dataTypeColor }
TodorokiKeys["Color3"] = { type = "type", color = dataTypeColor }
TodorokiKeys["ColorSequence"] = { type = "type", color = dataTypeColor }
TodorokiKeys["ColorSequenceKeypoint"] = { type = "type", color = dataTypeColor }
TodorokiKeys["DateTime"] = { type = "type", color = dataTypeColor }
TodorokiKeys["DockWidgetPluginGuiInfo"] = { type = "type", color = dataTypeColor }
TodorokiKeys["Enum"] = { type = "type", color = dataTypeColor }
TodorokiKeys["EnumItem"] = { type = "type", color = dataTypeColor }
TodorokiKeys["Faces"] = { type = "type", color = dataTypeColor }
TodorokiKeys["FloatCurveKey"] = { type = "type", color = dataTypeColor }
TodorokiKeys["Font"] = { type = "type", color = dataTypeColor }
TodorokiKeys["Instance"] = { type = "type", color = dataTypeColor }
TodorokiKeys["NumberRange"] = { type = "type", color = dataTypeColor }
TodorokiKeys["NumberSequence"] = { type = "type", color = dataTypeColor }
TodorokiKeys["NumberSequenceKeypoint"] = { type = "type", color = dataTypeColor }
TodorokiKeys["OverlapParams"] = { type = "type", color = dataTypeColor }
TodorokiKeys["PathWaypoint"] = { type = "type", color = dataTypeColor }
TodorokiKeys["PhysicalProperties"] = { type = "type", color = dataTypeColor }
TodorokiKeys["Ray"] = { type = "type", color = dataTypeColor }
TodorokiKeys["RaycastParams"] = { type = "type", color = dataTypeColor }
TodorokiKeys["RaycastResult"] = { type = "type", color = dataTypeColor }
TodorokiKeys["Rect"] = { type = "type", color = dataTypeColor }
TodorokiKeys["Region3"] = { type = "type", color = dataTypeColor }
TodorokiKeys["Region3int16"] = { type = "type", color = dataTypeColor }
TodorokiKeys["RotationCurveKey"] = { type = "type", color = dataTypeColor }
TodorokiKeys["SharedTable"] = { type = "type", color = dataTypeColor }
TodorokiKeys["TweenInfo"] = { type = "type", color = dataTypeColor }
TodorokiKeys["UDim"] = { type = "type", color = dataTypeColor }
TodorokiKeys["UDim2"] = { type = "type", color = dataTypeColor }
TodorokiKeys["Vector2"] = { type = "type", color = dataTypeColor }
TodorokiKeys["Vector2int16"] = { type = "type", color = dataTypeColor }
TodorokiKeys["Vector3"] = { type = "type", color = dataTypeColor }
TodorokiKeys["Vector3int16"] = { type = "type", color = dataTypeColor }
TodorokiKeys["any"] = { type = "type", color = dataTypeColor }
TodorokiKeys["boolean"] = { type = "type", color = dataTypeColor }
TodorokiKeys["never"] = { type = "type", color = dataTypeColor }
TodorokiKeys["number"] = { type = "type", color = dataTypeColor }
TodorokiKeys["thread"] = { type = "type", color = dataTypeColor }
TodorokiKeys["unknown"] = { type = "type", color = dataTypeColor }
TodorokiKeys["userdata"] = { type = "type", color = dataTypeColor }
TodorokiKeys["void"] = { type = "type", color = dataTypeColor }

-- ── metamethod ────────────────────────────────────
local metamethodColor = Color3.fromRGB(220, 235, 250)
TodorokiKeys["__add"] = { type = "metamethod", color = metamethodColor }
TodorokiKeys["__band"] = { type = "metamethod", color = metamethodColor }
TodorokiKeys["__bnot"] = { type = "metamethod", color = metamethodColor }
TodorokiKeys["__bor"] = { type = "metamethod", color = metamethodColor }
TodorokiKeys["__bxor"] = { type = "metamethod", color = metamethodColor }
TodorokiKeys["__call"] = { type = "metamethod", color = metamethodColor }
TodorokiKeys["__concat"] = { type = "metamethod", color = metamethodColor }
TodorokiKeys["__div"] = { type = "metamethod", color = metamethodColor }
TodorokiKeys["__eq"] = { type = "metamethod", color = metamethodColor }
TodorokiKeys["__idiv"] = { type = "metamethod", color = metamethodColor }
TodorokiKeys["__index"] = { type = "metamethod", color = metamethodColor }
TodorokiKeys["__iter"] = { type = "metamethod", color = metamethodColor }
TodorokiKeys["__le"] = { type = "metamethod", color = metamethodColor }
TodorokiKeys["__len"] = { type = "metamethod", color = metamethodColor }
TodorokiKeys["__lt"] = { type = "metamethod", color = metamethodColor }
TodorokiKeys["__mod"] = { type = "metamethod", color = metamethodColor }
TodorokiKeys["__mul"] = { type = "metamethod", color = metamethodColor }
TodorokiKeys["__newindex"] = { type = "metamethod", color = metamethodColor }
TodorokiKeys["__pow"] = { type = "metamethod", color = metamethodColor }
TodorokiKeys["__shl"] = { type = "metamethod", color = metamethodColor }
TodorokiKeys["__shr"] = { type = "metamethod", color = metamethodColor }
TodorokiKeys["__sub"] = { type = "metamethod", color = metamethodColor }
TodorokiKeys["__tostring"] = { type = "metamethod", color = metamethodColor }
TodorokiKeys["__type"] = { type = "metamethod", color = metamethodColor }
TodorokiKeys["__unm"] = { type = "metamethod", color = metamethodColor }

-- ── comment ───────────────────────────────────────
local commentColor = Color3.fromRGB(65, 75, 95)
TodorokiKeys["comment_multi_close"] = { type = "comment", color = commentColor }
TodorokiKeys["comment_multi_open"] = { type = "comment", color = commentColor }
TodorokiKeys["comment_single"] = { type = "comment", color = commentColor }

-- ── number ────────────────────────────────────────
local numberColor = Color3.fromRGB(235, 185, 100)
TodorokiKeys["num_binary"] = { type = "number", color = numberColor }
TodorokiKeys["num_exp"] = { type = "number", color = numberColor }
TodorokiKeys["num_float"] = { type = "number", color = numberColor }
TodorokiKeys["num_hex"] = { type = "number", color = numberColor }
TodorokiKeys["num_inf"] = { type = "number", color = numberColor }
TodorokiKeys["num_integer"] = { type = "number", color = numberColor }
TodorokiKeys["num_nan"] = { type = "number", color = numberColor }
TodorokiKeys["num_separator"] = { type = "number", color = numberColor }

return TodorokiKeys