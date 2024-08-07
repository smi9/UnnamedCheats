	if not game:IsLoaded() then
		game.Loaded:Wait()
	end
	local a = cloneref(game:GetService("TextService"))
	local b = {Fonts = {UI = 0, System = 1, Plex = 2, Monospace = 3}}
	local c = getrenv()
	local d = getgenv()
	local e = c.math.pi
	local f = c.math.huge
	local g = clonefunction(c.assert)
	local h = clonefunction(c.Color3.new)
	local i = clonefunction(c.Instance.new)
	local j = clonefunction(c.math.atan2)
	local k = clonefunction(c.math.clamp)
	local l = clonefunction(c.math.max)
	local m = clonefunction(c.setmetatable)
	local n = clonefunction(c.string.format)
	local o = clonefunction(c.typeof)
	local p = clonefunction(c.task.spawn)
	local q = clonefunction(c.UDim.new)
	local r = clonefunction(c.UDim2.fromOffset)
	local s = clonefunction(c.UDim2.new)
	local t = clonefunction(c.Vector2.new)
	local u = clonefunction(game.Destroy)
	local v = clonefunction(a.GetTextBoundsAsync)
	local w = clonefunction(game.HttpGet)
	local function x(y, z, A)
		local B = i(y)
		for C, D in z do
			if C ~= "Parent" then
				B[C] = D
			end
		end
		if A then
			for C, D in A do
				D.Parent = B
			end
		end
		B.Parent = z.Parent
		return B
	end
	do
		local E = {
			Font.new("rbxasset://fonts/families/Arial.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
			Font.new("rbxasset://fonts/families/HighwayGothic.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
			Font.new("rbxasset://fonts/families/Roboto.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
			Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
		}
		for C, D in E do
			game:GetService("TextService"):GetTextBoundsAsync(
			x("GetTextBoundsParams", {Text = "Hi", Size = 12, Font = D, Width = f})
			)
		end
	end
	do
		local F =
			x(
				"ScreenGui",
				{
					DisplayOrder = 15,
					IgnoreGuiInset = true,
					Name = "drawingDirectory",
					Parent = gethui(),
					ZIndexBehavior = Enum.ZIndexBehavior.Sibling
				}
			)
		local function G(H, I, J, K)
			local L = (I + J) / 2
			local M = J - I
			H.Position = r(L.X, L.Y)
			H.Rotation = j(M.Y, M.X) * 180 / e
			H.Size = r(M.Magnitude, K)
		end
		local N = 0
		local O = {}
		local P = {}
		do
			local Q = {}
			function Q.new()
				N = N + 1
				local R = N
				local S =
					m(
						{
							_id = R,
							__OBJECT_EXISTS = true,
							_properties = {
								Color = h(),
								From = t(),
								Thickness = 1,
								To = t(),
								Transparency = 1,
								Visible = false,
								ZIndex = 0
							},
							_frame = x(
								"Frame",
								{
									Name = R,
									AnchorPoint = t(0.5, 0.5),
									BackgroundColor3 = h(),
									BorderSizePixel = 0,
									Parent = F,
									Position = s(),
									Size = s(),
									Visible = false,
									ZIndex = 0
								}
							)
						},
						Q
					)
				O[R] = S
				return S
			end
			function Q:__index(T)
				local U = self._properties[T]
				if U ~= nil then
					return U
				end
				return Q[T]
			end
			function Q:__newindex(T, D)
				if self.__OBJECT_EXISTS == true then
					self._properties[T] = D
					if T == "Color" then
						self._frame.BackgroundColor3 = D
					elseif T == "From" then
						self:_updatePosition()
					elseif T == "Thickness" then
						self._frame.Size = r(self._frame.AbsoluteSize.X, l(D, 1))
					elseif T == "To" then
						self:_updatePosition()
					elseif T == "Transparency" then
						self._frame.BackgroundTransparency = k(1 - D, 0, 1)
					elseif T == "Visible" then
						self._frame.Visible = D
					elseif T == "ZIndex" then
						self._frame.ZIndex = D
					end
				end
			end
			function Q:__iter()
				return next, self._properties
			end
			function Q:__tostring()
				return "Drawing"
			end
			function Q:Destroy()
				O[self._id] = nil
				self.__OBJECT_EXISTS = false
				u(self._frame)
			end
			function Q:_updatePosition()
				local V = self._properties
				G(self._frame, V.From, V.To, V.Thickness)
			end
			Q.Remove = Q.Destroy
			P.Line = Q
		end
		do
			local W = {}
			function W.new()
				N = N + 1
				local R = N
				local X =
					m(
						{
							_id = R,
							__OBJECT_EXISTS = true,
							_properties = {
								Color = h(),
								Filled = false,
								NumSides = 0,
								Position = t(),
								Radius = 0,
								Thickness = 1,
								Transparency = 1,
								Visible = false,
								ZIndex = 0
							},
							_frame = x(
								"Frame",
								{
									Name = R,
									AnchorPoint = t(0.5, 0.5),
									BackgroundColor3 = h(),
									BackgroundTransparency = 1,
									BorderSizePixel = 0,
									Parent = F,
									Position = s(),
									Size = s(),
									Visible = false,
									ZIndex = 0
								},
								{
									x("UICorner", {Name = "_corner", CornerRadius = q(1, 0)}),
									x("UIStroke", {Name = "_stroke", Color = h(), Thickness = 1})
								}
							)
						},
						W
					)
				O[R] = X
				return X
			end
			function W:__index(T)
				local U = self._properties[T]
				if U ~= nil then
					return U
				end
				return W[T]
			end
			function W:__newindex(T, D)
				if self.__OBJECT_EXISTS == true then
					local V = self._properties
					V[T] = D
					if T == "Color" then
						self._frame.BackgroundColor3 = D
						self._frame._stroke.Color = D
					elseif T == "Filled" then
						self._frame.BackgroundTransparency = D and 1 - V.Transparency or 1
					elseif T == "Position" then
						self._frame.Position = r(D.X, D.Y)
					elseif T == "Radius" then
						self:_updateRadius()
					elseif T == "Thickness" then
						self._frame._stroke.Thickness = l(D, 1)
						self:_updateRadius()
					elseif T == "Transparency" then
						self._frame._stroke.Transparency = 1 - D
						if V.Filled then
							self._frame.BackgroundTransparency = 1 - D
						end
					elseif T == "Visible" then
						self._frame.Visible = D
					elseif T == "ZIndex" then
						self._frame.ZIndex = D
					end
				end
			end
			function W:__iter()
				return next, self._properties
			end
			function W:__tostring()
				return "Drawing"
			end
			function W:Destroy()
				O[self._id] = nil
				self.__OBJECT_EXISTS = false
				u(self._frame)
			end
			function W:_updateRadius()
				local V = self._properties
				local Y = V.Radius * 2 - V.Thickness * 2
				self._frame.Size = r(Y, Y)
			end
			W.Remove = W.Destroy
			P.Circle = W
		end
		do
			local Z = {
				[b.Fonts.UI] = Font.new(
					"rbxasset://fonts/families/Arial.json",
					Enum.FontWeight.Regular,
					Enum.FontStyle.Normal
				),
				[b.Fonts.System] = Font.new(
					"rbxasset://fonts/families/HighwayGothic.json",
					Enum.FontWeight.Regular,
					Enum.FontStyle.Normal
				),
				[b.Fonts.Plex] = Font.new(
					"rbxasset://fonts/families/Roboto.json",
					Enum.FontWeight.Regular,
					Enum.FontStyle.Normal
				),
				[b.Fonts.Monospace] = Font.new(
					"rbxasset://fonts/families/Ubuntu.json",
					Enum.FontWeight.Regular,
					Enum.FontStyle.Normal
				)
			}
			local _ = {}
			function _.new()
				N = N + 1
				local R = N
				local a0 =
					m(
						{
							_id = R,
							__OBJECT_EXISTS = true,
							_properties = {
								Center = false,
								Color = h(),
								Font = 0,
								Outline = false,
								OutlineColor = h(),
								Position = t(),
								Size = 12,
								Text = "",
								TextBounds = t(),
								Transparency = 1,
								Visible = false,
								ZIndex = 0
							},
							_frame = x(
								"TextLabel",
								{
									Name = R,
									BackgroundTransparency = 1,
									FontFace = Z[0],
									Parent = F,
									Position = s(),
									Size = s(),
									Text = "",
									TextColor3 = h(),
									TextSize = 12,
									TextXAlignment = Enum.TextXAlignment.Left,
									TextYAlignment = Enum.TextYAlignment.Top,
									Visible = false,
									ZIndex = 0
								},
								{x("UIStroke", {Name = "_stroke", Color = h(), Enabled = false, Thickness = 1})}
							)
						},
						_
					)
				O[R] = a0
				return a0
			end
			function _:__index(T)
				local U = self._properties[T]
				if U ~= nil then
					return U
				end
				return _[T]
			end
			function _:__newindex(T, D)
				if self.__OBJECT_EXISTS == true then
					if T ~= "TextBounds" then
						self._properties[T] = D
					end
					if T == "Center" then
						self._frame.TextXAlignment = D and Enum.TextXAlignment.Center or Enum.TextXAlignment.Left
					elseif T == "Color" then
						self._frame.TextColor3 = D
					elseif T == "Font" then
						self._frame.FontFace = Z[D]
						self:_updateTextBounds()
					elseif T == "Outline" then
						self._frame._stroke.Enabled = D
					elseif T == "OutlineColor" then
						self._frame._stroke.Color = D
					elseif T == "Position" then
						self._frame.Position = r(D.X, D.Y)
					elseif T == "Size" then
						self._frame.TextSize = D
						self:_updateTextBounds()
					elseif T == "Text" then
						self._frame.Text = D
						self:_updateTextBounds()
					elseif T == "Transparency" then
						self._frame.TextTransparency = 1 - D
						self._frame._stroke.Transparency = 1 - D
					elseif T == "Visible" then
						self._frame.Visible = D
					elseif T == "ZIndex" then
						self._frame.ZIndex = D
					end
				end
			end
			function _:__iter()
				return next, self._properties
			end
			function _:__tostring()
				return "Drawing"
			end
			function _:Destroy()
				O[self._id] = nil
				self.__OBJECT_EXISTS = false
				u(self._frame)
			end
			function _:_updateTextBounds()
				local V = self._properties
				V.TextBounds = v(a, x("GetTextBoundsParams", {Text = V.Text, Size = V.Size, Font = Z[V.Font], Width = f}))
			end
			_.Remove = _.Destroy
			P.Text = _
		end
		do
			local a1 = {}
			function a1.new()
				N = N + 1
				local R = N
				local a2 =
					m(
						{
							_id = R,
							__OBJECT_EXISTS = true,
							_properties = {
								Color = h(),
								Filled = false,
								Position = t(),
								Size = t(),
								Thickness = 1,
								Transparency = 1,
								Visible = false,
								ZIndex = 0
							},
							_frame = x(
								"Frame",
								{
									BackgroundColor3 = h(),
									BackgroundTransparency = 1,
									BorderSizePixel = 0,
									Parent = F,
									Position = s(),
									Size = s(),
									Visible = false,
									ZIndex = 0
								},
								{x("UIStroke", {Name = "_stroke", Color = h(), Thickness = 1})}
							)
						},
						a1
					)
				O[R] = a2
				return a2
			end
			function a1:__index(T)
				local U = self._properties[T]
				if U ~= nil then
					return U
				end
				return a1[T]
			end
			function a1:__newindex(T, D)
				if self.__OBJECT_EXISTS == true then
					local V = self._properties
					V[T] = D
					if T == "Color" then
						self._frame.BackgroundColor3 = D
						self._frame._stroke.Color = D
					elseif T == "Filled" then
						self._frame.BackgroundTransparency = D and 1 - V.Transparency or 1
					elseif T == "Position" then
						self:_updateScale()
					elseif T == "Size" then
						self:_updateScale()
					elseif T == "Thickness" then
						self._frame._stroke.Thickness = D
						self:_updateScale()
					elseif T == "Transparency" then
						self._frame._stroke.Transparency = 1 - D
						if V.Filled then
							self._frame.BackgroundTransparency = 1 - D
						end
					elseif T == "Visible" then
						self._frame.Visible = D
					elseif T == "ZIndex" then
						self._frame.ZIndex = D
					end
				end
			end
			function a1:__iter()
				return next, self._properties
			end
			function a1:__tostring()
				return "Drawing"
			end
			function a1:Destroy()
				O[self._id] = nil
				self.__OBJECT_EXISTS = false
				u(self._frame)
			end
			function a1:_updateScale()
				local V = self._properties
				self._frame.Position = r(V.Position.X + V.Thickness, V.Position.Y + V.Thickness)
				self._frame.Size = r(V.Size.X - V.Thickness * 2, V.Size.Y - V.Thickness * 2)
			end
			a1.Remove = a1.Destroy
			P.Square = a1
		end
		do
			local a3 = {}
			function a3.new()
				N = N + 1
				local R = N
				local a4 =
					m(
						{
							_id = R,
							__OBJECT_EXISTS = true,
							_properties = {
								Color = h(),
								Filled = false,
								PointA = t(),
								PointB = t(),
								PointC = t(),
								Thickness = 1,
								Transparency = 1,
								Visible = false,
								ZIndex = 0
							},
							_frame = x(
								"Frame",
								{BackgroundTransparency = 1, Parent = F, Size = s(1, 0, 1, 0), Visible = false, ZIndex = 0},
								{
									x(
										"Frame",
										{
											Name = "_line1",
											AnchorPoint = t(0.5, 0.5),
											BackgroundColor3 = h(),
											BorderSizePixel = 0,
											Position = s(),
											Size = s(),
											ZIndex = 0
										}
									),
									x(
										"Frame",
										{
											Name = "_line2",
											AnchorPoint = t(0.5, 0.5),
											BackgroundColor3 = h(),
											BorderSizePixel = 0,
											Position = s(),
											Size = s(),
											ZIndex = 0
										}
									),
									x(
										"Frame",
										{
											Name = "_line3",
											AnchorPoint = t(0.5, 0.5),
											BackgroundColor3 = h(),
											BorderSizePixel = 0,
											Position = s(),
											Size = s(),
											ZIndex = 0
										}
									)
								}
							)
						},
						a3
					)
				O[R] = a4
				return a4
			end
			function a3:__index(T)
				local U = self._properties[T]
				if U ~= nil then
					return U
				end
				return a3[T]
			end
			function a3:__newindex(T, D)
				if self.__OBJECT_EXISTS == true then
					local V, H = self._properties, self._frame
					V[T] = D
					if T == "Color" then
						H._line1.BackgroundColor3 = D
						H._line2.BackgroundColor3 = D
						H._line3.BackgroundColor3 = D
					elseif T == "Filled" then
					elseif T == "PointA" then
						self:_updateVertices({{H._line1, V.PointA, V.PointB}, {H._line3, V.PointC, V.PointA}})
						if V.Filled then
							self:_calculateFill()
						end
					elseif T == "PointB" then
						self:_updateVertices({{H._line1, V.PointA, V.PointB}, {H._line2, V.PointB, V.PointC}})
						if V.Filled then
							self:_calculateFill()
						end
					elseif T == "PointC" then
						self:_updateVertices({{H._line2, V.PointB, V.PointC}, {H._line3, V.PointC, V.PointA}})
						if V.Filled then
							self:_calculateFill()
						end
					elseif T == "Thickness" then
						local K = l(D, 1)
						H._line1.Size = r(H._line1.AbsoluteSize.X, K)
						H._line2.Size = r(H._line2.AbsoluteSize.X, K)
						H._line3.Size = r(H._line3.AbsoluteSize.X, K)
					elseif T == "Transparency" then
						H._line1.BackgroundTransparency = 1 - D
						H._line2.BackgroundTransparency = 1 - D
						H._line3.BackgroundTransparency = 1 - D
					elseif T == "Visible" then
						self._frame.Visible = D
					elseif T == "ZIndex" then
						self._frame.ZIndex = D
					end
				end
			end
			function a3:__iter()
				return next, self._properties
			end
			function a3:__tostring()
				return "Drawing"
			end
			function a3:Destroy()
				O[self._id] = nil
				self.__OBJECT_EXISTS = false
				u(self._frame)
			end
			function a3:_updateVertices(a5)
				local K = self._properties.Thickness
				for C, D in a5 do
					G(D[1], D[2], D[3], K)
				end
			end
			function a3:_calculateFill()
			end
			a3.Remove = a3.Destroy
			P.Triangle = a3
		end
		do
			local a6 = {}
			function a6.new()
				N = N + 1
				local R = N
				local a7 =
					m(
						{
							_id = R,
							__OBJECT_EXISTS = true,
							_properties = {
								Color = h(),
								Filled = false,
								PointA = t(),
								PointB = t(),
								PointC = t(),
								PointD = t(),
								Thickness = 1,
								Transparency = 1,
								Visible = false,
								ZIndex = 0
							},
							_frame = x(
								"Frame",
								{BackgroundTransparency = 1, Parent = F, Size = s(1, 0, 1, 0), Visible = false, ZIndex = 0},
								{
									x(
										"Frame",
										{
											Name = "_line1",
											AnchorPoint = t(0.5, 0.5),
											BackgroundColor3 = h(),
											BorderSizePixel = 0,
											Position = s(),
											Size = s(),
											ZIndex = 0
										}
									),
									x(
										"Frame",
										{
											Name = "_line2",
											AnchorPoint = t(0.5, 0.5),
											BackgroundColor3 = h(),
											BorderSizePixel = 0,
											Position = s(),
											Size = s(),
											ZIndex = 0
										}
									),
									x(
										"Frame",
										{
											Name = "_line3",
											AnchorPoint = t(0.5, 0.5),
											BackgroundColor3 = h(),
											BorderSizePixel = 0,
											Position = s(),
											Size = s(),
											ZIndex = 0
										}
									),
									x(
										"Frame",
										{
											Name = "_line4",
											AnchorPoint = t(0.5, 0.5),
											BackgroundColor3 = h(),
											BorderSizePixel = 0,
											Position = s(),
											Size = s(),
											ZIndex = 0
										}
									)
								}
							)
						},
						a6
					)
				O[R] = a7
				return a7
			end
			function a6:__index(T)
				local U = self._properties[T]
				if U ~= nil then
					return U
				end
				return a6[T]
			end
			function a6:__newindex(T, D)
				if self.__OBJECT_EXISTS == true then
					local V, H = self._properties, self._frame
					V[T] = D
					if T == "Color" then
						H._line1.BackgroundColor3 = D
						H._line2.BackgroundColor3 = D
						H._line3.BackgroundColor3 = D
						H._line4.BackgroundColor3 = D
					elseif T == "Filled" then
					elseif T == "PointA" then
						self:_updateVertices({{H._line1, V.PointA, V.PointB}, {H._line4, V.PointD, V.PointA}})
						if V.Filled then
							self:_calculateFill()
						end
					elseif T == "PointB" then
						self:_updateVertices({{H._line1, V.PointA, V.PointB}, {H._line2, V.PointB, V.PointC}})
						if V.Filled then
							self:_calculateFill()
						end
					elseif T == "PointC" then
						self:_updateVertices({{H._line2, V.PointB, V.PointC}, {H._line3, V.PointC, V.PointD}})
						if V.Filled then
							self:_calculateFill()
						end
					elseif T == "PointD" then
						self:_updateVertices({{H._line3, V.PointC, V.PointD}, {H._line4, V.PointD, V.PointA}})
						if V.Filled then
							self:_calculateFill()
						end
					elseif T == "Thickness" then
						local K = l(D, 1)
						H._line1.Size = r(H._line1.AbsoluteSize.X, K)
						H._line2.Size = r(H._line2.AbsoluteSize.X, K)
						H._line3.Size = r(H._line3.AbsoluteSize.X, K)
						H._line4.Size = r(H._line3.AbsoluteSize.X, K)
					elseif T == "Transparency" then
						H._line1.BackgroundTransparency = 1 - D
						H._line2.BackgroundTransparency = 1 - D
						H._line3.BackgroundTransparency = 1 - D
						H._line4.BackgroundTransparency = 1 - D
					elseif T == "Visible" then
						self._frame.Visible = D
					elseif T == "ZIndex" then
						self._frame.ZIndex = D
					end
				end
			end
			function a6:__iter()
				return next, self._properties
			end
			function a6:__tostring()
				return "Drawing"
			end
			function a6:Destroy()
				O[self._id] = nil
				self.__OBJECT_EXISTS = false
				u(self._frame)
			end
			function a6:_updateVertices(a5)
				local K = self._properties.Thickness
				for C, D in a5 do
					G(D[1], D[2], D[3], K)
				end
			end
			function a6:_calculateFill()
			end
			a6.Remove = a6.Destroy
			P.Quad = a6
		end
		b.new =
			newcclosure(
				function(a8)
					return g(P[a8], n("Invalid drawing type '%s'", a8)).new()
				end
			)
		b.clear =
			newcclosure(
				function()
					for C, D in O do
					if D.__OBJECT_EXISTS then
						D:Destroy()
					end
				end
				end
			)
		b.cache = O
	end
	setreadonly(b, true)
	setreadonly(b.Fonts, true)
	d.Drawing = b
	d.cleardrawcache = b.clear
	d.isrenderobj =
		newcclosure(
			function(a8)
				return tostring(a8) == "Drawing"
			end
		)
	local a9 = clonefunction(isrenderobj)
	d.getrenderproperty =
		newcclosure(
			function(a8, aa)
				g(a9(a8), n("invalid argument #1 to 'getrenderproperty' (Drawing expected, got %s)", o(a8)))
				return a8[aa]
			end
		)
	d.setrenderproperty =
		newcclosure(
			function(a8, aa, ab)
				g(a9(a8), n("invalid argument #1 to 'setrenderproperty' (Drawing expected, got %s)", o(a8)))
				a8[aa] = ab
			end
		)
	d.drawingLoaded = true
