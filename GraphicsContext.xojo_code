#tag Class
Protected Class GraphicsContext
	#tag Method, Flags = &h0
		Sub Constructor(g as graphics)
		  self.g = g
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_AntiAlias() As Boolean
		  return g.AntiAlias
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_AntiAlias(assigns newAlias as Boolean)
		  g.AntiAlias = newAlias	
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_AntiAliasMode() As Integer
		  return Integer(g.AntiAliasMode)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_AntiAliasMode(assigns mode As Integer)
		  g.AntiAliasMode = Graphics.AntiAliasModes(mode)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_Bold() As Boolean
		  return g.Bold
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_Bold(assigns newBold as Boolean)
		  g.Bold = newBold
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_CharacterSpacing() As Integer
		  return g.CharacterSpacing
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_CharacterSpacing(assigns newSpacing As Integer)
		  g.CharacterSpacing = newSpacing
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_ClearRect(x As Double, y As Double, width As Double, height As Double)
		  g.ClearRect(x, y, width, height)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_DrawCautionIcon(x As Double, y As Double)
		  g.DrawCautionIcon(x, y)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_DrawFocusRing(x As Double, y As Double, width As Double, height As Double)
		  g._DrawFocusRing(x,y,width,height)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_DrawLine(x1 As Double, y1 As Double, x2 As Double, y2 As Double)
		  g.DrawLine(x1, y1, x2, y2)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_DrawNoteIcon(x As Double, y As Double)
		  g.DrawNoteIcon(x, y)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_DrawOval(x As Double, y As Double, width As Double, height As Double)
		  g.DrawOval(x, y, width, height)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_DrawPolygon(points() As Double)
		  g.DrawPolygon(points())
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_DrawPolygon(points() As Integer)
		  g.DrawPolygon(points())
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_DrawRect(x As Double, y As Double, width As Double, height As Double)
		  g.DrawRect(x, y, width, height)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_DrawRoundRect(x As Double, y As Double, width As Double, height As Double, arcWidth As Double, arcHeight As Double)
		  g.DrawRoundRect(x, y, width, height, arcWidth, arcHeight)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_DrawStopIcon(x As Double, y As Double)
		  g.DrawStopIcon(x, y)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_DrawString(str As String, x As Double, y As Double, width As Double = 0, condense As Boolean = False)
		  g.DrawString(str, x, y, width, condense)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_FillOval(x As Double, y As Double, width As Double, height As Double)
		  g.FillOval(x, y, width, height)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_FillPolygon(points() As Double)
		  g.FillPolygon(points())
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_FillPolygon(points() As Integer)
		  g.FillPolygon(points())
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_FillRect(x As Double, y As Double, width As Double, height As Double)
		  g.FillRect(x, y, width, height)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_FillRoundRect(x As Double, y As Double, width As Double, height As Double, arcWidth As Double, arcHeight As Double)
		  g.FillRoundRect(x,y,width,height,arcWidth,arcHeight)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_ForeColor() As Color
		  return g.ForeColor
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_ForeColor(assigns c As Color)
		  g.ForeColor = c
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_Height() As Integer
		  return g.Height
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_Italic() As Boolean
		  return g.Italic
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_Italic(assigns b As Boolean)
		  g.Italic = b
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_PenHeight() As Double
		  return g.PenHeight
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_PenHeight(assigns newHeight as Double)
		  g.PenHeight = newHeight
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_PenWidth() As Double
		  return g.PenWidth
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_PenWidth(assigns width As Double)
		  g.PenWidth = width
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_Pixel(x As Double, y As Double) As Color
		  return g.Pixel(x,y)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_Pixel(x As Double, y As Double, Assigns value As Color)
		  g.Pixel(x,y) = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_ScaleX() As Double
		  return g.ScaleX
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_ScaleX(assigns newScale As Double)
		  g.ScaleX = newScale
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_ScaleY() As Double
		  return g.ScaleY
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_ScaleY(assigns newScale as Double)
		  g.ScaleY = newScale
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_StringDirection(Text As String) As Integer
		  return g.StringDirection(Text)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_StringHeight(Text As String, WrapWidth As Double) As Double
		  return g.StringHeight(text, wrapWidth)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_StringWidth(Text As String) As Double
		  return g.StringWidth(Text)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_TextAscent() As Double
		  return g.TextAscent
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_TextFont() As String
		  return g.TextFont()
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_TextFont(assigns newFont As String)
		  g.TextFont = newFont
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_TextHeight() As Double
		  return g.TextHeight
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_TextSize() As Single
		  return g.TextSize
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_TextSize(assigns newSize As Single)
		  g.TextSize = newSize
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_TextUnit() As Integer
		  return CType(g.TextUnit,Integer)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_TextUnit(assigns newUnits As Integer)
		  g.TextUnit = CType(newUnits,FontUnits)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_Transparency() As Double
		  return g.Transparency
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_Transparency(assigns newTransparency As Double)
		  g.Transparency = newTransparency
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_Underline() As Boolean
		  return g.Underline
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_Underline(assigns newUnderline As Boolean)
		  g.Underline = newUnderline
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_Width() As Integer
		  return g.Width()
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private g As graphics
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
