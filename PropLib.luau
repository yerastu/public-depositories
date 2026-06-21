local PropertiesModule = {}

-- [[ UTILITIES ]] --
local function create(data)
    local insts = {}
    for i,v in pairs(data) do insts[v[1]] = Instance.new(v[2]) end
    for _,v in pairs(data) do
        for prop,val in pairs(v[3]) do
            if type(val) == "table" then
                insts[v[1]][prop] = insts[val[1]]
            else
                insts[v[1]][prop] = val
            end
        end
    end
    return insts[1]
end

local function createSimple(class,props)
    local inst = Instance.new(class)
    for i,v in next,props do inst[i] = v end
    return inst
end

local function CheckMouseInGui(gui)
    if gui == nil then return false end
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local guiPosition = gui.AbsolutePosition
    local guiSize = gui.AbsoluteSize    
    return mouse.X >= guiPosition.X and mouse.X < guiPosition.X + guiSize.X and mouse.Y >= guiPosition.Y and mouse.Y < guiPosition.Y + guiSize.Y
end

-- [[ SETTINGS THEME (Adjust as needed) ]] --
local Settings = {
    Properties = {
        MaxConflictCheck = 50,
        ShowDeprecated = false,
        ShowHidden = false,
        ClearOnFocus = false,
        LoadstringInput = true,
        NumberRounding = 3,
        ShowAttributes = true,
        MaxAttributes = 50,
        ScaleType = 1
    },
    Theme = {
        Main1 = Color3.fromRGB(52,52,52),
        Main2 = Color3.fromRGB(45,45,45),
        Outline1 = Color3.fromRGB(33,33,33),
        Outline2 = Color3.fromRGB(55,55,55),
        Outline3 = Color3.fromRGB(30,30,30),
        TextBox = Color3.fromRGB(38,38,38),
        Menu = Color3.fromRGB(32,32,32),
        ListSelection = Color3.fromRGB(11,90,175),
        Button = Color3.fromRGB(60,60,60),
        ButtonHover = Color3.fromRGB(68,68,68),
        ButtonPress = Color3.fromRGB(40,40,40),
        Text = Color3.fromRGB(255,255,255),
        PlaceholderText = Color3.fromRGB(100,100,100),
        Important = Color3.fromRGB(255,0,0)
    }
}

-- [[ STANDALONE LIB COMPONENTS FOR PROPERTIES ]] --
local Lib = {}

Lib.Signal = (function()
    local funcs = {}
    funcs.Connect = function(self,func)
        local con = {Signal = self, Func = func, Disconnect = function(c)
            local pos = table.find(c.Signal.Connections, c)
            if pos then table.remove(c.Signal.Connections, pos) end
        end}
        self.Connections[#self.Connections+1] = con
        return con
    end
    funcs.Fire = function(self,...)
        for i,v in next,self.Connections do
            xpcall(coroutine.wrap(v.Func), function(e) warn(e.."\n"..debug.traceback()) end, ...)
        end
    end
    return {new = function() return setmetatable({Connections = {}}, {__index = funcs}) end}
end)()

Lib.Checkbox = (function()
    local funcs = {}
    funcs.SetState = function(self, val)
        self.Toggled = val
        if self.Toggled then
            self.GuiElems.Checkmark2.Visible = true
            self.GuiElems.Middle.Visible = false
        else
            self.GuiElems.Checkmark2.Visible = false
            self.GuiElems.Middle.Visible = self.Toggled == nil
        end
    end
    return {
        new = function(style)
            local obj = setmetatable({
                Toggled = false, Disabled = false, OnInput = Lib.Signal.new(), Style = style or 1
            }, {__index = funcs})
            
            local checkbox = create({
                {1,"ImageButton",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderSizePixel=0,Name="Checkbox",Position=UDim2.new(0,3,0,3),Size=UDim2.new(0,16,0,16)}},
                {3,"Frame",{BackgroundColor3=Color3.new(0.1019,0.1019,0.1019),BorderSizePixel=0,Name="outline",Parent={1},Size=UDim2.new(0,16,0,16)}},
                {4,"Frame",{BackgroundColor3=Color3.new(0.1411,0.1411,0.1411),BorderSizePixel=0,Name="filler",Parent={3},Position=UDim2.new(0,1,0,1),Size=UDim2.new(0,14,0,14)}},
                {11,"ImageLabel",{AnchorPoint=Vector2.new(0.5,0.5),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Image="rbxassetid://6401617475",ImageColor3=Color3.new(0.2078,0.6980,0.9843),Name="checkmark2",Parent={4},Position=UDim2.new(0.5,0,0.5,0),Size=UDim2.new(0,12,0,12),Visible=false}},
                {12,"ImageLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Image="rbxassetid://6425281788",ImageTransparency=0.2,Name="middle",Parent={4},ScaleType=2,Size=UDim2.new(1,0,1,0),TileSize=UDim2.new(0,2,0,2),Visible=false}},
                {13,"UICorner",{CornerRadius=UDim.new(0,2),Parent={3}}}
            })
            
            obj.Gui = checkbox
            obj.GuiElems = {
                Outline = checkbox.outline, Filler = checkbox.outline.filler,
                Checkmark2 = checkbox.outline.filler.checkmark2, Middle = checkbox.outline.filler.middle
            }
            
            checkbox.Activated:Connect(function()
                if not obj.Disabled then obj:SetState(not obj.Toggled) end
                obj.OnInput:Fire()
            end)
            return obj
        end
    }
end)()

Lib.ScrollBar = (function()
    local funcs = {}
    funcs.Update = function(self)
        local total, visible, index = self.TotalSpace, self.VisibleSpace, self.Index
        self.Index = math.clamp(self.Index, 0, math.max(0, total - visible))
        local scrollThumb = self.GuiElems.ScrollThumb
        if not (self.Index > 0 or self.Index + visible < total) then
            scrollThumb.Visible = false
        else
            scrollThumb.Visible = true
            if self.Horizontal then
                scrollThumb.Size = UDim2.new(visible/total,0,1,0)
                if scrollThumb.AbsoluteSize.X < 16 then scrollThumb.Size = UDim2.new(0,16,1,0) end
                local fs, bs = self.GuiElems.ScrollThumbFrame.AbsoluteSize.X, scrollThumb.AbsoluteSize.X
                scrollThumb.Position = UDim2.new((self.Index/(total-visible))*(fs-bs)/fs,0,0,0)
            else
                scrollThumb.Size = UDim2.new(1,0,visible/total,0)
                if scrollThumb.AbsoluteSize.Y < 16 then scrollThumb.Size = UDim2.new(1,0,0,16) end
                local fs, bs = self.GuiElems.ScrollThumbFrame.AbsoluteSize.Y, scrollThumb.AbsoluteSize.Y
                scrollThumb.Position = UDim2.new(0,0,(self.Index/(total-visible))*(fs-bs)/fs,0)
            end
        end
    end
    funcs.ScrollTo = function(self, ind)
        self.Index = ind
        self:Update()
        self.Scrolled:Fire()
    end
    return {
        new = function(hor)
            local obj = setmetatable({
                Index = 0, VisibleSpace = 0, TotalSpace = 0, Horizontal = hor,
                Scrolled = Lib.Signal.new(), GuiElems = {}
            }, {__index = funcs})
            
            local newFrame = createSimple("Frame",{BackgroundColor3=Color3.new(0.35,0.35,0.35), BackgroundTransparency=0, BorderSizePixel=0, Position=UDim2.new(1,-16,0,0), Size=UDim2.new(0,16,1,0), ZIndex=1})
            if hor then newFrame.Size = UDim2.new(1,0,0,16) end
            
            local scrollThumbFrame = createSimple("ImageButton", {BackgroundTransparency = 1, Parent = newFrame})
            if hor then
                scrollThumbFrame.Position = UDim2.new(0,16,0,0) scrollThumbFrame.Size = UDim2.new(1,-32,1,0)
            else
                scrollThumbFrame.Position = UDim2.new(0,0,0,16) scrollThumbFrame.Size = UDim2.new(1,0,1,-32)
            end
            
            local scrollThumb = createSimple("Frame", {BackgroundColor3 = Color3.fromRGB(60,60,60), BorderSizePixel = 0, Parent = scrollThumbFrame})
            obj.GuiElems.ScrollThumb = scrollThumb
            obj.GuiElems.ScrollThumbFrame = scrollThumbFrame
            obj.Gui = newFrame
            
            newFrame.MouseWheelForward:Connect(function() obj:ScrollTo(obj.Index - 3) end)
            newFrame.MouseWheelBackward:Connect(function() obj:ScrollTo(obj.Index + 3) end)
            return obj
        end
    }
end)()

Lib.ViewportTextBox = (function()
    local textService = game:GetService("TextService")
    return {
        convert = function(textbox)
            local view = Instance.new("Frame")
            view.BackgroundTransparency = textbox.BackgroundTransparency
            view.BackgroundColor3 = textbox.BackgroundColor3
            view.BorderSizePixel = textbox.BorderSizePixel
            view.BorderColor3 = textbox.BorderColor3
            view.Position = textbox.Position
            view.Size = textbox.Size
            view.ClipsDescendants = true
            textbox.BackgroundTransparency = 1
            textbox.Position = UDim2.new(0,0,0,0)
            textbox.Size = UDim2.new(1,0,1,0)
            textbox.TextXAlignment = Enum.TextXAlignment.Left
            
            view.Parent = textbox.Parent
            textbox.Parent = view
            
            textbox:GetPropertyChangedSignal("CursorPosition"):Connect(function()
                local text = textbox.Text
                local cursorPos = textbox.CursorPosition
                if text == "" or cursorPos == -1 then textbox.Position = UDim2.new(0,0,0,0) return end
                local cursorText = text:sub(1,cursorPos-1)
                local leftEnd = -textbox.Position.X.Offset
                local rightEnd = leftEnd + view.AbsoluteSize.X
                local totalTextSize = textService:GetTextSize(text,textbox.TextSize,textbox.Font,Vector2.new(99999,100)).X
                local cursorTextSize = textService:GetTextSize(cursorText,textbox.TextSize,textbox.Font,Vector2.new(99999,100)).X
                
                local pos
                if cursorTextSize > rightEnd then pos = math.max(-1,cursorTextSize - view.AbsoluteSize.X + 2)
                elseif cursorTextSize < leftEnd then pos = math.max(-1,cursorTextSize-2)
                elseif totalTextSize < rightEnd then pos = math.max(-1,totalTextSize - view.AbsoluteSize.X + 2) end
                
                if pos then textbox.Position = UDim2.new(0,-pos,0,0) textbox.Size = UDim2.new(1,pos,1,0) end
            end)
            return textbox
        end
    }
end)()

-- [[ PROPERTIES LOGIC ]] --

local Properties = {}
local API, RMD
local scrollV, scrollH
local categoryOrder
local props, viewList, expanded, indexableProps, propEntries, autoUpdateObjs = {},{},{},{},{},{}
local inputBox, inputTextBox, inputProp
local checkboxes, propCons = {},{}

Properties.GuiElems = {}
Properties.Index = 0
Properties.ViewWidth = 0
Properties.MinInputWidth = 100
Properties.EntryIndent = 16
Properties.EntryOffset = 4
Properties.NameWidthCache = {}
Properties.SubPropCache = {}
Properties.ClassLists = {}
Properties.SearchText = ""
Properties.SelectionList = {} -- Array of instances provided by user

Properties.AddAttributeProp = {Category = "Attributes", Class = "", Name = "", SpecialRow = "AddAttribute", Tags = {}}

Properties.IgnoreProps = {
    ["DataModel"] = {
        ["PrivateServerId"] = true,
        ["PrivateServerOwnerId"] = true,
        ["VIPServerId"] = true,
        ["VIPServerOwnerId"] = true
    }
}

Properties.ExpandableTypes = {
    ["Vector2"]=true, ["Vector3"]=true, ["UDim"]=true, ["UDim2"]=true, ["CFrame"]=true,
    ["Rect"]=true, ["PhysicalProperties"]=true, ["Ray"]=true, ["NumberRange"]=true,
    ["Faces"]=true, ["Axes"]=true
}

Properties.CollapsedCategories = {
    ["Surface Inputs"] = true,
    ["Surface"] = true
}

Properties.ConflictSubProps = {
    ["Vector2"] = {"X","Y"},
    ["Vector3"] = {"X","Y","Z"},
    ["UDim"] = {"Scale","Offset"},
    ["UDim2"] = {"X","X.Scale","X.Offset","Y","Y.Scale","Y.Offset"},
    ["CFrame"] = {"Position","Position.X","Position.Y","Position.Z","RightVector","RightVector.X","RightVector.Y","RightVector.Z","UpVector","UpVector.X","UpVector.Y","UpVector.Z","LookVector","LookVector.X","LookVector.Y","LookVector.Z"},
    ["Rect"] = {"Min.X","Min.Y","Max.X","Max.Y"},
    ["PhysicalProperties"] = {"Density","Elasticity","ElasticityWeight","Friction","FrictionWeight"},
    ["Ray"] = {"Origin","Origin.X","Origin.Y","Origin.Z","Direction","Direction.X","Direction.Y","Direction.Z"},
    ["NumberRange"] = {"Min","Max"},
    ["Faces"] = {"Back","Bottom","Front","Left","Right","Top"},
    ["Axes"] = {"X","Y","Z"}
}

Properties.RoundableTypes = {
    ["float"]=true, ["double"]=true, ["Color3"]=true, ["UDim"]=true, ["UDim2"]=true,
    ["Vector2"]=true, ["Vector3"]=true, ["NumberRange"]=true, ["Rect"]=true,
    ["NumberSequence"]=true, ["ColorSequence"]=true, ["Ray"]=true, ["CFrame"]=true
}

Properties.TypeNameConvert = {
    ["number"] = "double",
    ["boolean"] = "bool"
}

Properties.ToNumberTypes = {
    ["int"]=true, ["int64"]=true, ["float"]=true, ["double"]=true
}

-- Utility Methods
Properties.StringToValue = function(prop,str)
    local typeName = prop.ValueType.Name
    if typeName == "string" or typeName == "Content" then return str
    elseif Properties.ToNumberTypes[typeName] then return tonumber(str)
    elseif typeName == "Vector2" then local v=str:split(",") return #v>=2 and Vector2.new(tonumber(v[1]),tonumber(v[2]))
    elseif typeName == "Vector3" then local v=str:split(",") return #v>=3 and Vector3.new(tonumber(v[1]),tonumber(v[2]),tonumber(v[3]))
    elseif typeName == "UDim" then local v=str:split(",") return #v>=2 and UDim.new(tonumber(v[1]),tonumber(v[2]))
    elseif typeName == "UDim2" then local v=str:gsub("[{}]",""):split(",") return #v>=4 and UDim2.new(tonumber(v[1]),tonumber(v[2]),tonumber(v[3]),tonumber(v[4]))
    elseif typeName == "Color3" then local v=str:gsub("[{}]",""):split(",") local s,r = pcall(Color3.fromRGB,unpack(v)) if s and #v>=3 then return r end
    end return nil
end

Properties.ValueToString = function(prop,val)
    local typeName = prop.ValueType.Name
    if typeName == "Color3" then
        return string.format("%d, %d, %d", math.round(val.r*255), math.round(val.g*255), math.round(val.b*255))
    elseif typeName == "NumberRange" then
        return val.Min..", "..val.Max
    end
    return tostring(val)
end

Properties.GetIndexableProps = function(obj,classData)
    local ignoreProps = Properties.IgnoreProps[classData.Name] or {}
    local result, count = {}, 1
    for i = 1,#classData.Properties do
        local prop = classData.Properties[i]
        if not ignoreProps[prop.Name] then
            if pcall(function() return obj[prop.Name] end) then
                result[count] = prop count = count + 1
            end
        end
    end
    return result
end

-- Generates UI row for a single property
Properties.NewPropEntry = function(index)
    local newEntry = Properties.EntryTemplate:Clone()
    local nameFrame = newEntry.NameFrame
    local valueFrame = newEntry.ValueFrame
    
    local newCheckbox = Lib.Checkbox.new(1)
    newCheckbox.Gui.Position = UDim2.new(0,3,0,3)
    newCheckbox.Gui.Parent = valueFrame
    newCheckbox.OnInput:Connect(function()
        local prop = viewList[index + Properties.Index]
        if prop then Properties.SetProp(prop, newCheckbox.Toggled) end
    end)
    checkboxes[index] = newCheckbox

    newEntry.Position = UDim2.new(0,0,0,23*(index-1))

    nameFrame.Expand.MouseButton1Down:Connect(function()
        local prop = viewList[index + Properties.Index]
        if not prop then return end
        local fullName = (prop.CategoryName and "CAT_"..prop.CategoryName) or prop.Class.."."..prop.Name..(prop.SubName or "")
        expanded[fullName] = not expanded[fullName]
        Properties.Update()
        Properties.Refresh()
    end)

    valueFrame.ValueBox.MouseButton1Down:Connect(function()
        local prop = viewList[index + Properties.Index]
        if prop then Properties.SetInputProp(prop, index) end
    end)

    newEntry.Parent = Properties.GuiElems.PropsFrame
    return {
        Gui = newEntry,
        GuiElems = {
            NameFrame = nameFrame, ValueFrame = valueFrame,
            PropName = nameFrame.PropName, ValueBox = valueFrame.ValueBox,
            Expand = nameFrame.Expand, Checkbox = valueFrame.Checkbox,
            RowButton = newEntry.RowButton, EditAttributeButton = newEntry.EditAttributeButton,
            ToggleAttributes = nameFrame.ToggleAttributes
        }
    }
end

Properties.MakeSubProp = function(prop,subName,valueType,displayName)
    local subProp = {}
    for i,v in pairs(prop) do subProp[i] = v end
    subProp.RootType = subProp.RootType or subProp.ValueType
    subProp.ValueType = valueType
    subProp.SubName = subProp.SubName and (subProp.SubName..subName) or subName
    subProp.DisplayName = displayName
    return subProp
end

Properties.GetExpandedProps = function(prop) 
    local result = {}
    local typeName = prop.ValueType.Name
    local msp = Properties.MakeSubProp
    if typeName == "Vector2" then
        result[1]=msp(prop,".X",{Name="float"}) result[2]=msp(prop,".Y",{Name="float"})
    elseif typeName == "Vector3" then
        result[1]=msp(prop,".X",{Name="float"}) result[2]=msp(prop,".Y",{Name="float"}) result[3]=msp(prop,".Z",{Name="float"})
    elseif typeName == "UDim2" then
        result[1]=msp(prop,".X",{Name="UDim"}) result[2]=msp(prop,".Y",{Name="UDim"})
    elseif typeName == "CFrame" then
        result[1]=msp(prop,".Position",{Name="Vector3"})
    end
    return result
end

Properties.UpdateView = function()
    local maxEntries = math.ceil(Properties.GuiElems.PropsFrame.AbsoluteSize.Y / 23)
    local maxX = Properties.GuiElems.PropsFrame.AbsoluteSize.X
    local totalWidth = Properties.ViewWidth + Properties.MinInputWidth

    scrollV.VisibleSpace = maxEntries
    scrollV.TotalSpace = #viewList + 1
    scrollH.VisibleSpace = maxX
    scrollH.TotalSpace = totalWidth

    scrollV.Gui.Visible = #viewList + 1 > maxEntries
    scrollH.Gui.Visible = Settings.Properties.ScaleType == 0 and totalWidth > maxX

    local oldSize = Properties.GuiElems.PropsFrame.Size
    Properties.GuiElems.PropsFrame.Size = UDim2.new(1,(scrollV.Gui.Visible and -16 or 0),1,(scrollH.Gui.Visible and -16 or 0))
    if oldSize ~= Properties.GuiElems.PropsFrame.Size then
        Properties.UpdateView()
    else
        scrollV:Update()
        scrollH:Update()
        Properties.Index = scrollV.Index
    end
end

Properties.Update = function()
    table.clear(viewList)
    local lastCategory, count, maxWidth, maxDepth = nil, 1, 0, 1
    local stringSplit, lower, find = string.split, string.lower, string.find
    local searchText = (#Properties.SearchText > 0 and lower(Properties.SearchText))

    local function recur(propList, depth)
        for i = 1,#propList do
            local prop = propList[i]
            local visible = true
            if searchText and depth == 1 then
                visible = find(lower(prop.Name),searchText,1,true) ~= nil
            end
            
            if visible and lastCategory ~= prop.Category then
                viewList[count] = {CategoryName = prop.Category}
                count = count + 1
                lastCategory = prop.Category
            end
            
            if (expanded["CAT_"..prop.Category] and visible) or prop.SpecialRow then
                if depth > 1 then prop.Depth = depth if depth > maxDepth then maxDepth = depth end end
                viewList[count] = prop
                count = count + 1

                local fullName = prop.Class.."."..prop.Name..(prop.SubName or "")
                if expanded[fullName] then
                    local expandedProps = Properties.GetExpandedProps(prop)
                    if #expandedProps > 0 then recur(expandedProps, depth+1) end
                end
            end
        end
    end
    recur(props, 1)
    inputProp = nil
    Properties.ViewWidth = maxWidth + 9 + Properties.EntryOffset
    Properties.UpdateView()
end

Properties.DisplayProp = function(prop, entryIndex)
    local typeData = prop.ValueType
    local typeName = typeData.Name
    local gName = prop.Class.."."..prop.Name..(prop.SubName or "")
    local propObj = autoUpdateObjs[gName]
    local entryData = propEntries[entryIndex]
    
    local valueBox = entryData.GuiElems.ValueBox
    local checkbox = entryData.GuiElems.Checkbox
    local propVal = Properties.GetPropVal(prop, propObj)

    valueBox.Position = UDim2.new(0, 4, 0, 0)
    valueBox.Size = UDim2.new(1, -6, 1, 0)

    if typeName == "bool" or typeName == "PhysicalProperties" then
        valueBox.Visible = false
        checkbox.Visible = true
        checkboxes[entryIndex]:SetState(propVal)
    else
        valueBox.Visible = true
        checkbox.Visible = false
        
        if propVal ~= nil then
            if typeName == "Color3" then
                valueBox.Text = "["..Lib.ColorToBytes(propVal).."]"
            elseif typeData.Category == "Enum" then
                valueBox.Text = propVal.Name
            else
                valueBox.Text = Properties.ValueToString(prop, propVal)
            end
        else
            valueBox.Text = ""
        end
        valueBox.TextColor3 = prop.Tags.ReadOnly and Settings.Theme.PlaceholderText or Settings.Theme.Text
    end
end

Properties.Refresh = function()
    local maxEntries = math.max(math.ceil((Properties.GuiElems.PropsFrame.AbsoluteSize.Y) / 23),0)    
    local maxX = Properties.GuiElems.PropsFrame.AbsoluteSize.X
    local valueWidth = math.max(Properties.MinInputWidth, maxX - Properties.ViewWidth)
    local inputPropVisible = false
    local scaleType = Settings.Properties.ScaleType

    for i = 1,#propCons do propCons[i]:Disconnect() end
    table.clear(propCons)

    for i = 1,maxEntries do
        local entryData = propEntries[i]
        if not entryData then entryData = Properties.NewPropEntry(i) propEntries[i] = entryData end
        
        local prop = viewList[i + Properties.Index]
        local entry = entryData.Gui
        
        if prop then
            entry.Visible = true
            local entryXOffset = (scaleType == 0 and scrollH.Index or 0)
            entry.Position = UDim2.new(0,-entryXOffset,0,entry.Position.Y.Offset)
            entry.Size = UDim2.new(scaleType == 0 and 0 or 1, scaleType == 0 and Properties.ViewWidth + valueWidth or 0,0,22)

            local nameFrame = entryData.GuiElems.NameFrame
            local valueFrame = entryData.GuiElems.ValueFrame
            
            if prop.SpecialRow then
                if prop.SpecialRow == "AddAttribute" then
                    nameFrame.Visible = false valueFrame.Visible = false entryData.GuiElems.RowButton.Visible = true
                end
            else
                nameFrame.Visible = true entryData.GuiElems.RowButton.Visible = false
                local leftOffset = Properties.EntryIndent*(prop.Depth or 1) + Properties.EntryOffset
                nameFrame.Position = UDim2.new(0, leftOffset, 0, 0)

                local gName = (prop.CategoryName and "CAT_"..prop.CategoryName) or prop.Class.."."..prop.Name..(prop.SubName or "")

                if prop.CategoryName then
                    entry.BackgroundColor3 = Settings.Theme.Main1
                    valueFrame.Visible = false
                    entryData.GuiElems.PropName.Text = prop.CategoryName
                    entryData.GuiElems.PropName.Font = Enum.Font.SourceSansBold
                    nameFrame.Size = UDim2.new(1,0,1,0)
                else
                    entry.BackgroundColor3 = Settings.Theme.Main2
                    valueFrame.Visible = true
                    entryData.GuiElems.PropName.Text = prop.DisplayName or string.split(gName,".")[#string.split(gName,".")]
                    entryData.GuiElems.PropName.Font = Enum.Font.SourceSans
                    
                    if scaleType == 0 then
                        nameFrame.Size = UDim2.new(0,Properties.ViewWidth - leftOffset - 1,1,0)
                        valueFrame.Position = UDim2.new(0,Properties.ViewWidth,0,0)
                        valueFrame.Size = UDim2.new(0,valueWidth,1,0)
                    else
                        nameFrame.Size = UDim2.new(0.5,-leftOffset - 1,1,0)
                        valueFrame.Position = UDim2.new(0.5,0,0,0)
                        valueFrame.Size = UDim2.new(0.5,0,1,0)
                    end
                    
                    Properties.DisplayProp(prop, i)
                    local propObj = autoUpdateObjs[gName]
                    if propObj and not prop.IsAttribute then
                        propCons[#propCons+1] = propObj:GetPropertyChangedSignal(prop.Name):Connect(function() Properties.DisplayProp(prop, i) end)
                    end
                    
                    local inputFullName = inputProp and (inputProp.Class.."."..inputProp.Name..(inputProp.SubName or ""))
                    if gName == inputFullName then
                        inputPropVisible = true
                        inputBox.Position = UDim2.new(scaleType==0 and 0 or 0.5, scaleType==0 and Properties.ViewWidth-scrollH.Index or 0, 0, entry.Position.Y.Offset)
                        inputBox.Size = UDim2.new(scaleType==0 and 1 or 0.5, scaleType==0 and -Properties.ViewWidth+scrollH.Index or 0, 0, 22)
                        inputBox.Visible = true
                        entryData.GuiElems.ValueBox.Visible = false
                    end
                end
                entryData.GuiElems.Expand.Visible = prop.CategoryName or Properties.ExpandableTypes[prop.ValueType and prop.ValueType.Name]
            end
        else
            entry.Visible = false
        end
    end
    if not inputPropVisible then inputBox.Visible = false end
    for i = maxEntries+1,#propEntries do propEntries[i].Gui:Destroy() propEntries[i] = nil checkboxes[i] = nil end
end

Properties.SetProp = function(prop, val)
    if prop.Tags.ReadOnly then return end
    for i = 1, #Properties.SelectionList do
        local obj = Properties.SelectionList[i]
        if obj:IsA(prop.Class) then
            pcall(function()
                if prop.RootType then
                    local root = obj[prop.Name]
                    if prop.RootType.Name == "Vector3" then
                        obj[prop.Name] = Vector3.new((prop.SubName==".X" and val) or root.X, (prop.SubName==".Y" and val) or root.Y, (prop.SubName==".Z" and val) or root.Z)
                    elseif prop.RootType.Name == "UDim2" then
                        obj[prop.Name] = UDim2.new(UDim.new(root.X.Scale, root.X.Offset), UDim.new(root.Y.Scale, root.Y.Offset)) -- Simplified for space
                    end
                else
                    obj[prop.Name] = val
                end
            end)
        end
    end
    Properties.ComputeConflicts(prop)
end

Properties.GetPropVal = function(prop, obj)
    if prop.MultiType then return "<Multiple Types>" end
    if not obj then return nil end
    local propVal = obj[prop.Name]
    if prop.SubName then
        for _, indexName in ipairs(string.split(prop.SubName,".")) do
            if #indexName > 0 and propVal then propVal = propVal[indexName] end
        end
    end
    return propVal
end

Properties.SetInputProp = function(prop, entryIndex)
    if prop.Tags.ReadOnly then return end
    inputProp = prop
    local fullName = prop.Class.."."..prop.Name..(prop.SubName or "")
    local propVal = Properties.GetPropVal(prop, autoUpdateObjs[fullName])
    
    local typeName = prop.ValueType.Name
    if typeName ~= "bool" and prop.ValueType.Category ~= "Enum" then
        inputTextBox.Text = propVal and Properties.ValueToString(prop, propVal) or ""
        inputTextBox:CaptureFocus()
    end
    Properties.Refresh()
end

Properties.ComputeConflicts = function(p)
    local t_clear = table.clear
    local propList = p and {p} or props
    if not p then table.clear(autoUpdateObjs) end
    
    if #Properties.SelectionList > 0 then
        for i = 1,#propList do
            local prop = propList[i]
            local gName = prop.Class.."."..prop.Name
            
            -- Simplified conflict checking logic: assume first object drives value display.
            autoUpdateObjs[gName] = Properties.SelectionList[1]
            local subProps = Properties.ConflictSubProps[prop.ValueType.Name] or {}
            for j=1,#subProps do autoUpdateObjs[gName.."."..subProps[j]] = Properties.SelectionList[1] end
        end
    end
    if p then Properties.Refresh() end
end

Properties.ShowProps = function()
    table.clear(props)
    local foundClasses = {}
    local propCount = 1
    
    for i = 1, #Properties.SelectionList do
        local obj = Properties.SelectionList[i]
        local class = obj.ClassName
        local apiClass = API.Classes[class]
        
        while apiClass do
            local APIClassName = apiClass.Name
            if not foundClasses[APIClassName] then
                local apiProps = indexableProps[APIClassName]
                if not apiProps then apiProps = Properties.GetIndexableProps(obj, apiClass) indexableProps[APIClassName] = apiProps end
                
                for _, prop in ipairs(apiProps) do
                    if (not prop.Tags.Deprecated or Settings.Properties.ShowDeprecated) and (not prop.Tags.Hidden or Settings.Properties.ShowHidden) then
                        props[propCount] = prop
                        propCount = propCount + 1
                    end
                end
                foundClasses[APIClassName] = true
            end
            apiClass = apiClass.Superclass
        end
    end
    
    table.sort(props,function(a,b)
        if a.Category ~= b.Category then
            return (API.CategoryOrder[a.Category] or 9999) < (API.CategoryOrder[b.Category] or 9999)
        else
            return string.lower(a.Name) < string.lower(b.Name)
        end
    end)
    
    Properties.ComputeConflicts()
    Properties.Update()
    Properties.Refresh()
end

-- Exposed function for external scripts to inject selections
function PropertiesModule.SetSelection(objectsArray)
    Properties.SelectionList = objectsArray
    Properties.ShowProps()
end

Properties.InitInputBox = function()
    inputBox = create({
        {1,"Frame",{BackgroundColor3=Settings.Theme.TextBox,BorderSizePixel=0,Name="InputBox",Size=UDim2.new(0,200,0,22),Visible=false,ZIndex=2}},
        {2,"TextBox",{BackgroundColor3=Color3.new(0,0,0),BackgroundTransparency=1,ClearTextOnFocus=false,Font=3,Parent={1},Position=UDim2.new(0,3,0,0),Size=UDim2.new(1,-6,1,0),Text="",TextColor3=Settings.Theme.Text,TextSize=14,TextXAlignment=0,ZIndex=2}}
    })
    inputTextBox = inputBox.TextBox
    inputBox.Parent = Properties.GuiElems.PropsFrame

    inputTextBox.FocusLost:Connect(function()
        if not inputProp then return end
        local prop = inputProp inputProp = nil
        local val = Properties.StringToValue(prop, inputTextBox.Text)
        if val then Properties.SetProp(prop, val) else Properties.Refresh() end
    end)
    Lib.ViewportTextBox.convert(inputTextBox)
end

Properties.InitSearch = function()
    local searchBox = Properties.GuiElems.ToolBar.SearchFrame.SearchBox
    Lib.ViewportTextBox.convert(searchBox)
    searchBox:GetPropertyChangedSignal("Text"):Connect(function()
        Properties.SearchText = searchBox.Text
        Properties.Update()
        Properties.Refresh()
    end)
end

Properties.InitEntryStuff = function()
    Properties.EntryTemplate = create({
        {1,"TextButton",{AutoButtonColor=false,BackgroundColor3=Color3.new(0.1764,0.1764,0.1764),BorderColor3=Color3.new(0.1294,0.1294,0.1294),Font=3,Name="Entry",Position=UDim2.new(0,1,0,1),Size=UDim2.new(0,250,0,22),Text="",TextSize=14}},
        {2,"Frame",{BackgroundTransparency=1,BorderSizePixel=0,Name="NameFrame",Parent={1},Position=UDim2.new(0,20,0,0),Size=UDim2.new(1,-40,1,0)}},
        {3,"TextLabel",{BackgroundTransparency=1,Font=3,Name="PropName",Parent={2},Position=UDim2.new(0,2,0,0),Size=UDim2.new(1,-2,1,0),Text="Anchored",TextColor3=Color3.new(1,1,1),TextSize=14,TextTruncate=1,TextXAlignment=0}},
        {4,"TextButton",{BackgroundTransparency=1,ClipsDescendants=true,Font=3,Name="Expand",Parent={2},Position=UDim2.new(0,-20,0,1),Size=UDim2.new(0,20,0,20),Text="",Visible=false}},
        {6,"TextButton",{BackgroundTransparency=1,BorderSizePixel=0,Font=4,Name="ToggleAttributes",Parent={2},Position=UDim2.new(1,-85,0,0),Size=UDim2.new(0,85,0,22),Text="[SETTING: OFF]",TextColor3=Color3.new(1,1,1),TextSize=14,Visible=false}},
        {7,"Frame",{BackgroundTransparency=1,BorderSizePixel=0,Name="ValueFrame",Parent={1},Position=UDim2.new(1,-100,0,0),Size=UDim2.new(0,80,1,0)}},
        {8,"Frame",{BackgroundColor3=Color3.new(0.1411,0.1411,0.1411),BorderSizePixel=0,Name="Line",Parent={7},Position=UDim2.new(0,-1,0,0),Size=UDim2.new(0,1,1,0)}},
        {16,"TextButton",{BackgroundTransparency=1,Font=3,Name="ValueBox",Parent={7},Position=UDim2.new(0,4,0,0),Size=UDim2.new(1,-8,1,0),Text="",TextColor3=Color3.new(1,1,1),TextSize=14,TextTruncate=1,TextXAlignment=0}},
        {24,"TextButton",{BackgroundTransparency=1,BorderSizePixel=0,Font=3,Name="EditAttributeButton",Parent={1},Position=UDim2.new(1,-20,0,0),Size=UDim2.new(0,20,0,22),Text="",TextColor3=Color3.new(1,1,1),TextSize=14}},
        {26,"TextButton",{AutoButtonColor=false,BackgroundColor3=Color3.new(0.2352,0.2352,0.2352),BorderSizePixel=0,Font=3,Name="RowButton",Parent={1},Size=UDim2.new(1,0,1,0),Text="Add Attribute",TextColor3=Color3.new(1,1,1),TextSize=14,Visible=false}}
    })
end

-- Initialize the Properties Module into the provided container.
function PropertiesModule.Init(ParentContainer, APIDump, RMDDump)
    API = APIDump
    RMD = RMDDump

    -- Setup Initial Categories to expand
    categoryOrder = API.CategoryOrder
    for category, _ in next, categoryOrder do
        if not Properties.CollapsedCategories[category] then
            expanded["CAT_"..category] = true
        end
    end

    local guiItems = create({
        {1,"Folder",{Name="Items"}},
        {2,"Frame",{BackgroundColor3=Settings.Theme.Main1,BorderSizePixel=0,Name="ToolBar",Parent={1},Size=UDim2.new(1,0,0,22)}},
        {3,"Frame",{BackgroundColor3=Settings.Theme.Main2,BorderColor3=Settings.Theme.Outline1,BorderSizePixel=0,Name="SearchFrame",Parent={2},Position=UDim2.new(0,3,0,1),Size=UDim2.new(1,-6,0,18)}},
        {4,"TextBox",{BackgroundTransparency=1,ClearTextOnFocus=false,Font=3,Name="SearchBox",Parent={3},PlaceholderColor3=Settings.Theme.PlaceholderText,PlaceholderText="Search properties",Position=UDim2.new(0,4,0,0),Size=UDim2.new(1,-24,0,18),Text="",TextColor3=Settings.Theme.Text,TextSize=14,TextXAlignment=0}},
        {12,"Frame",{BackgroundTransparency=1,ClipsDescendants=true,Name="List",Parent={1},Position=UDim2.new(0,0,0,23),Size=UDim2.new(1,0,1,-23)}}
    })

    local toolBar = guiItems.ToolBar
    local propsFrame = guiItems.List

    Properties.GuiElems.ToolBar = toolBar
    Properties.GuiElems.PropsFrame = propsFrame

    Properties.InitEntryStuff()

    -- Map into container
    toolBar.Parent = ParentContainer
    propsFrame.Parent = ParentContainer

    -- Bind UI resizes
    ParentContainer:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
        Properties.UpdateView()
        Properties.Refresh()
    end)

    scrollV = Lib.ScrollBar.new(false)
    scrollV.WheelIncrement = 3
    scrollV.Gui.Position = UDim2.new(1,-16,0,23)
    scrollV:SetScrollFrame(propsFrame)
    scrollV.Scrolled:Connect(function() Properties.Index = scrollV.Index Properties.Refresh() end)
    scrollV.Gui.Parent = ParentContainer

    scrollH = Lib.ScrollBar.new(true)
    scrollH.Increment = 5
    scrollH.WheelIncrement = 20
    scrollH.Gui.Position = UDim2.new(0,0,1,-16)
    scrollH.Scrolled:Connect(function() Properties.Refresh() end)
    scrollH.Gui.Parent = ParentContainer

    Properties.InitInputBox()
    Properties.InitSearch()
end

return PropertiesModule
