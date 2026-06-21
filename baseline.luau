
local AutoIndent = {}
function AutoIndent.needsEnd(line)
    if line:match("if%s+.*then%s*$") then return true end
    if line:match("elseif%s+.*then%s*$") then return true end
    if line:match("while%s+.*do%s*$") then return true end
    if line:match("for%s+.*do%s*$") then return true end
    if line:match("function%s*.*%(.*%)%s*$") then return true end
    if line:match("^%s*do%s*$") then return true end
    return false
end
local Baseline = {
    Instances = {},
    Clipboard = ""
}
Baseline.__index = Baseline
local UserInputService = game:GetService("UserInputService")
local TextService = game:GetService("TextService")
local RunService = game:GetService("RunService")
local ContextActionService = game:GetService("ContextActionService")
local HttpService = game:GetService("HttpService")
local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local ScrollingBar = (function()
    local ScrollingBar = {}
    ScrollingBar.__index = ScrollingBar
    local UIS = game:GetService("UserInputService")
    local SCROLLBAR_SIZE = 18
    local ARROW_IMAGE = "rbxassetid://5279719038"
    local ARROW_COLOR = Color3.fromRGB(160, 160, 160)
    local TRACK_COLOR = Color3.fromRGB(40, 42, 54)
    local TRACK_BORDER = Color3.fromRGB(33, 34, 44)
    local BTN_HOVER_COLOR = Color3.fromRGB(68, 71, 90)
    local BTN_PRESS_COLOR = Color3.fromRGB(98, 114, 164)
    local THUMB_COLOR = Color3.fromRGB(68, 71, 90)
    local THUMB_HOVER_COLOR = Color3.fromRGB(98, 114, 164)
    local THUMB_MIN_SIZE = 24
    local SCROLL_STEP = 45
    local function makeArrowButton(parent, rotation, isVertical)
        local btn = Instance.new("ImageButton")
        btn.Size = isVertical and UDim2.new(1, 0, 0, SCROLLBAR_SIZE) or UDim2.new(0, SCROLLBAR_SIZE, 1, 0)
        btn.BackgroundColor3 = TRACK_COLOR
        btn.BorderColor3 = TRACK_BORDER
        btn.BorderSizePixel = 1
        btn.AutoButtonColor = false
        btn.Image = ""
        btn.ZIndex = 101
        btn.Parent = parent
        btn.BackgroundTransparency = 0
        local icon = Instance.new("ImageLabel")
        icon.AnchorPoint = Vector2.new(0.5, 0.5)
        icon.Size = UDim2.new(0, 10, 0, 6)
        icon.Position = UDim2.new(0.5, 0, 0.5, 0)
        icon.BackgroundTransparency = 1
        icon.Image = ARROW_IMAGE
        icon.ImageColor3 = ARROW_COLOR
        icon.Rotation = rotation
        icon.ZIndex = 102
        icon.Parent = btn
        btn.MouseEnter:Connect(function() btn.BackgroundColor3 = BTN_HOVER_COLOR end)
        btn.MouseLeave:Connect(function() btn.BackgroundColor3 = TRACK_COLOR end)
        btn.MouseButton1Down:Connect(function() btn.BackgroundColor3 = BTN_PRESS_COLOR end)
        btn.MouseButton1Up:Connect(function() btn.BackgroundColor3 = BTN_HOVER_COLOR end)
        return btn
    end
    function ScrollingBar.new(container, isVertical)
        local self = setmetatable({}, ScrollingBar)
        self.Container = container
        self.IsVertical = isVertical
        self.ViewSize = 0
        self.ContentSize = 0
        self.ScrollPos = 0
        self.Connections = {}
        self.OnScroll = nil
        self.BarFrame = Instance.new("Frame")
        self.BarFrame.Name = isVertical and "VScrollBar" or "HScrollBar"
        self.BarFrame.BackgroundColor3 = TRACK_COLOR
        self.BarFrame.BorderColor3 = TRACK_BORDER
        self.BarFrame.BorderSizePixel = 1
        self.BarFrame.Size = isVertical and UDim2.new(0, SCROLLBAR_SIZE, 1, 0) or UDim2.new(1, -SCROLLBAR_SIZE, 0, SCROLLBAR_SIZE)
        self.BarFrame.Position = isVertical and UDim2.new(1, -SCROLLBAR_SIZE, 0, 0) or UDim2.new(0, 0, 1, -SCROLLBAR_SIZE)
        self.BarFrame.ZIndex = 100
        self.BarFrame.Parent = container
        self.BarFrame.Visible = false
        self.BarFrame.BackgroundTransparency = 0
        local upBtn = makeArrowButton(self.BarFrame, isVertical and 180 or 90, isVertical)
        upBtn.AnchorPoint = Vector2.new(0, 0)
        upBtn.Position = UDim2.new(0, 0, 0, 0)
        local downBtn = makeArrowButton(self.BarFrame, isVertical and 0 or -90, isVertical)
        downBtn.AnchorPoint = Vector2.new(isVertical and 0 or 1, isVertical and 1 or 0)
        downBtn.Position = isVertical and UDim2.new(0, 0, 1, 0) or UDim2.new(1, 0, 0, 0)
        self.Track = Instance.new("Frame")
        self.Track.Name = "Track"
        self.Track.BackgroundColor3 = TRACK_COLOR
        self.Track.BackgroundTransparency = 0
        self.Track.BorderSizePixel = 0
        self.Track.Size = isVertical and UDim2.new(1, 0, 1, -SCROLLBAR_SIZE * 2) or UDim2.new(1, -SCROLLBAR_SIZE * 2, 1, 0)
        self.Track.Position = isVertical and UDim2.new(0, 0, 0, SCROLLBAR_SIZE) or UDim2.new(0, SCROLLBAR_SIZE, 0, 0)
        self.Track.ZIndex = 100
        self.Track.Parent = self.BarFrame
        self.Thumb = Instance.new("Frame")
        self.Thumb.Name = "Thumb"
        self.Thumb.BackgroundColor3 = THUMB_COLOR
        self.Thumb.BorderSizePixel = 0
        self.Thumb.Size = isVertical and UDim2.new(1, -2, 0, 30) or UDim2.new(0, 30, 1, -2)
        self.Thumb.Position = isVertical and UDim2.new(0, 1, 0, 0) or UDim2.new(0, 0, 0, 1)
        self.Thumb.ZIndex = 101
        self.Thumb.Visible = false
        self.Thumb.Parent = self.Track
        self.Thumb.BackgroundTransparency = 0
        local thumbBtn = Instance.new("TextButton")
        thumbBtn.Size = UDim2.new(1, 0, 1, 0)
        thumbBtn.BackgroundTransparency = 1
        thumbBtn.Text = ""
        thumbBtn.ZIndex = 102
        thumbBtn.Parent = self.Thumb
        local dragging = false
        local dragStartMouse = 0
        local dragStartThumbOffset = 0
        thumbBtn.MouseEnter:Connect(function()
            self.Thumb.BackgroundColor3 = THUMB_HOVER_COLOR
        end)
        thumbBtn.MouseLeave:Connect(function()
            if not dragging then
                self.Thumb.BackgroundColor3 = THUMB_COLOR
            end
        end)
        thumbBtn.MouseButton1Down:Connect(function()
            dragging = true
            self.Thumb.BackgroundColor3 = THUMB_HOVER_COLOR
            local mousePos = isVertical and UIS:GetMouseLocation().Y or UIS:GetMouseLocation().X
            dragStartMouse = mousePos
            dragStartThumbOffset = isVertical and self.Thumb.Position.Y.Offset or self.Thumb.Position.X.Offset
        end)
        table.insert(self.Connections, UIS.InputChanged:Connect(function(input)
            if dragging then
                if input.UserInputType == Enum.UserInputType.MouseMovement then
                    local mousePos = isVertical and UIS:GetMouseLocation().Y or UIS:GetMouseLocation().X
                    local delta = mousePos - dragStartMouse
                    local trackAbsSize = isVertical and self.Track.AbsoluteSize.Y or self.Track.AbsoluteSize.X
                    local thumbAbsSize = isVertical and self.Thumb.AbsoluteSize.Y or self.Thumb.AbsoluteSize.X
                    local maxOffset = math.max(0, trackAbsSize - thumbAbsSize)
                    local newOffset = math.clamp(dragStartThumbOffset + delta, 0, maxOffset)
                    local ratio = maxOffset > 0 and (newOffset / maxOffset) or 0
                    local maxScroll = math.max(0, self.ContentSize - self.ViewSize)
                    if self.OnScroll then
                        self.OnScroll(ratio * maxScroll)
                    end
                end
            elseif input.UserInputType == Enum.UserInputType.MouseWheel then
                if self.IsVertical and self.BarFrame.Visible then
                    local pos = input.Position
                    local absPos = self.Container.AbsolutePosition
                    local absSize = self.Container.AbsoluteSize
                    if pos.X >= absPos.X and pos.X <= absPos.X + absSize.X and pos.Y >= absPos.Y and pos.Y <= absPos.Y + absSize.Y then
                        local dir = -math.sign(input.Position.Z)
                        local maxScroll = math.max(0, self.ContentSize - self.ViewSize)
                        local newScroll = math.clamp(self.ScrollPos + dir * SCROLL_STEP, 0, maxScroll)
                        if self.OnScroll then
                            self.OnScroll(newScroll)
                        end
                    end
                end
            end
        end))
        table.insert(self.Connections, UIS.InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                if dragging then
                    dragging = false
                    self.Thumb.BackgroundColor3 = THUMB_COLOR
                end
            end
        end))
        local function scrollStepDir(dir)
            local max = math.max(0, self.ContentSize - self.ViewSize)
            local nP = math.clamp(self.ScrollPos + dir * SCROLL_STEP, 0, max)
            if self.OnScroll then self.OnScroll(nP) end
        end
        local function startRepeat(dir)
            local active = true
            scrollStepDir(dir)
            task.spawn(function()
                task.wait(0.35)
                while active do
                    scrollStepDir(dir)
                    task.wait(0.05)
                end
            end)
            return function() active = false end
        end
        local stopUp, stopDown
        upBtn.MouseButton1Down:Connect(function() stopUp = startRepeat(-1) end)
        upBtn.MouseButton1Up:Connect(function() if stopUp then stopUp() stopUp = nil end end)
        upBtn.MouseLeave:Connect(function() if stopUp then stopUp() stopUp = nil end end)
        downBtn.MouseButton1Down:Connect(function() stopDown = startRepeat(1) end)
        downBtn.MouseButton1Up:Connect(function() if stopDown then stopDown() stopDown = nil end end)
        downBtn.MouseLeave:Connect(function() if stopDown then stopDown() stopDown = nil end end)
        return self
    end
    function ScrollingBar:UpdateMetrics(viewSize, contentSize, scrollPos)
        self.ViewSize = viewSize
        self.ContentSize = contentSize
        self.ScrollPos = scrollPos
        local trackSize = self.IsVertical and self.Track.AbsoluteSize.Y or self.Track.AbsoluteSize.X
        if contentSize <= viewSize or trackSize <= 0 then
            self.BarFrame.Visible = false
            self.Thumb.Visible = false
            return
        end
        self.BarFrame.Visible = true
        self.Thumb.Visible = true
        local maxScroll = contentSize - viewSize
        local ratio = math.clamp(viewSize / contentSize, 0, 1)
        local thumbSize = math.max(THUMB_MIN_SIZE, ratio * trackSize)
        local scrollRatio = maxScroll > 0 and scrollPos / maxScroll or 0
        local thumbOffset = scrollRatio * (trackSize - thumbSize)
        if self.IsVertical then
            self.Thumb.Size = UDim2.new(1, -2, 0, thumbSize)
            self.Thumb.Position = UDim2.new(0, 1, 0, thumbOffset)
        else
            self.Thumb.Size = UDim2.new(0, thumbSize, 1, -2)
            self.Thumb.Position = UDim2.new(0, thumbOffset, 0, 1)
        end
    end
    function ScrollingBar:Destroy()
        for _, conn in ipairs(self.Connections) do conn:Disconnect() end
        self.BarFrame:Destroy()
    end
    return ScrollingBar
end)()
local shiftMap = {
    [Enum.KeyCode.One] = "!", [Enum.KeyCode.Two] = "@", [Enum.KeyCode.Three] = "#",
    [Enum.KeyCode.Four] = "$", [Enum.KeyCode.Five] = "%", [Enum.KeyCode.Six] = "^",
    [Enum.KeyCode.Seven] = "&", [Enum.KeyCode.Eight] = "*", [Enum.KeyCode.Nine] = "(",
    [Enum.KeyCode.Zero] = ")", [Enum.KeyCode.Minus] = "_", [Enum.KeyCode.Equals] = "+",
    [Enum.KeyCode.LeftBracket] = "{", [Enum.KeyCode.RightBracket] = "}",
    [Enum.KeyCode.BackSlash] = "|", [Enum.KeyCode.Semicolon] = ":",
    [Enum.KeyCode.Quote] = '\"', [Enum.KeyCode.Comma] = "<",
    [Enum.KeyCode.Period] = ">", [Enum.KeyCode.Slash] = "?", [Enum.KeyCode.Backquote] = "~"
}
local unshiftMap = {
    [Enum.KeyCode.One] = "1", [Enum.KeyCode.Two] = "2", [Enum.KeyCode.Three] = "3",
    [Enum.KeyCode.Four] = "4", [Enum.KeyCode.Five] = "5", [Enum.KeyCode.Six] = "6",
    [Enum.KeyCode.Seven] = "7", [Enum.KeyCode.Eight] = "8", [Enum.KeyCode.Nine] = "9",
    [Enum.KeyCode.Zero] = "0", [Enum.KeyCode.Minus] = "-", [Enum.KeyCode.Equals] = "=",
    [Enum.KeyCode.LeftBracket] = "[", [Enum.KeyCode.RightBracket] = "]",
    [Enum.KeyCode.BackSlash] = "\\", [Enum.KeyCode.Semicolon] = ";",
    [Enum.KeyCode.Quote] = "'", [Enum.KeyCode.Comma] = ",",
    [Enum.KeyCode.Period] = ".", [Enum.KeyCode.Slash] = "/",
    [Enum.KeyCode.Backquote] = "`", [Enum.KeyCode.Space] = " ",
    [Enum.KeyCode.KeypadOne] = "1", [Enum.KeyCode.KeypadTwo] = "2",
    [Enum.KeyCode.KeypadThree] = "3", [Enum.KeyCode.KeypadFour] = "4",
    [Enum.KeyCode.KeypadFive] = "5", [Enum.KeyCode.KeypadSix] = "6",
    [Enum.KeyCode.KeypadSeven] = "7", [Enum.KeyCode.KeypadEight] = "8",
    [Enum.KeyCode.KeypadNine] = "9", [Enum.KeyCode.KeypadZero] = "0",
    [Enum.KeyCode.KeypadDivide] = "/", [Enum.KeyCode.KeypadMultiply] = "*",
    [Enum.KeyCode.KeypadMinus] = "-", [Enum.KeyCode.KeypadPlus] = "+"
}
local keysToSink = {
    Enum.KeyCode.W, Enum.KeyCode.A, Enum.KeyCode.S, Enum.KeyCode.D, 
    Enum.KeyCode.Space, Enum.KeyCode.Up, Enum.KeyCode.Down, 
    Enum.KeyCode.Left, Enum.KeyCode.Right, Enum.KeyCode.I, 
    Enum.KeyCode.O, Enum.KeyCode.Backspace, Enum.KeyCode.Return, 
    Enum.KeyCode.C, Enum.KeyCode.V, Enum.KeyCode.X, Enum.KeyCode.Z, 
    Enum.KeyCode.Y, Enum.KeyCode.Home, Enum.KeyCode.End, 
    Enum.KeyCode.PageUp, Enum.KeyCode.PageDown, Enum.KeyCode.Tab
}
local function getCharacter(keyCode, isShiftDown)
    if keyCode.Value >= Enum.KeyCode.A.Value and keyCode.Value <= Enum.KeyCode.Z.Value then
        local keyString = UserInputService:GetStringForKeyCode(keyCode)
        if isShiftDown then
            return keyString:upper()
        else
            return keyString:lower()
        end
    end
    if isShiftDown and shiftMap[keyCode] then return shiftMap[keyCode] end
    if unshiftMap[keyCode] then return unshiftMap[keyCode] end
    return ""
end
local function escapeRichText(rawString)
    local s = string.gsub(rawString, "&", "&amp;")
    s = string.gsub(s, "<", "&lt;")
    s = string.gsub(s, ">", "&gt;")
    return s
end
local function getNextWordBoundary(text, index)
    if index >= #text then return #text end
    local startCharacter = text:sub(index + 1, index + 1)
    local startIsWord = startCharacter:match("[%w_]") ~= nil
    for i = index + 1, #text do
        local character = text:sub(i, i)
        local isWord = character:match("[%w_]") ~= nil
        if isWord ~= startIsWord then return i - 1 end
    end
    return #text
end
local function getPrevWordBoundary(text, index)
    if index <= 0 then return 0 end
    local startCharacter = text:sub(index, index)
    local startIsWord = startCharacter:match("[%w_]") ~= nil
    for i = index, 1, -1 do
        local character = text:sub(i, i)
        local isWord = character:match("[%w_]") ~= nil
        if isWord ~= startIsWord then return i end
    end
    return 0
end
local function getWordAtIndex(text, index)
    local startIdx = index
    local endIdx = index
    while startIdx > 0 and text:sub(startIdx, startIdx):match("[%w_]") do
        startIdx = startIdx - 1
    end
    while endIdx < #text and text:sub(endIdx + 1, endIdx + 1):match("[%w_]") do
        endIdx = endIdx + 1
    end
    return startIdx, endIdx
end
local function findWrapPoint(text, startIdx, endIdx, textSize, font, limit, defaultHeight)
    local lowBound = startIdx
    local highBound = endIdx
    local bestPoint = startIdx
    while lowBound <= highBound do
        local midPoint = math.floor((lowBound + highBound) / 2)
        local segmentSize = TextService:GetTextSize(text:sub(startIdx, midPoint), textSize, font, limit)
        if segmentSize.Y <= defaultHeight then
            bestPoint = midPoint
            lowBound = midPoint + 1
        else
            highBound = midPoint - 1
        end
    end
    return bestPoint
end
function Baseline.new(canvasGroup)
    local self = setmetatable({}, Baseline)
    self.CanvasGroup = canvasGroup
    self.Connections = {}
    self.LinesPool = {}
    self.HighlightPool = {}
    self.LineNumbersPool = {}
    self.SyntaxRules = nil
    self.IsFocused = false
    self.IsDragging = false
    self.IsPasting = false
    self.CursorIndex = 0
    self.SelectionStart = 0
    self.ScrollOffset = Vector2.new(0, 0)
    self.DocumentHeight = 0
    self.CachedDocumentWidth = 0
    self.HeldKey = nil
    self.KeyTimer = 0
    self.KeyTick = 0
    self.BlinkTimer = 0
    self.ClickCount = 0
    self.LastClickTime = 0
    self.LastTypedChar = ""
    self.LastTypedTick = 0
    self.History = {{text = "", cursor = 0, sel = 0}}
    self.HistoryIdx = 1
    self.SinkActionName = "BaselineSink_" .. HttpService:GenerateGUID(false)
    self.FindUI = nil
    self.FindMatches = {}
    self.CurrentMatchIndex = 0
    self.FindTextConn = nil
    self.CachedText = nil
    self.CachedTextSize = nil
    self.CachedFont = nil
    self.CachedLimitX = nil
    self.CachedLimitY = nil
    self.CachedLineMap = nil
    table.insert(Baseline.Instances, self)
    self.CurrentLineHighlight = Instance.new("Frame")
    self.CurrentLineHighlight.Name = "BaselineCurrentLine"
    self.CurrentLineHighlight.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    self.CurrentLineHighlight.BackgroundTransparency = 0.9
    self.CurrentLineHighlight.BorderSizePixel = 0
    self.CurrentLineHighlight.ZIndex = 1
    self.CurrentLineHighlight.Visible = false
    self.CurrentLineHighlight.Parent = canvasGroup
    self.LineNumbersContainer = Instance.new("Frame")
    self.LineNumbersContainer.Name = "BaselineLineNumbersContainer"
    self.LineNumbersContainer.BackgroundTransparency = 1
    self.LineNumbersContainer.ClipsDescendants = true
    self.LineNumbersContainer.ZIndex = 2
    self.LineNumbersContainer.Parent = canvasGroup
    self.LineNumbersInner = Instance.new("Frame")
    self.LineNumbersInner.Name = "BaselineLineNumbersInner"
    self.LineNumbersInner.BackgroundTransparency = 1
    self.LineNumbersInner.Size = UDim2.new(1, 0, 0, 0)
    self.LineNumbersInner.Parent = self.LineNumbersContainer
    self.TextContainer = Instance.new("Frame")
    self.TextContainer.Name = "BaselineTextContainer"
    self.TextContainer.BackgroundTransparency = 1
    self.TextContainer.ClipsDescendants = true
    self.TextContainer.ZIndex = 2
    self.TextContainer.Parent = canvasGroup
    self.InnerFrame = Instance.new("Frame")
    self.InnerFrame.Name = "BaselineInnerFrame"
    self.InnerFrame.BackgroundTransparency = 1
    self.InnerFrame.Size = UDim2.new(0, 0, 0, 0)
    self.InnerFrame.Parent = self.TextContainer
    self.PlaceholderLabel = Instance.new("TextLabel")
    self.PlaceholderLabel.Name = "PlaceholderTextLabel"
    self.PlaceholderLabel.Size = UDim2.new(0, 10000, 0, 25)
    self.PlaceholderLabel.Position = UDim2.new(0, 4, 0, 4)
    self.PlaceholderLabel.BackgroundTransparency = 1
    self.PlaceholderLabel.TextWrapped = false
    self.PlaceholderLabel.TextXAlignment = Enum.TextXAlignment.Left
    self.PlaceholderLabel.TextYAlignment = Enum.TextYAlignment.Top
    self.PlaceholderLabel.ZIndex = 1
    self.PlaceholderLabel.Parent = self.InnerFrame
    self.HighlightContainer = Instance.new("Frame")
    self.HighlightContainer.Name = "BaselineHighlightContainer"
    self.HighlightContainer.Size = UDim2.new(0, 0, 0, 0)
    self.HighlightContainer.Position = UDim2.new(0, 0, 0, 0)
    self.HighlightContainer.BackgroundTransparency = 1
    self.HighlightContainer.ZIndex = 2
    self.HighlightContainer.Parent = self.InnerFrame
    self.Blinker = Instance.new("Frame")
    self.Blinker.Name = "BaselineBlinker"
    self.Blinker.Size = UDim2.new(0, 1, 0, 14)
    self.Blinker.BackgroundColor3 = Color3.new(1, 1, 1)
    self.Blinker.BorderSizePixel = 0
    self.Blinker.Visible = false
    self.Blinker.ZIndex = 4
    self.Blinker.Parent = self.InnerFrame
    self.PasteBox = Instance.new("TextBox")
    self.PasteBox.Name = "BaselinePasteBox"
    self.PasteBox.Size = UDim2.new(1, 0, 1, 0)
    self.PasteBox.BackgroundTransparency = 1
    self.PasteBox.TextTransparency = 1
    self.PasteBox.ClearTextOnFocus = false
    self.PasteBox.MultiLine = true
    self.PasteBox.Text = ""
    self.PasteBox.ZIndex = 10
    self.PasteBox.Parent = self.CanvasGroup
    canvasGroup.ClipsDescendants = true
    canvasGroup.Active = true
    self.VScrollBar = ScrollingBar.new(canvasGroup, true)
    self.VScrollBar.OnScroll = function(newY)
        self.ScrollOffset = Vector2.new(self.ScrollOffset.X, newY)
        self:UpdateBlinker(false)
    end
    self.HScrollBar = ScrollingBar.new(canvasGroup, false)
    self.HScrollBar.OnScroll = function(newX)
        self.ScrollOffset = Vector2.new(newX, self.ScrollOffset.Y)
        self:UpdateBlinker(false)
    end
    table.insert(self.Connections, self.PasteBox:GetPropertyChangedSignal("Text"):Connect(function()
        local text = self.PasteBox.Text
        if text ~= "" then
            task.defer(function()
                if self.PasteBox and self.PasteBox.Text == text then self.PasteBox.Text = "" end
            end)
            if text == "\n" or text == "\r\n" or text == "\r" then return end
            local isManualKeystroke = (#text == 1) and (text == self.LastTypedChar) and ((tick() - self.LastTypedTick) < 0.2)
            if not isManualKeystroke then self:PasteChunked(text) end
        end
    end))
    table.insert(self.Connections, self.PasteBox.FocusLost:Connect(function()
        task.defer(function() if self.IsFocused then self.PasteBox:CaptureFocus() end end)
    end))
    table.insert(self.Connections, UserInputService.InputBegan:Connect(function(input, gameProcessed)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            local pos = input.Position
            local function isInside(gui)
                if not gui or not gui.Visible then return false end
                local absPos = gui.AbsolutePosition
                local absSize = gui.AbsoluteSize
                return pos.X >= absPos.X and pos.X <= absPos.X + absSize.X and pos.Y >= absPos.Y and pos.Y <= absPos.Y + absSize.Y
            end
            if self.VScrollBar and isInside(self.VScrollBar.BarFrame) then return end
            if self.HScrollBar and isInside(self.HScrollBar.BarFrame) then return end
            if self.FindUI and isInside(self.FindUI) then return end
            local didClickSelf = isInside(self.CanvasGroup)
            if didClickSelf then
                self:Focus()
                local relativeX = (pos.X - self.InnerFrame.AbsolutePosition.X) - 4
                local relativeY = (pos.Y - self.InnerFrame.AbsolutePosition.Y) - 4
                local isShiftDown = UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) or UserInputService:IsKeyDown(Enum.KeyCode.RightShift)
                local closestIndex = self:GetClosestCursorIndex(relativeX, relativeY)
                local currentTime = tick()
                if (currentTime - self.LastClickTime) < 0.3 then
                    self.ClickCount = self.ClickCount + 1
                else
                    self.ClickCount = 1
                end
                self.LastClickTime = currentTime
                local displayedText = self:GetDisplayText()
                if self.ClickCount == 2 then
                    self.SelectionStart, self.CursorIndex = getWordAtIndex(displayedText, closestIndex)
                elseif self.ClickCount == 3 then
                    local textSize = self.CanvasGroup:GetAttribute("TextSize")
                    local font = self.CanvasGroup:GetAttribute("Font")
                    local lineMap = self:GetLineMapCached(displayedText, textSize, font, self:GetLimit())
                    for _, line in ipairs(lineMap) do
                        if closestIndex >= (line.startIdx - 1) and closestIndex <= line.endIdx then
                            self.SelectionStart = line.startIdx - 1
                            self.CursorIndex = line.endIdx
                            break
                        end
                    end
                elseif isShiftDown then
                    self.CursorIndex = closestIndex
                else
                    self.SelectionStart = closestIndex
                    self.CursorIndex = closestIndex
                end
                self.IsDragging = true
                self:UpdateBlinker(true)
            else
                self:Unfocus()
            end
        elseif input.UserInputType == Enum.UserInputType.Keyboard then
            if not self.IsFocused then return end
            local isShiftDown = UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) or UserInputService:IsKeyDown(Enum.KeyCode.RightShift)
            local isCtrlDown = UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) or UserInputService:IsKeyDown(Enum.KeyCode.RightControl)
            if isCtrlDown and input.KeyCode == Enum.KeyCode.A then
                self.SelectionStart = 0
                self.CursorIndex = #(self:GetDisplayText())
                self:UpdateBlinker(true)
                return
            elseif isCtrlDown and input.KeyCode == Enum.KeyCode.Z then
                self:Undo()
                return
            elseif isCtrlDown and input.KeyCode == Enum.KeyCode.Y then
                self:Redo()
                return
            elseif isCtrlDown and input.KeyCode == Enum.KeyCode.C then
                self:Copy()
                return
            elseif isCtrlDown and input.KeyCode == Enum.KeyCode.X then
                self:Cut()
                return
            elseif isCtrlDown and input.KeyCode == Enum.KeyCode.V then
                self.LastTypedChar = ""
                return
            elseif isCtrlDown and input.KeyCode == Enum.KeyCode.F then
                self:ToggleFindUI()
                return
            end
            if input.KeyCode == Enum.KeyCode.Tab then
                local myTabIndex = self.CanvasGroup:GetAttribute("TabIndex") or 0
                local nextBaseline = nil
                local closestDistance = math.huge
                for _, baselineInstance in ipairs(Baseline.Instances) do
                    local tabIndex = baselineInstance.CanvasGroup:GetAttribute("TabIndex") or 0
                    if isShiftDown then
                        if tabIndex < myTabIndex and (myTabIndex - tabIndex) < closestDistance then
                            closestDistance = myTabIndex - tabIndex
                            nextBaseline = baselineInstance
                        end
                    elseif tabIndex > myTabIndex and (tabIndex - myTabIndex) < closestDistance then
                        closestDistance = tabIndex - myTabIndex
                        nextBaseline = baselineInstance
                    end
                end
                if nextBaseline then
                    self:Unfocus()
                    nextBaseline:Focus()
                end
                return
            end
            local isRepeatable = (input.KeyCode == Enum.KeyCode.Backspace) or 
                                 (input.KeyCode == Enum.KeyCode.Return) or 
                                 (input.KeyCode == Enum.KeyCode.KeypadEnter) or 
                                 (input.KeyCode == Enum.KeyCode.Left) or 
                                 (input.KeyCode == Enum.KeyCode.Right) or 
                                 (input.KeyCode == Enum.KeyCode.Up) or 
                                 (input.KeyCode == Enum.KeyCode.Down) or 
                                 (getCharacter(input.KeyCode, isShiftDown) ~= "")
            if isRepeatable then
                self:ProcessKey(input.KeyCode, isShiftDown, isCtrlDown)
                self.HeldKey = input.KeyCode
                self.KeyTimer = 0
                self.KeyTick = 0
            else
                self:ProcessKey(input.KeyCode, isShiftDown, isCtrlDown)
            end
        end
    end))
    table.insert(self.Connections, UserInputService.InputChanged:Connect(function(input)
        if self.IsDragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            local pos = input.Position
            local relativeX = (pos.X - self.InnerFrame.AbsolutePosition.X) - 4
            local relativeY = (pos.Y - self.InnerFrame.AbsolutePosition.Y) - 4
            self.CursorIndex = self:GetClosestCursorIndex(relativeX, relativeY)
            self:UpdateBlinker(true)
        end
    end))
    table.insert(self.Connections, UserInputService.InputEnded:Connect(function(input)
        if input.KeyCode == self.HeldKey then
            self.HeldKey = nil
        elseif input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            self.IsDragging = false
        end
    end))
    table.insert(self.Connections, RunService.RenderStepped:Connect(function(deltaTime)
        if self.HeldKey then
            self.KeyTimer = self.KeyTimer + deltaTime
            if self.KeyTimer > 0.4 then
                self.KeyTick = self.KeyTick + deltaTime
                if self.KeyTick > 0.04 then
                    self.KeyTick = 0
                    local isShiftDown = UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) or UserInputService:IsKeyDown(Enum.KeyCode.RightShift)
                    local isCtrlDown = UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) or UserInputService:IsKeyDown(Enum.KeyCode.RightControl)
                    self:ProcessKey(self.HeldKey, isShiftDown, isCtrlDown)
                end
            end
        end
        if self.IsFocused then
            if self.SelectionStart == self.CursorIndex then
                self.BlinkTimer = self.BlinkTimer + deltaTime
                if self.BlinkTimer > 0.5 then
                    self.BlinkTimer = 0
                    self.Blinker.Visible = not self.Blinker.Visible
                end
            else
                self.Blinker.Visible = false
            end
        end
    end))
    table.insert(self.Connections, self.CanvasGroup:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
        self:UpdateBlinker(false)
    end))
    table.insert(self.Connections, canvasGroup.AttributeChanged:Connect(function(attributeName)
        local value = canvasGroup:GetAttribute(attributeName)
        local updateBlinkerAttributes = {
            Text = true, TextSize = true, Font = true, 
            HighlightColor = true, PasswordMode = true, 
            Wrapped = true, Lines = true
        }
        if updateBlinkerAttributes[attributeName] then
            self:UpdateBlinker(true)
        elseif attributeName == "BlinkerColor" then
            self.Blinker.BackgroundColor3 = value
        elseif attributeName == "PlaceholderColor3" then
            self.PlaceholderLabel.TextColor3 = value
        elseif attributeName == "PlaceholderText" then
            self.PlaceholderLabel.Text = value
        end
    end))
    local proxyObj = setmetatable({}, {
        __index = function(_, key)
            local attributeValue = canvasGroup:GetAttribute(key)
            if attributeValue ~= nil then return attributeValue end
            if type(self[key]) == "function" then
                return function(_, ...) return self[key](self, ...) end
            end
            return self[key]
        end,
        __newindex = function(_, key, value)
            local allowedAttributes = {
                Text = true, MultiLine = true, Wrapped = true, 
                SmoothBlinker = true, TextSize = true, TextColor3 = true, 
                BlinkerColor = true, HighlightColor = true, Font = true, 
                PlaceholderText = true, PlaceholderColor3 = true, 
                MaxLength = true, PasswordMode = true, ReadOnly = true, 
                TabIndex = true, Lines = true
            }
            if allowedAttributes[key] then
                canvasGroup:SetAttribute(key, value)
            else
                rawset(self, key, value)
            end
        end
    })
    local defaultAttributes = {
        MultiLine = true, Wrapped = false, SmoothBlinker = false,
        Text = "", TextSize = 16, Font = Enum.Font.SourceSans,
        TextColor3 = Color3.new(0, 0, 0), BlinkerColor = Color3.new(1, 1, 1),
        HighlightColor = Color3.fromRGB(0, 120, 215), PlaceholderText = "",
        PlaceholderColor3 = Color3.fromRGB(150, 150, 150), PasswordMode = false,
        ReadOnly = false, TabIndex = 0, Lines = false
    }
    for key, defaultValue in pairs(defaultAttributes) do
        if canvasGroup:GetAttribute(key) == nil then
            proxyObj[key] = defaultValue
        end
    end
    self.PlaceholderLabel.Text = proxyObj.PlaceholderText
    self.PlaceholderLabel.TextColor3 = proxyObj.PlaceholderColor3
    self.PlaceholderLabel.Font = proxyObj.Font
    self.PlaceholderLabel.TextSize = proxyObj.TextSize
    self:UpdateBlinker(true)
    return proxyObj
end
function Baseline:ToggleFindUI()
    if self.FindUI then self:CloseFindUI() else self:OpenFindUI() end
end
function Baseline:OpenFindUI()
    local function createFindMenu()
        local mainFrame = Instance.new("Frame")
        mainFrame.Name = "MainFrame"
        mainFrame.Size = UDim2.new(0, 315, 0, 88)
        mainFrame.Position = UDim2.new(0.5, -157, 0.3, 0)
        mainFrame.BackgroundColor3 = Color3.fromRGB(37, 37, 38)
        mainFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
        mainFrame.ZIndex = 1
        mainFrame.AnchorPoint = Vector2.new(0, 0)
        local mainPadding = Instance.new("UIPadding")
        mainPadding.Name = "UIPadding"
        mainPadding.Parent = mainFrame
        local row1Find = Instance.new("Frame")
        row1Find.Name = "Row1_Find"
        row1Find.Size = UDim2.new(1, 0, 0, 24)
        row1Find.Position = UDim2.new(0, 0, 0, 0)
        row1Find.BackgroundTransparency = 1
        row1Find.Parent = mainFrame
        local toggleExpandBtn = Instance.new("ImageButton")
        toggleExpandBtn.Name = "ToggleExpandBtn"
        toggleExpandBtn.Size = UDim2.new(0, 20, 0, 20)
        toggleExpandBtn.Position = UDim2.new(0, 0, 0, 2)
        toggleExpandBtn.BackgroundTransparency = 1
        toggleExpandBtn.Parent = row1Find
        local topChevron = Instance.new("ImageLabel")
        topChevron.Name = "TopChevron"
        topChevron.Size = UDim2.new(0, 18, 0, 18)
        topChevron.Position = UDim2.new(0.5, 0, 0.27, 0)
        topChevron.AnchorPoint = Vector2.new(0.5, 0.5)
        topChevron.Rotation = 180
        topChevron.BackgroundTransparency = 1
        topChevron.Image = "rbxassetid://81817462736641"
        topChevron.Parent = toggleExpandBtn
        local bottomChevron = Instance.new("ImageLabel")
        bottomChevron.Name = "BottomChevron"
        bottomChevron.Size = UDim2.new(0, 18, 0, 18)
        bottomChevron.Position = UDim2.new(0.5, 0, 0.62, 0)
        bottomChevron.AnchorPoint = Vector2.new(0.5, 0.5)
        bottomChevron.Rotation = 180
        bottomChevron.BackgroundTransparency = 1
        bottomChevron.Image = "rbxassetid://81817462736641"
        bottomChevron.Parent = toggleExpandBtn
        local findBox = Instance.new("TextBox")
        findBox.Name = "FindBox"
        findBox.Size = UDim2.new(0, 195, 1, 0)
        findBox.Position = UDim2.new(0, 24, 0, 0)
        findBox.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
        findBox.TextColor3 = Color3.fromRGB(204, 204, 204)
        findBox.TextSize = 14
        findBox.Font = Enum.Font.SourceSans
        findBox.TextXAlignment = Enum.TextXAlignment.Left
        findBox.PlaceholderText = "Find..."
        findBox.PlaceholderColor3 = Color3.fromRGB(150, 150, 150)
        findBox.ClearTextOnFocus = false
        findBox.Text = ""
        findBox.Parent = row1Find
        local findBoxPadding = Instance.new("UIPadding")
        findBoxPadding.Name = "UIPadding"
        findBoxPadding.Parent = findBox
        local findBoxStroke = Instance.new("UIStroke")
        findBoxStroke.Name = "UIStroke"
        findBoxStroke.Thickness = 1
        findBoxStroke.Color = Color3.fromRGB(0, 122, 204)
        findBoxStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        findBoxStroke.Enabled = false
        findBoxStroke.Parent = findBox
        local findPrevBtn = Instance.new("ImageButton")
        findPrevBtn.Name = "FindPrevBtn"
        findPrevBtn.Size = UDim2.new(0, 20, 0, 20)
        findPrevBtn.Position = UDim2.new(0, 225, 0, 2)
        findPrevBtn.BackgroundTransparency = 1
        findPrevBtn.Image = "rbxassetid://123393842142851"
        findPrevBtn.Parent = row1Find
        local findNextBtn = Instance.new("ImageButton")
        findNextBtn.Name = "FindNextBtn"
        findNextBtn.Size = UDim2.new(0, 20, 0, 20)
        findNextBtn.Position = UDim2.new(0, 249, 0, 2)
        findNextBtn.BackgroundTransparency = 1
        findNextBtn.Image = "rbxassetid://71631858247362"
        findNextBtn.Parent = row1Find
        local closeBtn = Instance.new("ImageButton")
        closeBtn.Name = "CloseBtn"
        closeBtn.Size = UDim2.new(0, 20, 0, 20)
        closeBtn.Position = UDim2.new(0, 281, 0, 2)
        closeBtn.BackgroundTransparency = 1
        closeBtn.Image = "rbxassetid://80750399461762"
        closeBtn.Parent = row1Find
        local row2Replace = Instance.new("Frame")
        row2Replace.Name = "Row2_Replace"
        row2Replace.Size = UDim2.new(1, 0, 0, 24)
        row2Replace.Position = UDim2.new(0, 0, 0, 28)
        row2Replace.BackgroundTransparency = 1
        row2Replace.Parent = mainFrame
        local replaceBox = Instance.new("TextBox")
        replaceBox.Name = "ReplaceBox"
        replaceBox.Size = UDim2.new(0, 195, 1, 0)
        replaceBox.Position = UDim2.new(0, 24, 0, 0)
        replaceBox.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
        replaceBox.TextColor3 = Color3.fromRGB(204, 204, 204)
        replaceBox.TextSize = 14
        replaceBox.Font = Enum.Font.SourceSans
        replaceBox.TextXAlignment = Enum.TextXAlignment.Left
        replaceBox.PlaceholderText = "Replace..."
        replaceBox.PlaceholderColor3 = Color3.fromRGB(150, 150, 150)
        replaceBox.ClearTextOnFocus = false
        replaceBox.Text = ""
        replaceBox.Parent = row2Replace
        local replaceBoxPadding = Instance.new("UIPadding")
        replaceBoxPadding.Name = "UIPadding"
        replaceBoxPadding.Parent = replaceBox
        local replaceBoxStroke = Instance.new("UIStroke")
        replaceBoxStroke.Name = "UIStroke"
        replaceBoxStroke.Thickness = 1
        replaceBoxStroke.Color = Color3.fromRGB(0, 122, 204)
        replaceBoxStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        replaceBoxStroke.Enabled = false
        replaceBoxStroke.Parent = replaceBox
        local replaceNextBtn = Instance.new("ImageButton")
        replaceNextBtn.Name = "ReplaceNextBtn"
        replaceNextBtn.Size = UDim2.new(0, 20, 0, 20)
        replaceNextBtn.Position = UDim2.new(0, 225, 0, 2)
        replaceNextBtn.BackgroundTransparency = 1
        replaceNextBtn.Parent = row2Replace
        local replaceAllBtn = Instance.new("ImageButton")
        replaceAllBtn.Name = "ReplaceAllBtn"
        replaceAllBtn.Size = UDim2.new(0, 20, 0, 20)
        replaceAllBtn.Position = UDim2.new(0, 249, 0, 2)
        replaceAllBtn.BackgroundTransparency = 1
        replaceAllBtn.Parent = row2Replace
        local row3Options = Instance.new("Frame")
        row3Options.Name = "Row3_Options"
        row3Options.Size = UDim2.new(1, 0, 0, 20)
        row3Options.Position = UDim2.new(0, 0, 0, 56)
        row3Options.BackgroundTransparency = 1
        row3Options.Parent = mainFrame
        local matchCaseBtn = Instance.new("ImageButton")
        matchCaseBtn.Name = "MatchCaseBtn"
        matchCaseBtn.Size = UDim2.new(0, 20, 0, 20)
        matchCaseBtn.Position = UDim2.new(0, 24, 0, 0)
        matchCaseBtn.BackgroundTransparency = 1
        matchCaseBtn.Image = "rbxassetid://108524879613542"
        matchCaseBtn.Parent = row3Options
        local matchWholeWordBtn = Instance.new("ImageButton")
        matchWholeWordBtn.Name = "MatchWholeWordBtn"
        matchWholeWordBtn.Size = UDim2.new(0, 20, 0, 20)
        matchWholeWordBtn.Position = UDim2.new(0, 48, 0, 0)
        matchWholeWordBtn.BackgroundTransparency = 1
        matchWholeWordBtn.Image = "rbxassetid://137472614441080"
        matchWholeWordBtn.Parent = row3Options
        local useRegexBtn = Instance.new("ImageButton")
        useRegexBtn.Name = "UseRegexBtn"
        useRegexBtn.Size = UDim2.new(0, 20, 0, 20)
        useRegexBtn.Position = UDim2.new(0, 72, 0, 0)
        useRegexBtn.BackgroundTransparency = 1
        useRegexBtn.Image = "rbxassetid://79087075619950"
        useRegexBtn.Parent = row3Options
        local showLabel = Instance.new("TextLabel")
        showLabel.Name = "Show"
        showLabel.Size = UDim2.new(0.68, 0, 1, 0)
        showLabel.Position = UDim2.new(0.32, 0, 0, 0)
        showLabel.BackgroundTransparency = 1
        showLabel.TextColor3 = Color3.new(1, 1, 1)
        showLabel.TextSize = 18
        showLabel.Font = Enum.Font.SourceSansLight
        showLabel.TextXAlignment = Enum.TextXAlignment.Left
        showLabel.Text = ""
        showLabel.Parent = row3Options
        local uiScale = Instance.new("UIScale")
        uiScale.Name = "UIScale"
        uiScale.Parent = mainFrame
        return mainFrame
    end
    local templateMenu = createFindMenu()
    if self.FindUI or not templateMenu then return end
    local findUI = templateMenu:Clone()
    self.FindUI = findUI
    findUI.AnchorPoint = Vector2.new(1, 0)
    findUI.Position = UDim2.new(1, -8, 0, 8)
    findUI.ZIndex = 100
    findUI.Parent = self.CanvasGroup
    self.FindMatches = {}
    self.CurrentMatchIndex = 0
    local row2 = findUI:FindFirstChild("Row2_Replace")
    local row3 = findUI:FindFirstChild("Row3_Options")
    local isMenuExpanded = false
    local parentAbsoluteSize = self.CanvasGroup.AbsoluteSize
    local availableMenuWidth = math.max(180, math.min(315, parentAbsoluteSize.X - 16))
    if row2 then row2.Visible = false end
    if row3 then row3.Position = UDim2.new(0, 0, 0, 28) end
    findUI.Size = UDim2.new(0, availableMenuWidth, 0, 62)
    local function addHoverEffect(button)
        local hoverFrame = Instance.new("Frame")
        hoverFrame.Name = "HoverFrame"
        hoverFrame.Size = UDim2.new(1, 0, 1, 0)
        hoverFrame.Position = UDim2.new(0, 0, 0, 0)
        hoverFrame.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
        hoverFrame.BackgroundTransparency = 1
        hoverFrame.BorderSizePixel = 0
        hoverFrame.ZIndex = 1
        hoverFrame.Parent = button
        button.MouseEnter:Connect(function() hoverFrame.BackgroundTransparency = 0.5 end)
        button.MouseLeave:Connect(function() hoverFrame.BackgroundTransparency = 1 end)
    end
    local showMatchLabel = row3 and row3:FindFirstChild("Show")
    local function updateMatches(queryText, avoidJumping)
        self.FindMatches = {}
        if not showMatchLabel then return end
        if not queryText or queryText == "" then
            showMatchLabel.Text = ""
            if not avoidJumping then
                self.SelectionStart = self.CursorIndex
                self:UpdateBlinker(true)
            else
                self:UpdateBlinker(false)
            end
            return
        end
        local currentEditorText = self.CanvasGroup:GetAttribute("Text") or ""
        local queryTrimmed = queryText:match("^(.-)%s*$")
        if not queryTrimmed or queryTrimmed == "" then queryTrimmed = queryText end
        local queryLowerText = queryTrimmed:lower()
        local editorLowerText = currentEditorText:lower()
        local searchStart = 1
        while true do
            local startPos, endPos = editorLowerText:find(queryLowerText, searchStart, true)
            if not startPos then break end
            table.insert(self.FindMatches, {s = startPos - 1, e = endPos})
            searchStart = endPos + 1
        end
        local matchCount = #self.FindMatches
        if matchCount == 0 then
            showMatchLabel.Text = "No results"
            if not avoidJumping then
                self.SelectionStart = self.CursorIndex
                self:UpdateBlinker(true)
            else
                self:UpdateBlinker(false)
            end
            return
        end
        if not avoidJumping then
            self.CurrentMatchIndex = 1
            showMatchLabel.Text = "1 of " .. matchCount .. " matches"
            self.SelectionStart = self.FindMatches[1].s
            self.CursorIndex = self.FindMatches[1].e
            self:UpdateBlinker(true)
        else
            if self.CurrentMatchIndex > matchCount then self.CurrentMatchIndex = matchCount end
            if self.CurrentMatchIndex < 1 then self.CurrentMatchIndex = 1 end
            showMatchLabel.Text = self.CurrentMatchIndex .. " of " .. matchCount .. " matches"
            self:UpdateBlinker(false)
        end
    end
    local function jumpToMatch(index)
        local matchCount = #self.FindMatches
        if matchCount == 0 then return end
        if index < 1 then index = matchCount end
        if index > matchCount then index = 1 end
        self.CurrentMatchIndex = index
        if showMatchLabel then showMatchLabel.Text = index .. " of " .. matchCount .. " matches" end
        self.SelectionStart = self.FindMatches[index].s
        self.CursorIndex = self.FindMatches[index].e
        self:UpdateBlinker(true)
    end
    local row1 = findUI:FindFirstChild("Row1_Find")
    if row1 then
        local btnClose = row1:FindFirstChild("CloseBtn")
        if btnClose then
            addHoverEffect(btnClose)
            btnClose.MouseButton1Click:Connect(function() self:CloseFindUI() end)
        end
        local btnFindPrev = row1:FindFirstChild("FindPrevBtn")
        if btnFindPrev then
            addHoverEffect(btnFindPrev)
            btnFindPrev.MouseButton1Click:Connect(function() jumpToMatch(self.CurrentMatchIndex - 1) end)
        end
        local btnFindNext = row1:FindFirstChild("FindNextBtn")
        if btnFindNext then
            addHoverEffect(btnFindNext)
            btnFindNext.MouseButton1Click:Connect(function() jumpToMatch(self.CurrentMatchIndex + 1) end)
        end
        local btnToggleExpand = row1:FindFirstChild("ToggleExpandBtn")
        if btnToggleExpand then
            addHoverEffect(btnToggleExpand)
            local iconTopChevron = btnToggleExpand:FindFirstChild("TopChevron")
            local iconBottomChevron = btnToggleExpand:FindFirstChild("BottomChevron")
            btnToggleExpand.MouseButton1Click:Connect(function()
                isMenuExpanded = not isMenuExpanded
                if iconTopChevron then iconTopChevron.Rotation = isMenuExpanded and 180 or 0 end
                if iconBottomChevron then iconBottomChevron.Rotation = isMenuExpanded and 180 or 0 end
                if row2 then row2.Visible = isMenuExpanded end
                local currentWidthVal = math.max(180, math.min(315, self.CanvasGroup.AbsoluteSize.X - 16))
                if isMenuExpanded then
                    if row3 then row3.Position = UDim2.new(0, 0, 0, 56) end
                    findUI.Size = UDim2.new(0, currentWidthVal, 0, 88)
                else
                    if row3 then row3.Position = UDim2.new(0, 0, 0, 28) end
                    findUI.Size = UDim2.new(0, currentWidthVal, 0, 62)
                end
            end)
        end
        local searchInputBox = row1:FindFirstChild("FindBox")
        if searchInputBox then
            searchInputBox.MultiLine = false
            searchInputBox.ClearTextOnFocus = false
            local searchInputStroke = searchInputBox:FindFirstChildWhichIsA("UIStroke")
            searchInputBox.Focused:Connect(function()
                if searchInputStroke then searchInputStroke.Enabled = true end
                self:Unfocus()
            end)
            searchInputBox.FocusLost:Connect(function(enterPressed)
                if searchInputStroke then searchInputStroke.Enabled = false end
                if enterPressed then
                    jumpToMatch(self.CurrentMatchIndex + 1)
                    task.defer(function()
                        if searchInputBox and self.FindUI then
                            searchInputBox:CaptureFocus()
                            searchInputBox.CursorPosition = #searchInputBox.Text + 1
                        end
                    end)
                elseif not self.FindUI then
                    self:Focus()
                end
            end)
            searchInputBox:GetPropertyChangedSignal("Text"):Connect(function()
                local rawSearchText = searchInputBox.Text
                local cleanSearchText = rawSearchText:gsub("[\n\r]", "")
                if rawSearchText ~= cleanSearchText then
                    searchInputBox.Text = cleanSearchText
                    return
                end
                updateMatches(cleanSearchText, false)
            end)
            if self.SelectionStart ~= self.CursorIndex then
                local selStart = math.min(self.SelectionStart, self.CursorIndex)
                local selEnd = math.max(self.SelectionStart, self.CursorIndex)
                local editorFullText = self.CanvasGroup:GetAttribute("Text") or ""
                local selectedString = editorFullText:sub(selStart + 1, selEnd)
                if selectedString ~= "" then
                    local cleanedSelectedString = selectedString:gsub("[\n\r]", "")
                    searchInputBox.Text = cleanedSelectedString
                end
            end
            self.FindTextConn = self.CanvasGroup:GetAttributeChangedSignal("Text"):Connect(function()
                if searchInputBox then updateMatches(searchInputBox.Text, true) end
            end)
        end
    end
    if row2 then
        local btnReplaceNext = row2:FindFirstChild("ReplaceNextBtn")
        if btnReplaceNext then addHoverEffect(btnReplaceNext) end
        local btnReplaceAll = row2:FindFirstChild("ReplaceAllBtn")
        if btnReplaceAll then addHoverEffect(btnReplaceAll) end
        local replaceInputBox = row2:FindFirstChild("ReplaceBox")
        if replaceInputBox then
            replaceInputBox.MultiLine = false
            replaceInputBox.ClearTextOnFocus = false
            local replaceInputStroke = replaceInputBox:FindFirstChildWhichIsA("UIStroke")
            replaceInputBox.Focused:Connect(function()
                if replaceInputStroke then replaceInputStroke.Enabled = true end
                self:Unfocus()
            end)
            replaceInputBox.FocusLost:Connect(function()
                if replaceInputStroke then replaceInputStroke.Enabled = false end
            end)
            replaceInputBox:GetPropertyChangedSignal("Text"):Connect(function()
                local rawReplaceText = replaceInputBox.Text
                local cleanReplaceText = rawReplaceText:gsub("[\n\r]", "")
                if rawReplaceText ~= cleanReplaceText then replaceInputBox.Text = cleanReplaceText end
            end)
        end
    end
    if row3 then
        local btnMatchCase = row3:FindFirstChild("MatchCaseBtn")
        if btnMatchCase then addHoverEffect(btnMatchCase) end
        local btnMatchWholeWord = row3:FindFirstChild("MatchWholeWordBtn")
        if btnMatchWholeWord then addHoverEffect(btnMatchWholeWord) end
        local btnUseRegex = row3:FindFirstChild("UseRegexBtn")
        if btnUseRegex then addHoverEffect(btnUseRegex) end
    end
    self.FindResizeConn = self.CanvasGroup:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
        if not self.FindUI then return end
        local updatedWidth = math.max(180, math.min(315, self.CanvasGroup.AbsoluteSize.X - 16))
        local currentMenuHeight = self.FindUI.Size.Y.Offset
        self.FindUI.Size = UDim2.new(0, updatedWidth, 0, currentMenuHeight)
    end)
end
function Baseline:CloseFindUI()
    if not self.FindUI then return end
    local menuToClose = self.FindUI
    self.FindUI = nil
    menuToClose:Destroy()
    if self.FindTextConn then
        self.FindTextConn:Disconnect()
        self.FindTextConn = nil
    end
    if self.FindResizeConn then
        self.FindResizeConn:Disconnect()
        self.FindResizeConn = nil
    end
    self.FindMatches = {}
    self.CurrentMatchIndex = 0
    self.SelectionStart = self.CursorIndex
    self:UpdateBlinker(true)
end
function Baseline:Import(moduleName)
    local syntaxModule = self.CanvasGroup:FindFirstChild(moduleName)
    if syntaxModule and syntaxModule:IsA("ModuleScript") then
        self.SyntaxRules = require(syntaxModule)
        self:UpdateBlinker(false)
    end
end
function Baseline:ImportTheme(url)
    task.spawn(function()
        pcall(function()
            local source = ""
            if getgenv and getgenv().game and getgenv().game.HttpGet then
                source = getgenv().game:HttpGet(url)
            else
                source = HttpService:GetAsync(url)
            end
            local loadFunc = loadstring or (getfenv and getfenv().loadstring)
            if loadFunc then
                local fn = loadFunc(source)
                if fn then
                    self.SyntaxRules = fn()
                    self:UpdateBlinker(true)
                end
            end
        end)
    end)
end
function Baseline:GetSyntaxStateAt(text, targetIndex, startIdx, startState)
    local currentIndex = startIdx or 1
    local currentState = startState
    while currentIndex < targetIndex do
        if currentState then
            if currentState.close == "\n" then
                local nextNewline = text:find("\n", currentIndex, true)
                if nextNewline and nextNewline < targetIndex then
                    currentIndex = nextNewline + 1
                    currentState = nil
                else
                    break
                end
            elseif currentState.type == "string" and (currentState.close == '"' or currentState.close == "'") then
                local endStringIdx = nil
                local searchIdx = currentIndex
                while searchIdx < targetIndex do
                    local nextQuote = text:find(currentState.close, searchIdx, true)
                    if not nextQuote then break end
                    local backslashCount = 0
                    local backslashIdx = nextQuote - 1
                    while backslashIdx >= 1 and text:sub(backslashIdx, backslashIdx) == "\\" do
                        backslashCount = backslashCount + 1
                        backslashIdx = backslashIdx - 1
                    end
                    if (backslashCount % 2) == 0 then
                        endStringIdx = nextQuote
                        break
                    else
                        searchIdx = nextQuote + 1
                    end
                end
                if endStringIdx and endStringIdx < targetIndex then
                    currentIndex = endStringIdx + 1
                    currentState = nil
                else
                    break
                end
            else
                local endSpecialIdx = text:find(currentState.close, currentIndex, true)
                if endSpecialIdx and (endSpecialIdx + #currentState.close) <= targetIndex then
                    currentIndex = endSpecialIdx + #currentState.close
                    currentState = nil
                else
                    break
                end
            end
        else
            local nextSpecialChar = text:find('[\"\'%[%-]', currentIndex)
            if not nextSpecialChar or nextSpecialChar >= targetIndex then break end
            currentIndex = nextSpecialChar
            local character = text:sub(currentIndex, currentIndex)
            if character == '"' or character == "'" then
                currentState = {type = "string", close = character}
                currentIndex = currentIndex + 1
            elseif character == "[" and text:sub(currentIndex, currentIndex + 20):match("^%[=*%[") then
                local bracketMatch = text:sub(currentIndex, currentIndex + 20):match("^%[=*%[")
                currentState = {type = "string", close = "]" .. string.rep("=", #bracketMatch - 2) .. "]"}
                currentIndex = currentIndex + #bracketMatch
            elseif character == "-" and text:sub(currentIndex + 1, currentIndex + 1) == "-" then
                local commentMatch = text:sub(currentIndex + 2, currentIndex + 22):match("^%[=*%[")
                if commentMatch then
                    currentState = {type = "comment", close = "]" .. string.rep("=", #commentMatch - 2) .. "]"}
                    currentIndex = currentIndex + 2 + #commentMatch
                else
                    currentState = {type = "comment", close = "\n"}
                    currentIndex = currentIndex + 2
                end
            else
                currentIndex = currentIndex + 1
            end
        end
    end
    return currentState
end
function Baseline:ApplySyntax(lineText, startState)
    if not self.SyntaxRules or lineText == "" then return escapeRichText(lineText) end
    if #lineText > 25000 then return escapeRichText(lineText) end
    local resultsTable = {}
    local textLength = #lineText
    local currentIndex = 1
    local currentState = startState
    local function getRuleHexColor(ruleName, defaultHex)
        local ruleData = self.SyntaxRules[ruleName]
        if ruleData then
            return string.format("#%02X%02X%02X", math.floor(ruleData.color.R * 255 + 0.5), math.floor(ruleData.color.G * 255 + 0.5), math.floor(ruleData.color.B * 255 + 0.5))
        end
        return defaultHex
    end
    local commentHexColor = getRuleHexColor("comment_single", "#6272A4")
    local stringHexColor = getRuleHexColor("string", "#F1FA8C")
    if currentState then
        if currentState.close == "\n" then
            table.insert(resultsTable, '<font color="' .. commentHexColor .. '">' .. escapeRichText(lineText) .. "</font>")
            return table.concat(resultsTable)
        end
        local closeColor = (currentState.type == "comment") and commentHexColor or stringHexColor
        local endStateIndex = nil
        if currentState.type == "string" and (currentState.close == '"' or currentState.close == "'") then
            local searchIdx = currentIndex
            while searchIdx <= textLength do
                local nextQuoteIdx = lineText:find(currentState.close, searchIdx, true)
                if not nextQuoteIdx then break end
                local backslashCount = 0
                local backslashIdx = nextQuoteIdx - 1
                while backslashIdx >= 1 and lineText:sub(backslashIdx, backslashIdx) == "\\" do
                    backslashCount = backslashCount + 1
                    backslashIdx = backslashIdx - 1
                end
                if (backslashCount % 2) == 0 then
                    endStateIndex = nextQuoteIdx
                    break
                else
                    searchIdx = nextQuoteIdx + 1
                end
            end
        else
            endStateIndex = lineText:find(currentState.close, currentIndex, true)
        end
        if endStateIndex then
            local subWord = lineText:sub(currentIndex, (endStateIndex + #currentState.close) - 1)
            table.insert(resultsTable, '<font color="' .. closeColor .. '">' .. escapeRichText(subWord) .. "</font>")
            currentIndex = endStateIndex + #currentState.close
            currentState = nil
        else
            table.insert(resultsTable, '<font color="' .. closeColor .. '">' .. escapeRichText(lineText:sub(currentIndex)) .. "</font>")
            return table.concat(resultsTable)
        end
    end
    while currentIndex <= textLength do
        local character = lineText:sub(currentIndex, currentIndex)
        if character:match("[%a_]") then
            local startWordIdx = currentIndex
            while currentIndex <= textLength and lineText:sub(currentIndex, currentIndex):match("[%w_]") do
                currentIndex = currentIndex + 1
            end
            local wordString = lineText:sub(startWordIdx, currentIndex - 1)
            local wordHex = getRuleHexColor(wordString, "#F8F8F2")
            table.insert(resultsTable, '<font color="' .. wordHex .. '">' .. escapeRichText(wordString) .. "</font>")
        elseif character:match("%d") then
            local startNumIdx = currentIndex
            while currentIndex <= textLength and lineText:sub(currentIndex, currentIndex):match("[%d%.]") do
                currentIndex = currentIndex + 1
            end
            local numberString = lineText:sub(startNumIdx, currentIndex - 1)
            local numberHex = getRuleHexColor("num_integer", "#FFB86C")
            table.insert(resultsTable, '<font color="' .. numberHex .. '">' .. escapeRichText(numberString) .. "</font>")
        elseif character == '"' or character == "'" then
            local startQuoteIdx = currentIndex
            local quoteChar = character
            currentIndex = currentIndex + 1
            while currentIndex <= textLength do
                local nextQuoteMatch = lineText:find(quoteChar, currentIndex, true)
                if not nextQuoteMatch then
                    currentIndex = textLength + 1
                    break
                end
                local backslashCount = 0
                local backslashIdx = nextQuoteMatch - 1
                while backslashIdx >= (startQuoteIdx + 1) and lineText:sub(backslashIdx, backslashIdx) == "\\" do
                    backslashCount = backslashCount + 1
                    backslashIdx = backslashIdx - 1
                end
                if (backslashCount % 2) == 0 then
                    currentIndex = nextQuoteMatch + 1
                    break
                else
                    currentIndex = nextQuoteMatch + 1
                end
            end
            local fullString = lineText:sub(startQuoteIdx, currentIndex - 1)
            table.insert(resultsTable, '<font color="' .. stringHexColor .. '">' .. escapeRichText(fullString) .. "</font>")
        elseif character == "[" and lineText:sub(currentIndex, currentIndex + 20):match("^%[=*%[") then
            local startBracketIdx = currentIndex
            local bracketMatch = lineText:sub(currentIndex, currentIndex + 20):match("^%[=*%[")
            local closeBracketStr = "]" .. string.rep("=", #bracketMatch - 2) .. "]"
            local endBracketIdx = lineText:find(closeBracketStr, currentIndex + #bracketMatch, true)
            if endBracketIdx then
                currentIndex = endBracketIdx + #closeBracketStr
            else
                currentIndex = textLength + 1
            end
            local multilineString = lineText:sub(startBracketIdx, currentIndex - 1)
            table.insert(resultsTable, '<font color="' .. stringHexColor .. '">' .. escapeRichText(multilineString) .. "</font>")
        elseif character == "-" and lineText:sub(currentIndex + 1, currentIndex + 1) == "-" then
            local startCommentIdx = currentIndex
            local commentMatch = lineText:sub(currentIndex + 2, currentIndex + 22):match("^%[=*%[")
            if commentMatch then
                local closeCommentStr = "]" .. string.rep("=", #commentMatch - 2) .. "]"
                local endCommentIdx = lineText:find(closeCommentStr, currentIndex + 2 + #commentMatch, true)
                if endCommentIdx then
                    currentIndex = endCommentIdx + #closeCommentStr
                else
                    currentIndex = textLength + 1
                end
            else
                currentIndex = textLength + 1
            end
            local fullComment = lineText:sub(startCommentIdx, currentIndex - 1)
            table.insert(resultsTable, '<font color="' .. commentHexColor .. '">' .. escapeRichText(fullComment) .. "</font>")
        elseif character:match("[%p]") then
            local opHex = getRuleHexColor("op_add", "#F8F8F2")
            table.insert(resultsTable, '<font color="' .. opHex .. '">' .. escapeRichText(character) .. "</font>")
            currentIndex = currentIndex + 1
        else
            table.insert(resultsTable, escapeRichText(character))
            currentIndex = currentIndex + 1
        end
    end
    return table.concat(resultsTable)
end
function Baseline:GetDisplayText()
    local rawText = self.CanvasGroup:GetAttribute("Text") or ""
    if self.CanvasGroup:GetAttribute("PasswordMode") then return string.rep("•", utf8.len(rawText) or #rawText) end
    return rawText
end
function Baseline:PushHistory()
    local currentText = self.CanvasGroup:GetAttribute("Text") or ""
    if self.History[self.HistoryIdx].text == currentText then return end
    while #self.History > self.HistoryIdx do table.remove(self.History) end
    table.insert(self.History, {text = currentText, cursor = self.CursorIndex, sel = self.SelectionStart})
    self.HistoryIdx = #self.History
end
function Baseline:Undo()
    if self.HistoryIdx > 1 then
        self.HistoryIdx = self.HistoryIdx - 1
        local previousState = self.History[self.HistoryIdx]
        self.CanvasGroup:SetAttribute("Text", previousState.text)
        self.CursorIndex = previousState.cursor
        self.SelectionStart = previousState.sel
        self:UpdateBlinker(true)
    end
end
function Baseline:Redo()
    if self.HistoryIdx < #self.History then
        self.HistoryIdx = self.HistoryIdx + 1
        local nextState = self.History[self.HistoryIdx]
        self.CanvasGroup:SetAttribute("Text", nextState.text)
        self.CursorIndex = nextState.cursor
        self.SelectionStart = nextState.sel
        self:UpdateBlinker(true)
    end
end
function Baseline:Copy()
    if self.SelectionStart ~= self.CursorIndex then
        local selStart = math.min(self.SelectionStart, self.CursorIndex)
        local selEnd = math.max(self.SelectionStart, self.CursorIndex)
        local currentText = self.CanvasGroup:GetAttribute("Text") or ""
        Baseline.Clipboard = currentText:sub(selStart + 1, selEnd)
        local clipboardFunction = setclipboard
        if clipboardFunction then clipboardFunction(Baseline.Clipboard) end
    end
end
function Baseline:Cut()
    if self.CanvasGroup:GetAttribute("ReadOnly") then return end
    self:Copy()
    self:DeleteSelection()
end
function Baseline:PasteChunked(text)
    if self.CanvasGroup:GetAttribute("ReadOnly") then return end
    if self.IsPasting then return end
    self.IsPasting = true
    local maxLength = self.CanvasGroup:GetAttribute("MaxLength")
    if maxLength and maxLength > 0 then
        local currentLength = utf8.len(self.CanvasGroup:GetAttribute("Text") or "") or 0
        local minIndex = math.min(self.SelectionStart, self.CursorIndex)
        local maxIndex = math.max(self.SelectionStart, self.CursorIndex)
        local selectedTextLength = utf8.len((self.CanvasGroup:GetAttribute("Text") or ""):sub(minIndex + 1, maxIndex)) or 0
        local remainingSpace = maxLength - (currentLength - selectedTextLength)
        if remainingSpace <= 0 then
            self.IsPasting = false
            return
        end
        local endOffset = utf8.offset(text, remainingSpace + 1)
        if endOffset then text = text:sub(1, endOffset - 1) end
    end
    task.spawn(function()
        if self.SelectionStart ~= self.CursorIndex then self:DeleteSelection() end
        local currentText = self.CanvasGroup:GetAttribute("Text") or ""
        local stringBefore = currentText:sub(1, self.CursorIndex)
        local stringAfter = currentText:sub(self.CursorIndex + 1)
        self.CursorIndex = self.CursorIndex + #text
        self.SelectionStart = self.CursorIndex
        self.CanvasGroup:SetAttribute("Text", stringBefore .. text .. stringAfter)
        self:PushHistory()
        self.IsPasting = false
        self:UpdateBlinker(true)
    end)
end
function Baseline:Paste()
    if self.CanvasGroup:GetAttribute("ReadOnly") then return end
    if Baseline.Clipboard and Baseline.Clipboard ~= "" then self:PasteChunked(Baseline.Clipboard) end
end
function Baseline:Focus()
    if self.IsFocused then return end
    self.IsFocused = true
    self.Blinker.Visible = self.SelectionStart == self.CursorIndex
    self.BlinkTimer = 0
    ContextActionService:BindAction(self.SinkActionName, function() return Enum.ContextActionResult.Sink end, false, unpack(keysToSink))
    self.PasteBox:CaptureFocus()
    self:UpdateBlinker(true)
end
function Baseline:Unfocus()
    if not self.IsFocused then return end
    self.IsFocused = false
    self.Blinker.Visible = false
    self.HeldKey = nil
    self.IsDragging = false
    self.SelectionStart = self.CursorIndex
    self:UpdateBlinker(true)
    ContextActionService:UnbindAction(self.SinkActionName)
    self.PasteBox:ReleaseFocus()
end
function Baseline:ProcessKey(keyCode, isShiftDown, isCtrlDown)
    if self.CanvasGroup:GetAttribute("ReadOnly") or self.IsPasting then
        if keyCode == Enum.KeyCode.Left or keyCode == Enum.KeyCode.Right or 
           keyCode == Enum.KeyCode.Up or keyCode == Enum.KeyCode.Down or 
           keyCode == Enum.KeyCode.Home or keyCode == Enum.KeyCode.End or 
           keyCode == Enum.KeyCode.PageUp or keyCode == Enum.KeyCode.PageDown then
        else
            return
        end
    end
    local displayedText = self:GetDisplayText()
    if keyCode == Enum.KeyCode.Backspace then
        self:RemoveChar()
    elseif keyCode == Enum.KeyCode.Return or keyCode == Enum.KeyCode.KeypadEnter then
        if self.CanvasGroup:GetAttribute("MultiLine") then
            self.LastTypedChar = "\n"
            self.LastTypedTick = tick()
            if self.SelectionStart ~= self.CursorIndex then self:DeleteSelection() end
            local currentText = self.CanvasGroup:GetAttribute("Text") or ""
            local stringBefore = currentText:sub(1, self.CursorIndex)
            local stringAfter = currentText:sub(self.CursorIndex + 1)
            local lineBeforeCursor = stringBefore:match("[^\n]*$") or ""
            local lineIndentation = lineBeforeCursor:match("^([\t ]*)") or ""
            if AutoIndent.needsEnd(lineBeforeCursor) then
                local insertedString = "\n" .. lineIndentation .. "\t\n" .. lineIndentation .. "end"
                self.CanvasGroup:SetAttribute("Text", stringBefore .. insertedString .. stringAfter)
                self.CursorIndex = self.CursorIndex + 1 + #lineIndentation + 1
                self.SelectionStart = self.CursorIndex
                self:PushHistory()
            else
                local insertedString = "\n" .. lineIndentation
                self.CanvasGroup:SetAttribute("Text", stringBefore .. insertedString .. stringAfter)
                self.CursorIndex = self.CursorIndex + #insertedString
                self.SelectionStart = self.CursorIndex
                self:PushHistory()
            end
        end
    elseif keyCode == Enum.KeyCode.Left then
        if isCtrlDown then
            self.CursorIndex = getPrevWordBoundary(displayedText, self.CursorIndex)
        elseif self.SelectionStart ~= self.CursorIndex and not isShiftDown then
            self.CursorIndex = math.min(self.SelectionStart, self.CursorIndex)
        else
            local offsetPosition = utf8.offset(displayedText, -1, self.CursorIndex + 1)
            if offsetPosition then self.CursorIndex = offsetPosition - 1 end
        end
        if not isShiftDown then self.SelectionStart = self.CursorIndex end
        self:UpdateBlinker(true)
    elseif keyCode == Enum.KeyCode.Right then
        if isCtrlDown then
            self.CursorIndex = getNextWordBoundary(displayedText, self.CursorIndex)
        elseif self.SelectionStart ~= self.CursorIndex and not isShiftDown then
            self.CursorIndex = math.max(self.SelectionStart, self.CursorIndex)
        elseif self.CursorIndex < #displayedText then
            local offsetPosition = utf8.offset(displayedText, 2, self.CursorIndex + 1)
            self.CursorIndex = offsetPosition and (offsetPosition - 1) or #displayedText
        end
        if not isShiftDown then self.SelectionStart = self.CursorIndex end
        self:UpdateBlinker(true)
    elseif keyCode == Enum.KeyCode.Up then
        local font = self.CanvasGroup:GetAttribute("Font")
        local textSize = self.CanvasGroup:GetAttribute("TextSize")
        local lineMap = self:GetLineMapCached(displayedText, textSize, font, self:GetLimit())
        local currentLineIndex = 1
        for index, line in ipairs(lineMap) do
            if self.CursorIndex >= (line.startIdx - 1) and self.CursorIndex <= line.endIdx then
                currentLineIndex = index
                break
            end
        end
        if currentLineIndex > 1 then
            local prevLine = lineMap[currentLineIndex - 1]
            local subString = (prevLine.startIdx <= self.CursorIndex) and displayedText:sub(prevLine.startIdx, self.CursorIndex) or ""
            local currentX = TextService:GetTextSize(subString, textSize, font, Vector2.new(10000, 10000)).X
            self.CursorIndex = self:GetClosestIndexInLine(prevLine, currentX, displayedText, textSize, font)
        else
            self.CursorIndex = 0
        end
        if not isShiftDown then self.SelectionStart = self.CursorIndex end
        self:UpdateBlinker(true)
    elseif keyCode == Enum.KeyCode.Down then
        local font = self.CanvasGroup:GetAttribute("Font")
        local textSize = self.CanvasGroup:GetAttribute("TextSize")
        local lineMap = self:GetLineMapCached(displayedText, textSize, font, self:GetLimit())
        local currentLineIndex = 1
        for index, line in ipairs(lineMap) do
            if self.CursorIndex >= (line.startIdx - 1) and self.CursorIndex <= line.endIdx then
                currentLineIndex = index
                break
            end
        end
        if currentLineIndex < #lineMap then
            local nextLine = lineMap[currentLineIndex + 1]
            local currentLineObj = lineMap[currentLineIndex]
            local subString = (currentLineObj.startIdx <= self.CursorIndex) and displayedText:sub(currentLineObj.startIdx, self.CursorIndex) or ""
            local currentX = TextService:GetTextSize(subString, textSize, font, Vector2.new(10000, 10000)).X
            self.CursorIndex = self:GetClosestIndexInLine(nextLine, currentX, displayedText, textSize, font)
        else
            self.CursorIndex = #displayedText
        end
        if not isShiftDown then self.SelectionStart = self.CursorIndex end
        self:UpdateBlinker(true)
    elseif keyCode == Enum.KeyCode.Home then
        if isCtrlDown then
            self.CursorIndex = 0
        else
            local font = self.CanvasGroup:GetAttribute("Font")
            local textSize = self.CanvasGroup:GetAttribute("TextSize")
            local lineMap = self:GetLineMapCached(displayedText, textSize, font, self:GetLimit())
            for _, line in ipairs(lineMap) do
                if self.CursorIndex >= (line.startIdx - 1) and self.CursorIndex <= line.endIdx then
                    self.CursorIndex = line.startIdx - 1
                    break
                end
            end
        end
        if not isShiftDown then self.SelectionStart = self.CursorIndex end
        self:UpdateBlinker(true)
    elseif keyCode == Enum.KeyCode.End then
        if isCtrlDown then
            self.CursorIndex = #displayedText
        else
            local font = self.CanvasGroup:GetAttribute("Font")
            local textSize = self.CanvasGroup:GetAttribute("TextSize")
            local lineMap = self:GetLineMapCached(displayedText, textSize, font, self:GetLimit())
            for _, line in ipairs(lineMap) do
                if self.CursorIndex >= (line.startIdx - 1) and self.CursorIndex <= line.endIdx then
                    self.CursorIndex = line.endIdx
                    break
                end
            end
        end
        if not isShiftDown then self.SelectionStart = self.CursorIndex end
        self:UpdateBlinker(true)
    elseif keyCode == Enum.KeyCode.PageUp or keyCode == Enum.KeyCode.PageDown then
        local font = self.CanvasGroup:GetAttribute("Font")
        local textSize = self.CanvasGroup:GetAttribute("TextSize")
        local lineMap = self:GetLineMapCached(displayedText, textSize, font, self:GetLimit())
        local visibleLinesCount = math.max(1, math.floor(self.CanvasGroup.AbsoluteSize.Y / (lineMap[1] and lineMap[1].height or 14)))
        local currentLineIndex = 1
        for index, line in ipairs(lineMap) do
            if self.CursorIndex >= (line.startIdx - 1) and self.CursorIndex <= line.endIdx then
                currentLineIndex = index
                break
            end
        end
        local targetLineIndex = (keyCode == Enum.KeyCode.PageUp) and math.max(1, currentLineIndex - visibleLinesCount) or math.min(#lineMap, currentLineIndex + visibleLinesCount)
        self.CursorIndex = lineMap[targetLineIndex].endIdx
        if not isShiftDown then self.SelectionStart = self.CursorIndex end
        self:UpdateBlinker(true)
    else
        local mappedCharacter = getCharacter(keyCode, isShiftDown)
        if mappedCharacter ~= "" then
            self.LastTypedChar = mappedCharacter
            self.LastTypedTick = tick()
            self:AppendText(mappedCharacter)
        end
    end
end
function Baseline:DeleteSelection()
    if self.SelectionStart == self.CursorIndex then return false end
    local minIndex = math.min(self.SelectionStart, self.CursorIndex)
    local maxIndex = math.max(self.SelectionStart, self.CursorIndex)
    local currentText = self.CanvasGroup:GetAttribute("Text") or ""
    local stringBefore = currentText:sub(1, minIndex)
    local stringAfter = currentText:sub(maxIndex + 1)
    self.CursorIndex = minIndex
    self.SelectionStart = minIndex
    self.CanvasGroup:SetAttribute("Text", stringBefore .. stringAfter)
    self:PushHistory()
    return true
end
function Baseline:AppendText(character)
    local maxLength = self.CanvasGroup:GetAttribute("MaxLength")
    if maxLength and maxLength > 0 then
        local currentLength = utf8.len(self.CanvasGroup:GetAttribute("Text") or "")
        local minIndex = math.min(self.SelectionStart, self.CursorIndex)
        local maxIndex = math.max(self.SelectionStart, self.CursorIndex)
        local selectedLength = utf8.len((self.CanvasGroup:GetAttribute("Text") or ""):sub(minIndex + 1, maxIndex))
        if (currentLength - selectedLength) + utf8.len(character) > maxLength then return end
    end
    if self.SelectionStart ~= self.CursorIndex then self:DeleteSelection() end
    local currentText = self.CanvasGroup:GetAttribute("Text") or ""
    local stringBefore = currentText:sub(1, self.CursorIndex)
    local stringAfter = currentText:sub(self.CursorIndex + 1)
    local pairsMap = {["("] = ")", ["{"] = "}", ["["] = "]"}
    local quoteMap = {['\"'] = '\"', ["'"] = "'", ["`"] = "`"}
    local closeMap = {[")"] = true, ["}"] = true, ["]"] = true}
    if (quoteMap[character] or closeMap[character]) and stringAfter:sub(1, 1) == character then
        self.CursorIndex = self.CursorIndex + 1
        self.SelectionStart = self.CursorIndex
        self:UpdateBlinker(true)
        return
    elseif pairsMap[character] or quoteMap[character] then
        local closeCharacter = pairsMap[character] or quoteMap[character]
        self.CanvasGroup:SetAttribute("Text", stringBefore .. character .. closeCharacter .. stringAfter)
        self.CursorIndex = self.CursorIndex + 1
        self.SelectionStart = self.CursorIndex
        self:PushHistory()
        self:UpdateBlinker(true)
        return
    end
    self.CursorIndex = self.CursorIndex + #character
    self.SelectionStart = self.CursorIndex
    self.CanvasGroup:SetAttribute("Text", stringBefore .. character .. stringAfter)
    self:PushHistory()
end
function Baseline:RemoveChar()
    if self.SelectionStart ~= self.CursorIndex then
        self:DeleteSelection()
        return
    end
    local currentText = self.CanvasGroup:GetAttribute("Text") or ""
    if self.CursorIndex > 0 then
        local stringBefore = currentText:sub(1, self.CursorIndex)
        local stringAfter = currentText:sub(self.CursorIndex + 1)
        local previousCharacter = stringBefore:sub(-1)
        local nextCharacter = stringAfter:sub(1, 1)
        local pairsMap = {["("] = ")", ["{"] = "}", ["["] = "]"}
        local quoteMap = {['\"'] = '\"', ["'"] = "'", ["`"] = "`"}
        if pairsMap[previousCharacter] == nextCharacter or (quoteMap[previousCharacter] == nextCharacter and quoteMap[previousCharacter]) then
            stringAfter = stringAfter:sub(2)
        end
        local offsetPosition = utf8.offset(stringBefore, -1)
        if offsetPosition then
            stringBefore = stringBefore:sub(1, offsetPosition - 1)
            self.CursorIndex = #stringBefore
            self.SelectionStart = self.CursorIndex
            self.CanvasGroup:SetAttribute("Text", stringBefore .. stringAfter)
            self:PushHistory()
        end
    end
end
function Baseline:GetLimit()
    local isWrapped = self.CanvasGroup:GetAttribute("Wrapped") or false
    local numberMarginWidth = 0
    if self.CanvasGroup:GetAttribute("Lines") then
        local font = self.CanvasGroup:GetAttribute("Font") or Enum.Font.SourceSans
        local textSize = self.CanvasGroup:GetAttribute("TextSize") or 16
        local textForLines = self:GetDisplayText()
        local lineCountEstimate = 1
        for _ in string.gmatch(textForLines, "\n") do
            lineCountEstimate = lineCountEstimate + 1
        end
        local numberWidth = TextService:GetTextSize(tostring(lineCountEstimate), textSize, font, Vector2.new(10000, 10000)).X
        numberMarginWidth = math.max(30, numberWidth + 16)
    end
    local maximumWidth = (self.CanvasGroup.AbsoluteSize.X - 8) - numberMarginWidth
    return isWrapped and Vector2.new(math.max(10, maximumWidth), 10000) or Vector2.new(10000, 10000)
end
function Baseline:GetLineMapCached(text, textSize, font, limitVector)
    if self.CachedText == text and self.CachedTextSize == textSize and self.CachedFont == font and self.CachedLimitX == limitVector.X and self.CachedLimitY == limitVector.Y then
        return self.CachedLineMap
    end
    self.CachedText = text
    self.CachedTextSize = textSize
    self.CachedFont = font
    self.CachedLimitX = limitVector.X
    self.CachedLimitY = limitVector.Y
    self.CachedLineMap = self:GetLineMap(text, textSize, font, limitVector)
    return self.CachedLineMap
end
function Baseline:GetLineMap(text, textSize, font, limitVector)
    local lineSegments = {}
    local defaultTextHeight = TextService:GetTextSize("A", textSize, font, Vector2.new(10000, 10000)).Y
    if text == "" then
        self.CachedDocumentWidth = 8
        return {{startIdx = 1, endIdx = 0, y = 0, height = defaultTextHeight, lineNumber = 1}}
    end
    local currentYPosition = 0
    local iteratorIndex = 1
    local isWrapped = limitVector.X < 10000
    local textLength = #text
    local logicalLineNumber = 1
    local maxLen = 0
    local maxLenStart = 1
    local maxLenEnd = 0
    while iteratorIndex <= textLength do
        local nextNewlineMatch = text:find("\n", iteratorIndex)
        local segmentEndIndex = nextNewlineMatch and (nextNewlineMatch - 1) or textLength
        if not isWrapped then
            table.insert(lineSegments, {
                startIdx = iteratorIndex, 
                endIdx = segmentEndIndex, 
                y = currentYPosition, 
                height = defaultTextHeight, 
                lineNumber = logicalLineNumber
            })
            local segLen = segmentEndIndex - iteratorIndex
            if segLen > maxLen then
                maxLen = segLen
                maxLenStart = iteratorIndex
                maxLenEnd = segmentEndIndex
            end
            currentYPosition = currentYPosition + defaultTextHeight
            iteratorIndex = nextNewlineMatch and (nextNewlineMatch + 1) or (textLength + 1)
            logicalLineNumber = logicalLineNumber + 1
        else
            if iteratorIndex > segmentEndIndex then
                table.insert(lineSegments, {
                    startIdx = iteratorIndex, 
                    endIdx = segmentEndIndex, 
                    y = currentYPosition, 
                    height = defaultTextHeight, 
                    lineNumber = logicalLineNumber
                })
                currentYPosition = currentYPosition + defaultTextHeight
            else
                local currentLineStartIndex = iteratorIndex
                local isFirstWrapChunk = true
                while currentLineStartIndex <= segmentEndIndex do
                    local segmentSize = TextService:GetTextSize(text:sub(currentLineStartIndex, segmentEndIndex), textSize, font, limitVector)
                    if segmentSize.Y <= defaultTextHeight then
                        table.insert(lineSegments, {
                            startIdx = currentLineStartIndex, 
                            endIdx = segmentEndIndex, 
                            y = currentYPosition, 
                            height = defaultTextHeight, 
                            lineNumber = isFirstWrapChunk and logicalLineNumber or nil
                        })
                        currentYPosition = currentYPosition + defaultTextHeight
                        break
                    else
                        local wrapIndex = findWrapPoint(text, currentLineStartIndex, segmentEndIndex, textSize, font, limitVector, defaultTextHeight)
                        if wrapIndex < currentLineStartIndex then
                            wrapIndex = currentLineStartIndex
                        end
                        table.insert(lineSegments, {
                            startIdx = currentLineStartIndex, 
                            endIdx = wrapIndex, 
                            y = currentYPosition, 
                            height = defaultTextHeight, 
                            lineNumber = isFirstWrapChunk and logicalLineNumber or nil
                        })
                        currentYPosition = currentYPosition + defaultTextHeight
                        currentLineStartIndex = wrapIndex + 1
                        isFirstWrapChunk = false
                    end
                end
            end
            iteratorIndex = nextNewlineMatch and (nextNewlineMatch + 1) or (textLength + 1)
            logicalLineNumber = logicalLineNumber + 1
        end
    end
    if text:sub(-1) == "\n" then
        table.insert(lineSegments, {
            startIdx = textLength + 1, 
            endIdx = textLength, 
            y = currentYPosition, 
            height = defaultTextHeight, 
            lineNumber = logicalLineNumber
        })
    end
    if not isWrapped then
        if maxLenEnd >= maxLenStart then
            local widestString = text:sub(maxLenStart, maxLenEnd)
            self.CachedDocumentWidth = TextService:GetTextSize(widestString, textSize, font, Vector2.new(10000, 10000)).X + 8
        else
            self.CachedDocumentWidth = 8
        end
    else
        self.CachedDocumentWidth = limitVector.X
    end
    return lineSegments
end
function Baseline:GetClosestIndexInLine(lineData, targetX, text, textSize, font)
    local bestIndexFound = lineData.startIdx - 1
    local minDistanceX = math.huge
    for index = lineData.startIdx - 1, lineData.endIdx do
        local subString = (lineData.startIdx <= index) and text:sub(lineData.startIdx, index) or ""
        local textXSize = TextService:GetTextSize(subString, textSize, font, Vector2.new(10000, 10000)).X
        local distanceX = math.abs(textXSize - targetX)
        if distanceX < minDistanceX then
            minDistanceX = distanceX
            bestIndexFound = index
        end
    end
    return bestIndexFound
end
function Baseline:GetClosestCursorIndex(clickX, clickY)
    local displayedText = self:GetDisplayText()
    if displayedText == "" then return 0 end
    local font = self.CanvasGroup:GetAttribute("Font") or Enum.Font.SourceSans
    local textSize = self.CanvasGroup:GetAttribute("TextSize") or 16
    local lineMapData = self:GetLineMapCached(displayedText, textSize, font, self:GetLimit())
    if #lineMapData == 0 then return 0 end
    local optimalLine = lineMapData[1]
    local minDistanceY = math.huge
    for _, line in ipairs(lineMapData) do
        local centerLineY = line.y + (line.height / 2)
        local distanceY = math.abs(centerLineY - clickY)
        if distanceY < minDistanceY then
            minDistanceY = distanceY
            optimalLine = line
        end
    end
    return self:GetClosestIndexInLine(optimalLine, clickX, displayedText, textSize, font)
end
function Baseline:UpdateBlinker(autoScrollEnabled)
    if autoScrollEnabled == nil then autoScrollEnabled = true end
    local rawEditorText = self.CanvasGroup:GetAttribute("Text") or ""
    local displayedText = self:GetDisplayText()
    local editorFont = self.CanvasGroup:GetAttribute("Font") or Enum.Font.SourceSans
    local editorTextSize = self.CanvasGroup:GetAttribute("TextSize") or 16
    local editorHighlightColor = self.CanvasGroup:GetAttribute("HighlightColor") or Color3.fromRGB(0, 120, 215)
    local editorTextColor = self.CanvasGroup:GetAttribute("TextColor3") or Color3.new(1, 1, 1)
    local hasLineNumbers = self.CanvasGroup:GetAttribute("Lines") or false
    if self.CursorIndex > #displayedText then self.CursorIndex = #displayedText end
    if self.CursorIndex < 0 then self.CursorIndex = 0 end
    if self.SelectionStart > #displayedText then self.SelectionStart = #displayedText end
    if self.SelectionStart < 0 then self.SelectionStart = 0 end
    self.PlaceholderLabel.TextSize = editorTextSize
    self.PlaceholderLabel.Font = editorFont
    self.PlaceholderLabel.Visible = rawEditorText == ""
    local lineNumbersMarginWidth = 0
    if hasLineNumbers then
        local lineCountEstimate = 1
        for _ in string.gmatch(displayedText, "\n") do lineCountEstimate = lineCountEstimate + 1 end
        local numberWidth = TextService:GetTextSize(tostring(lineCountEstimate), editorTextSize, editorFont, Vector2.new(10000, 10000)).X
        lineNumbersMarginWidth = math.max(30, numberWidth + 16)
    end
    self.LineNumbersContainer.Visible = hasLineNumbers
    self.LineNumbersContainer.Size = UDim2.new(0, lineNumbersMarginWidth, 1, 0)
    self.LineNumbersContainer.Position = UDim2.new(0, 0, 0, 0)
    self.TextContainer.Size = UDim2.new(1, -lineNumbersMarginWidth, 1, 0)
    self.TextContainer.Position = UDim2.new(0, lineNumbersMarginWidth, 0, 0)
    local editorLimit = self:GetLimit()
    local editorLineMap = self:GetLineMapCached(displayedText, editorTextSize, editorFont, editorLimit)
    local editorDefaultHeight = editorLineMap[1] and editorLineMap[1].height or 14
    self.DocumentHeight = editorLineMap[#editorLineMap] and (editorLineMap[#editorLineMap].y + editorLineMap[#editorLineMap].height) or editorDefaultHeight
    self.DocumentHeight = self.DocumentHeight + 22
    local currentCursorX, currentCursorY = 0, 0
    local currentCursorHeight = editorDefaultHeight
    if displayedText ~= "" then
        for _, lineData in ipairs(editorLineMap) do
            if self.CursorIndex >= (lineData.startIdx - 1) and self.CursorIndex <= lineData.endIdx then
                local cursorSubstring = (lineData.startIdx <= self.CursorIndex) and displayedText:sub(lineData.startIdx, self.CursorIndex) or ""
                currentCursorX = TextService:GetTextSize(cursorSubstring, editorTextSize, editorFont, Vector2.new(10000, 10000)).X
                currentCursorY = lineData.y
                currentCursorHeight = lineData.height
                break
            end
        end
    end
    local viewportWidth = (self.CanvasGroup.AbsoluteSize.X - 8) - lineNumbersMarginWidth
    local viewportHeight = self.CanvasGroup.AbsoluteSize.Y - 8
    local scrollOffsetX, scrollOffsetY = self.ScrollOffset.X, self.ScrollOffset.Y
    local documentTotalWidth = self.CachedDocumentWidth or 0
    if autoScrollEnabled then
        if currentCursorX < scrollOffsetX then scrollOffsetX = currentCursorX end
        if currentCursorX > ((scrollOffsetX + viewportWidth) - 2) then scrollOffsetX = (currentCursorX - viewportWidth) + 2 end
        if currentCursorY < scrollOffsetY then scrollOffsetY = currentCursorY end
        if (currentCursorY + currentCursorHeight) > (scrollOffsetY + viewportHeight) then
            scrollOffsetY = (currentCursorY + currentCursorHeight) - viewportHeight
        end
    end
    local maximumScrollY = math.max(0, self.DocumentHeight - self.CanvasGroup.AbsoluteSize.Y)
    if scrollOffsetY > maximumScrollY then scrollOffsetY = maximumScrollY end
    if scrollOffsetY < 0 then scrollOffsetY = 0 end
    local maximumScrollX = math.max(0, documentTotalWidth - viewportWidth)
    if scrollOffsetX > maximumScrollX then scrollOffsetX = maximumScrollX end
    if scrollOffsetX < 0 then scrollOffsetX = 0 end
    self.ScrollOffset = Vector2.new(scrollOffsetX, scrollOffsetY)
    self.InnerFrame.Position = UDim2.new(0, -scrollOffsetX, 0, -scrollOffsetY)
    self.LineNumbersInner.Position = UDim2.new(0, 0, 0, -scrollOffsetY)
    if self.VScrollBar then self.VScrollBar:UpdateMetrics(self.CanvasGroup.AbsoluteSize.Y, self.DocumentHeight, scrollOffsetY) end
    if self.HScrollBar then self.HScrollBar:UpdateMetrics(viewportWidth + 8, documentTotalWidth, scrollOffsetX) end
    if hasLineNumbers and self.IsFocused then
        self.CurrentLineHighlight.Visible = true
        local targetHighlightPosition = UDim2.new(0, 0, 0, (4 + currentCursorY) - scrollOffsetY)
        local targetHighlightSize = UDim2.new(1, 0, 0, currentCursorHeight)
        if self.CanvasGroup:GetAttribute("SmoothBlinker") then
            local tweenInfo = TweenInfo.new(0.08, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
            TweenService:Create(self.CurrentLineHighlight, tweenInfo, {
                Position = targetHighlightPosition, 
                Size = targetHighlightSize
            }):Play()
        else
            self.CurrentLineHighlight.Position = targetHighlightPosition
            self.CurrentLineHighlight.Size = targetHighlightSize
        end
    else
        self.CurrentLineHighlight.Visible = false
    end
    local viewportStartY = scrollOffsetY
    local viewportEndY = scrollOffsetY + viewportHeight + 16
    local visibleLinesCount = 0
    local visibleHighlightsCount = 0
    local visibleLineNumbersCount = 0
    local firstVisibleIdx, lastVisibleIdx = 1, #editorLineMap
    if #editorLineMap > 0 then
        local L, R = 1, #editorLineMap
        local bestFirst = 1
        while L <= R do
            local M = math.floor((L + R) / 2)
            if (editorLineMap[M].y + editorLineMap[M].height) >= viewportStartY then
                bestFirst = M
                R = M - 1
            else
                L = M + 1
            end
        end
        firstVisibleIdx = bestFirst
        local bestLast = bestFirst
        L, R = bestFirst, #editorLineMap
        while L <= R do
            local M = math.floor((L + R) / 2)
            if editorLineMap[M].y <= viewportEndY then
                bestLast = M
                L = M + 1
            else
                R = M - 1
            end
        end
        lastVisibleIdx = bestLast
    end
    local syntaxState = nil
    local processedTextUpTo = 1
    if #editorLineMap > 0 and firstVisibleIdx > 1 then
        local targetStart = editorLineMap[firstVisibleIdx].startIdx
        syntaxState = self:GetSyntaxStateAt(displayedText, targetStart, 1, nil)
        processedTextUpTo = targetStart
    end
    if #editorLineMap > 0 then
        for i = firstVisibleIdx, lastVisibleIdx do
            local lineData = editorLineMap[i]
            if lineData then
                syntaxState = self:GetSyntaxStateAt(displayedText, lineData.startIdx, processedTextUpTo, syntaxState)
                processedTextUpTo = lineData.startIdx
                visibleLinesCount = visibleLinesCount + 1
                local textLabelObj = self.LinesPool[visibleLinesCount]
                if not textLabelObj then
                    textLabelObj = Instance.new("TextLabel")
                    textLabelObj.BackgroundTransparency = 1
                    textLabelObj.RichText = true
                    textLabelObj.TextXAlignment = Enum.TextXAlignment.Left
                    textLabelObj.TextYAlignment = Enum.TextYAlignment.Top
                    textLabelObj.ZIndex = 3
                    textLabelObj.Parent = self.InnerFrame
                    self.LinesPool[visibleLinesCount] = textLabelObj
                end
                local stringOnLine = (lineData.startIdx <= lineData.endIdx) and displayedText:sub(lineData.startIdx, lineData.endIdx) or ""
                textLabelObj.Font = editorFont
                textLabelObj.TextSize = editorTextSize
                textLabelObj.TextColor3 = editorTextColor
                textLabelObj.Text = self:ApplySyntax(stringOnLine, syntaxState)
                textLabelObj.Position = UDim2.new(0, 4, 0, 4 + lineData.y)
                textLabelObj.Size = UDim2.new(0, 10000, 0, lineData.height)
                textLabelObj.Visible = true
                if hasLineNumbers and lineData.lineNumber then
                    visibleLineNumbersCount = visibleLineNumbersCount + 1
                    local numberLabelObj = self.LineNumbersPool[visibleLineNumbersCount]
                    if not numberLabelObj then
                        numberLabelObj = Instance.new("TextLabel")
                        numberLabelObj.BackgroundTransparency = 1
                        numberLabelObj.TextXAlignment = Enum.TextXAlignment.Right
                        numberLabelObj.TextYAlignment = Enum.TextYAlignment.Top
                        numberLabelObj.ZIndex = 3
                        numberLabelObj.Parent = self.LineNumbersInner
                        self.LineNumbersPool[visibleLineNumbersCount] = numberLabelObj
                    end
                    numberLabelObj.Font = editorFont
                    numberLabelObj.TextSize = editorTextSize
                    numberLabelObj.TextColor3 = editorTextColor
                    numberLabelObj.TextTransparency = 0.5
                    numberLabelObj.Text = tostring(lineData.lineNumber)
                    numberLabelObj.Position = UDim2.new(0, 0, 0, 4 + lineData.y)
                    numberLabelObj.Size = UDim2.new(1, -8, 0, lineData.height)
                    numberLabelObj.Visible = true
                end
                local function renderHighlightSelection(startIndex, endIndex, renderColor, renderTransparency)
                    if endIndex >= (lineData.startIdx - 1) and startIndex <= lineData.endIdx then
                        local highlightStart = math.max(lineData.startIdx, startIndex + 1)
                        local highlightEnd = math.min(lineData.endIdx, endIndex)
                        local highlightOffsetX = 0
                        local highlightWidth = 0
                        if highlightStart <= highlightEnd then
                            local stringBeforeHighlight = displayedText:sub(lineData.startIdx, highlightStart - 1)
                            highlightOffsetX = TextService:GetTextSize(stringBeforeHighlight, editorTextSize, editorFont, Vector2.new(10000, 10000)).X
                            local stringUpToTarget = displayedText:sub(lineData.startIdx, highlightEnd)
                            highlightWidth = TextService:GetTextSize(stringUpToTarget, editorTextSize, editorFont, Vector2.new(10000, 10000)).X - highlightOffsetX
                        else
                            local stringBeforeHighlight = (lineData.startIdx <= lineData.endIdx) and displayedText:sub(lineData.startIdx, lineData.endIdx) or ""
                            highlightOffsetX = TextService:GetTextSize(stringBeforeHighlight, editorTextSize, editorFont, Vector2.new(10000, 10000)).X
                        end
                        if endIndex > lineData.endIdx and lineData.endIdx ~= #displayedText then
                            if highlightStart > lineData.endIdx then
                                highlightWidth = 5
                            else
                                highlightWidth = highlightWidth + 5
                            end
                        end
                        if highlightWidth > 0 then
                            visibleHighlightsCount = visibleHighlightsCount + 1
                            local highlightFrameObj = self.HighlightPool[visibleHighlightsCount]
                            if not highlightFrameObj then
                                highlightFrameObj = Instance.new("Frame")
                                highlightFrameObj.BorderSizePixel = 0
                                highlightFrameObj.ZIndex = 2
                                highlightFrameObj.Parent = self.HighlightContainer
                                self.HighlightPool[visibleHighlightsCount] = highlightFrameObj
                            end
                            highlightFrameObj.BackgroundColor3 = renderColor
                            highlightFrameObj.BackgroundTransparency = renderTransparency
                            highlightFrameObj.Position = UDim2.new(0, 4 + highlightOffsetX, 0, 4 + lineData.y)
                            highlightFrameObj.Size = UDim2.new(0, highlightWidth, 0, lineData.height)
                            highlightFrameObj.Visible = true
                        end
                    end
                end
                if self.FindMatches then
                    for _, matchData in ipairs(self.FindMatches) do
                        if matchData.e >= (lineData.startIdx - 1) and matchData.s <= lineData.endIdx then
                            renderHighlightSelection(matchData.s, matchData.e, Color3.fromRGB(255, 255, 0), 0.6)
                        end
                    end
                end
                if self.SelectionStart ~= self.CursorIndex then
                    local selectionStartIdx = math.min(self.SelectionStart, self.CursorIndex)
                    local selectionEndIdx = math.max(self.SelectionStart, self.CursorIndex)
                    if selectionEndIdx >= (lineData.startIdx - 1) and selectionStartIdx <= lineData.endIdx then
                        renderHighlightSelection(selectionStartIdx, selectionEndIdx, editorHighlightColor, 0.7)
                    end
                end
            end
        end
    end
    for i = visibleLinesCount + 1, #self.LinesPool do self.LinesPool[i].Visible = false end
    for i = visibleHighlightsCount + 1, #self.HighlightPool do self.HighlightPool[i].Visible = false end
    if hasLineNumbers then
        for i = visibleLineNumbersCount + 1, #self.LineNumbersPool do self.LineNumbersPool[i].Visible = false end
    else
        for i = 1, #self.LineNumbersPool do self.LineNumbersPool[i].Visible = false end
    end
    local targetBlinkerPosition = UDim2.new(0, 4 + currentCursorX, 0, 4 + currentCursorY)
    local targetBlinkerSize = UDim2.new(0, 1, 0, currentCursorHeight)
    if self.CanvasGroup:GetAttribute("SmoothBlinker") then
        local tweenInfo = TweenInfo.new(0.08, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
        TweenService:Create(self.Blinker, tweenInfo, {
            Position = targetBlinkerPosition, 
            Size = targetBlinkerSize
        }):Play()
    else
        self.Blinker.Position = targetBlinkerPosition
        self.Blinker.Size = targetBlinkerSize
    end
    self.BlinkTimer = 0
    if self.IsFocused then self.Blinker.Visible = self.SelectionStart == self.CursorIndex end
end
function Baseline:Destroy()
    self:Unfocus()
    self:CloseFindUI()
    for _, connection in ipairs(self.Connections) do connection:Disconnect() end
    for index, baselineInstance in ipairs(Baseline.Instances) do
        if baselineInstance == self then
            table.remove(Baseline.Instances, index)
            break
        end
    end
    if self.VScrollBar then self.VScrollBar:Destroy() end
    if self.HScrollBar then self.HScrollBar:Destroy() end
    self.CanvasGroup:ClearAllChildren()
end
return Baseline
