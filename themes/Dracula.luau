local ThemeKeys = {}

-- Salmon/Coral Red-Orange (keywords like local, function, end, if, then, while)
local keywordColor = Color3.fromRGB(255, 95, 86)
ThemeKeys["and"] = { type = "keyword", color = keywordColor }
ThemeKeys["do"] = { type = "keyword", color = keywordColor }
ThemeKeys["end"] = { type = "keyword", color = keywordColor }
ThemeKeys["export"] = { type = "keyword", color = keywordColor }
ThemeKeys["function"] = { type = "keyword", color = keywordColor }
ThemeKeys["in"] = { type = "keyword", color = keywordColor }
ThemeKeys["inf"] = { type = "keyword", color = keywordColor }
ThemeKeys["local"] = { type = "keyword", color = keywordColor }
ThemeKeys["not"] = { type = "keyword", color = keywordColor }
ThemeKeys["or"] = { type = "keyword", color = keywordColor }
ThemeKeys["then"] = { type = "keyword", color = keywordColor }
ThemeKeys["type"] = { type = "keyword", color = keywordColor }
ThemeKeys["self"] = { type = "keyword", color = keywordColor }

local flowColor = Color3.fromRGB(255, 95, 86)
ThemeKeys["break"] = { type = "flow", color = flowColor }
ThemeKeys["continue"] = { type = "flow", color = flowColor }
ThemeKeys["else"] = { type = "flow", color = flowColor }
ThemeKeys["elseif"] = { type = "flow", color = flowColor }
ThemeKeys["for"] = { type = "flow", color = flowColor }
ThemeKeys["if"] = { type = "flow", color = flowColor }
ThemeKeys["repeat"] = { type = "flow", color = flowColor }
ThemeKeys["return"] = { type = "flow", color = flowColor }
ThemeKeys["until"] = { type = "flow", color = flowColor }
ThemeKeys["while"] = { type = "flow", color = flowColor }

-- Yellow-Orange (literals: true, false, nil and numbers)
local literalColor = Color3.fromRGB(255, 184, 108)
ThemeKeys["false"] = { type = "literal", color = literalColor }
ThemeKeys["nil"] = { type = "literal", color = literalColor }
ThemeKeys["true"] = { type = "literal", color = literalColor }

-- Light Grey/White (operators)
local operatorColor = Color3.fromRGB(200, 200, 200)
ThemeKeys["op_add"] = { type = "operator", color = operatorColor }
ThemeKeys["op_assign"] = { type = "operator", color = operatorColor }
ThemeKeys["op_concat"] = { type = "operator", color = operatorColor }
ThemeKeys["op_div"] = { type = "operator", color = operatorColor }
ThemeKeys["op_eq"] = { type = "operator", color = operatorColor }
ThemeKeys["op_floordiv"] = { type = "operator", color = operatorColor }
ThemeKeys["op_ge"] = { type = "operator", color = operatorColor }
ThemeKeys["op_gt"] = { type = "operator", color = operatorColor }
ThemeKeys["op_le"] = { type = "operator", color = operatorColor }
ThemeKeys["op_len"] = { type = "operator", color = operatorColor }
ThemeKeys["op_lt"] = { type = "operator", color = operatorColor }
ThemeKeys["op_mod"] = { type = "operator", color = operatorColor }
ThemeKeys["op_mul"] = { type = "operator", color = operatorColor }
ThemeKeys["op_neq"] = { type = "operator", color = operatorColor }
ThemeKeys["op_pow"] = { type = "operator", color = operatorColor }
ThemeKeys["op_sub"] = { type = "operator", color = operatorColor }
ThemeKeys["op_unm"] = { type = "operator", color = operatorColor }

-- Teal/Cyan-Green (type annotations)
local typeColor = Color3.fromRGB(80, 210, 180)
ThemeKeys["op_ampersand"] = { type = "type_annotation", color = typeColor }
ThemeKeys["op_arrow"] = { type = "type_annotation", color = typeColor }
ThemeKeys["op_colon"] = { type = "type_annotation", color = typeColor }
ThemeKeys["op_pipe"] = { type = "type_annotation", color = typeColor }
ThemeKeys["op_question"] = { type = "type_annotation", color = typeColor }
ThemeKeys["op_typecast"] = { type = "type_annotation", color = typeColor }
ThemeKeys["typeof"] = { type = "type_annotation", color = typeColor }

-- Teal/Cyan-Green (builtins: print, pairs, ipairs, etc.)
local builtinColor = Color3.fromRGB(80, 210, 180)
ThemeKeys["assert"] = { type = "builtin", color = builtinColor }
ThemeKeys["collectgarbage"] = { type = "builtin", color = builtinColor }
ThemeKeys["error"] = { type = "builtin", color = builtinColor }
ThemeKeys["gcinfo"] = { type = "builtin", color = builtinColor }
ThemeKeys["getfenv"] = { type = "builtin", color = builtinColor }
ThemeKeys["getmetatable"] = { type = "builtin", color = builtinColor }
ThemeKeys["ipairs"] = { type = "builtin", color = builtinColor }
ThemeKeys["loadstring"] = { type = "builtin", color = builtinColor }
ThemeKeys["newproxy"] = { type = "builtin", color = builtinColor }
ThemeKeys["next"] = { type = "builtin", color = builtinColor }
ThemeKeys["pairs"] = { type = "builtin", color = builtinColor }
ThemeKeys["pcall"] = { type = "builtin", color = builtinColor }
ThemeKeys["print"] = { type = "builtin", color = builtinColor }
ThemeKeys["rawequal"] = { type = "builtin", color = builtinColor }
ThemeKeys["rawget"] = { type = "builtin", color = builtinColor }
ThemeKeys["rawlen"] = { type = "builtin", color = builtinColor }
ThemeKeys["rawset"] = { type = "builtin", color = builtinColor }
ThemeKeys["require"] = { type = "builtin", color = builtinColor }
ThemeKeys["select"] = { type = "builtin", color = builtinColor }
ThemeKeys["setfenv"] = { type = "builtin", color = builtinColor }
ThemeKeys["setmetatable"] = { type = "builtin", color = builtinColor }
ThemeKeys["tonumber"] = { type = "builtin", color = builtinColor }
ThemeKeys["tostring"] = { type = "builtin", color = builtinColor }
ThemeKeys["unpack"] = { type = "builtin", color = builtinColor }
ThemeKeys["warn"] = { type = "builtin", color = builtinColor }
ThemeKeys["xpcall"] = { type = "builtin", color = builtinColor }

-- Teal/Cyan-Green (globals: game, workspace, math, etc.)
local globalColor = Color3.fromRGB(80, 210, 180)
ThemeKeys["_G"] = { type = "global", color = globalColor }
ThemeKeys["_VERSION"] = { type = "global", color = globalColor }
ThemeKeys["bit32"] = { type = "global", color = globalColor }
ThemeKeys["buffer"] = { type = "global", color = globalColor }
ThemeKeys["coroutine"] = { type = "global", color = globalColor }
ThemeKeys["debug"] = { type = "global", color = globalColor }
ThemeKeys["game"] = { type = "global", color = globalColor }
ThemeKeys["math"] = { type = "global", color = globalColor }
ThemeKeys["os"] = { type = "global", color = globalColor }
ThemeKeys["plugin"] = { type = "global", color = globalColor }
ThemeKeys["script"] = { type = "global", color = globalColor }
ThemeKeys["shared"] = { type = "global", color = globalColor }
ThemeKeys["string"] = { type = "global", color = globalColor }
ThemeKeys["table"] = { type = "global", color = globalColor }
ThemeKeys["task"] = { type = "global", color = globalColor }
ThemeKeys["utf8"] = { type = "global", color = globalColor }
ThemeKeys["vector"] = { type = "global", color = globalColor }
ThemeKeys["workspace"] = { type = "global", color = globalColor }

-- Teal/Cyan-Green (data types: Color3, Vector3, Instance, UDim2, etc.)
local dataTypeColor = Color3.fromRGB(80, 210, 180)
ThemeKeys["Axes"] = { type = "type", color = dataTypeColor }
ThemeKeys["BrickColor"] = { type = "type", color = dataTypeColor }
ThemeKeys["CFrame"] = { type = "type", color = dataTypeColor }
ThemeKeys["CatalogSearchParams"] = { type = "type", color = dataTypeColor }
ThemeKeys["Color3"] = { type = "type", color = dataTypeColor }
ThemeKeys["ColorSequence"] = { type = "type", color = dataTypeColor }
ThemeKeys["ColorSequenceKeypoint"] = { type = "type", color = dataTypeColor }
ThemeKeys["DateTime"] = { type = "type", color = dataTypeColor }
ThemeKeys["DockWidgetPluginGuiInfo"] = { type = "type", color = dataTypeColor }
ThemeKeys["Enum"] = { type = "type", color = dataTypeColor }
ThemeKeys["EnumItem"] = { type = "type", color = dataTypeColor }
ThemeKeys["Faces"] = { type = "type", color = dataTypeColor }
ThemeKeys["FloatCurveKey"] = { type = "type", color = dataTypeColor }
ThemeKeys["Font"] = { type = "type", color = dataTypeColor }
ThemeKeys["Instance"] = { type = "type", color = dataTypeColor }
ThemeKeys["NumberRange"] = { type = "type", color = dataTypeColor }
ThemeKeys["NumberSequence"] = { type = "type", color = dataTypeColor }
ThemeKeys["NumberSequenceKeypoint"] = { type = "type", color = dataTypeColor }
ThemeKeys["OverlapParams"] = { type = "type", color = dataTypeColor }
ThemeKeys["PathWaypoint"] = { type = "type", color = dataTypeColor }
ThemeKeys["PhysicalProperties"] = { type = "type", color = dataTypeColor }
ThemeKeys["Ray"] = { type = "type", color = dataTypeColor }
ThemeKeys["RaycastParams"] = { type = "type", color = dataTypeColor }
ThemeKeys["RaycastResult"] = { type = "type", color = dataTypeColor }
ThemeKeys["Rect"] = { type = "type", color = dataTypeColor }
ThemeKeys["Region3"] = { type = "type", color = dataTypeColor }
ThemeKeys["Region3int16"] = { type = "type", color = dataTypeColor }
ThemeKeys["RotationCurveKey"] = { type = "type", color = dataTypeColor }
ThemeKeys["SharedTable"] = { type = "type", color = dataTypeColor }
ThemeKeys["TweenInfo"] = { type = "type", color = dataTypeColor }
ThemeKeys["UDim"] = { type = "type", color = dataTypeColor }
ThemeKeys["UDim2"] = { type = "type", color = dataTypeColor }
ThemeKeys["Vector2"] = { type = "type", color = dataTypeColor }
ThemeKeys["Vector2int16"] = { type = "type", color = dataTypeColor }
ThemeKeys["Vector3"] = { type = "type", color = dataTypeColor }
ThemeKeys["Vector3int16"] = { type = "type", color = dataTypeColor }
ThemeKeys["any"] = { type = "type", color = dataTypeColor }
ThemeKeys["boolean"] = { type = "type", color = dataTypeColor }
ThemeKeys["never"] = { type = "type", color = dataTypeColor }
ThemeKeys["number"] = { type = "type", color = dataTypeColor }
ThemeKeys["thread"] = { type = "type", color = dataTypeColor }
ThemeKeys["unknown"] = { type = "type", color = dataTypeColor }
ThemeKeys["userdata"] = { type = "type", color = dataTypeColor }
ThemeKeys["void"] = { type = "type", color = dataTypeColor }

-- Pure White (metamethods)
local metamethodColor = Color3.fromRGB(255, 255, 255)
ThemeKeys["__add"] = { type = "metamethod", color = metamethodColor }
ThemeKeys["__band"] = { type = "metamethod", color = metamethodColor }
ThemeKeys["__bnot"] = { type = "metamethod", color = metamethodColor }
ThemeKeys["__bor"] = { type = "metamethod", color = metamethodColor }
ThemeKeys["__bxor"] = { type = "metamethod", color = metamethodColor }
ThemeKeys["__call"] = { type = "metamethod", color = metamethodColor }
ThemeKeys["__concat"] = { type = "metamethod", color = metamethodColor }
ThemeKeys["__div"] = { type = "metamethod", color = metamethodColor }
ThemeKeys["__eq"] = { type = "metamethod", color = metamethodColor }
ThemeKeys["__idiv"] = { type = "metamethod", color = metamethodColor }
ThemeKeys["__index"] = { type = "metamethod", color = metamethodColor }
ThemeKeys["__iter"] = { type = "metamethod", color = metamethodColor }
ThemeKeys["__le"] = { type = "metamethod", color = metamethodColor }
ThemeKeys["__len"] = { type = "metamethod", color = metamethodColor }
ThemeKeys["__lt"] = { type = "metamethod", color = metamethodColor }
ThemeKeys["__mod"] = { type = "metamethod", color = metamethodColor }
ThemeKeys["__mul"] = { type = "metamethod", color = metamethodColor }
ThemeKeys["__newindex"] = { type = "metamethod", color = metamethodColor }
ThemeKeys["__pow"] = { type = "metamethod", color = metamethodColor }
ThemeKeys["__shl"] = { type = "metamethod", color = metamethodColor }
ThemeKeys["__shr"] = { type = "metamethod", color = metamethodColor }
ThemeKeys["__sub"] = { type = "metamethod", color = metamethodColor }
ThemeKeys["__tostring"] = { type = "metamethod", color = metamethodColor }
ThemeKeys["__type"] = { type = "metamethod", color = metamethodColor }
ThemeKeys["__unm"] = { type = "metamethod", color = metamethodColor }

-- Dark Grey (comments - subtle, unobtrusive)
local commentColor = Color3.fromRGB(98, 114, 164)
ThemeKeys["comment_multi_close"] = { type = "comment", color = commentColor }
ThemeKeys["comment_multi_open"] = { type = "comment", color = commentColor }
ThemeKeys["comment_single"] = { type = "comment", color = commentColor }

-- Yellow-Orange (numbers)
local numberColor = Color3.fromRGB(255, 184, 108)
ThemeKeys["num_binary"] = { type = "number", color = numberColor }
ThemeKeys["num_exp"] = { type = "number", color = numberColor }
ThemeKeys["num_float"] = { type = "number", color = numberColor }
ThemeKeys["num_hex"] = { type = "number", color = numberColor }
ThemeKeys["num_inf"] = { type = "number", color = numberColor }
ThemeKeys["num_integer"] = { type = "number", color = numberColor }
ThemeKeys["num_nan"] = { type = "number", color = numberColor }
ThemeKeys["num_separator"] = { type = "number", color = numberColor }

return function() return ThemeKeys end
