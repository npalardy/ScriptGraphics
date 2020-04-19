#tag Class
Protected Class GraphicsContext
	#tag Method, Flags = &h0
		Sub Constructor(g as graphics)
		  // this is called by XOJO code not xojoscript code
		  Self.g = g
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_AntiAlias(mClippedGraphicsID as integer) As Boolean
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  if g <> nil then
		    Return g.AntiAlias
		  End If
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_AntiAlias(mClippedGraphicsID as integer, assigns newAlias as Boolean)
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    g.AntiAlias = newAlias	
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_AntiAliasMode(mClippedGraphicsID as integer) As Integer
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    Return Integer(g.AntiAliasMode)
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_AntiAliasMode(mClippedGraphicsID As integer, assigns mode As Integer)
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    g.AntiAliasMode = Graphics.AntiAliasModes(mode)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_Bold(mClippedGraphicsID as integer) As Boolean
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    Return g.Bold
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_Bold(mClippedGraphicsID as integer, assigns newBold as Boolean)
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    g.Bold = newBold
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_CharacterSpacing(mClippedGraphicsID as integer) As Integer
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    Return g.CharacterSpacing
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_CharacterSpacing(mClippedGraphicsID As integer, assigns newSpacing As Integer)
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    g.CharacterSpacing = newSpacing
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_ClearRect(mClippedGraphicsID As integer, x As Double, y As Double, width As Double, height As Double)
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    g.ClearRect(x, y, width, height)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_Clip(mClippedGraphicsID As integer, X As Double, Y As Double, Width As Double, Height As Double) As Integer
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    
		    Dim clip As graphics = g.Clip(X, Y, Width, Height)
		    
		    clippings.Append clip
		    
		    Return clippings.Ubound
		    
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_CLong(Str as string) As int64
		  return Clong(str)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_CountFieldsB(aString As String, separator As String) As Integer
		  return CountFieldsB(aString, separator)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_DrawCautionIcon(mClippedGraphicsID As integer, x As Double, y As Double)
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    g.DrawCautionIcon(x, y)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_DrawLine(mClippedGraphicsID As integer, x1 As Double, y1 As Double, x2 As Double, y2 As Double)
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    g.DrawLine(x1, y1, x2, y2)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_DrawNoteIcon(mClippedGraphicsID As integer, x As Double, y As Double)
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    g.DrawNoteIcon(x, y)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_DrawOval(mClippedGraphicsID As integer, x As Double, y As Double, width As Double, height As Double)
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    g.DrawOval(x, y, width, height)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_DrawPolygon(mClippedGraphicsID As integer, points() As Double)
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    g.DrawPolygon(points)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_DrawPolygon(mClippedGraphicsID As integer, points() As Integer)
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    g.DrawPolygon(points)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_DrawRect(mClippedGraphicsID As integer, x As Double, y As Double, width As Double, height As Double)
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    g.DrawRect(x, y, width, height)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_DrawRoundRect(mClippedGraphicsID As integer, x As Double, y As Double, width As Double, height As Double, arcWidth As Double, arcHeight As Double)
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    g.DrawRoundRect(x, y, width, height, arcWidth, arcHeight)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_DrawStopIcon(mClippedGraphicsID As integer, x As Double, y As Double)
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    g.DrawStopIcon(x, y)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_DrawString(mClippedGraphicsID As integer, str As String, x As Double, y As Double, width As Double = 0, condense As Boolean = False)
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    g.DrawString(Str, x, y, width, condense)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_EncodeHex(s As String, insertSpaces As Boolean = False) As String
		  return EncodeHex(s, insertSpaces)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_EndOfLine() As String
		  return EndOfLine()
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_FillOval(mClippedGraphicsID As integer, x As Double, y As Double, width As Double, height As Double)
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    g.FillOval(x, y, width, height)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_FillPolygon(mClippedGraphicsID As integer, points() As Double)
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    g.FillPolygon(points)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_FillPolygon(mClippedGraphicsID As integer, points() As Integer)
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    g.FillPolygon(points)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_FillRect(mClippedGraphicsID As integer, x As Double, y As Double, width As Double, height As Double)
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    g.FillRect(x, y, width, height)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_FillRoundRect(mClippedGraphicsID As integer, x As Double, y As Double, width As Double, height As Double, arcWidth As Double, arcHeight As Double)
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    g.FillRoundRect(x,y,width,height,arcWidth,arcHeight)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_ForeColor(mClippedGraphicsID as integer) As Color
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    Return g.ForeColor
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_ForeColor(mClippedGraphicsID As integer, assigns c As Color)
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    g.ForeColor = c
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_GraphicsDestroy(mClippedGraphicsID as integer)
		  If mClippedGraphicsID = kOriginalGraphicsID Then
		    g = nil
		  Else
		    If mClippedGraphicsID < 0 Or mClippedGraphicsID > clippings.Ubound Then
		      Return
		    End If
		    
		    clippings(mClippedGraphicsID) = nil
		    
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_Height(mClippedGraphicsID as integer) As Integer
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    Return g.Height
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_InStr(start As Integer = 0, source As String, find As String) As Integer
		  return InStr(start, source, find)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_InStrB(start As Integer = 0, source As String, find As String) As Integer
		  return InStrB(start, source, find)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_Italic(mClippedGraphicsID as integer) As Boolean
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    Return g.Italic
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_Italic(mClippedGraphicsID As integer, assigns b As Boolean)
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    g.Italic = b
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_Join(fields() As String, delimiter As String = " ") As String
		  return Join(fields, delimiter)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_Mid(source As String, start As Integer) As String
		  return Mid(source, start)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_Mid(source As String, start As Integer, length As Integer) As String
		  return Mid(source, start, length)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_NthField(aString As String, separator As String, index As Integer) As String
		  return NthField(aString, separator, index)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_PenHeight(mClippedGraphicsID as integer) As Double
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    Return g.PenHeight
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_PenHeight(mClippedGraphicsID as integer, assigns newHeight as Double)
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    g.PenHeight = newHeight
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_PenWidth(mClippedGraphicsID as integer) As Double
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    Return g.PenWidth
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_PenWidth(mClippedGraphicsID As integer, assigns width As Double)
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    g.PenWidth = width
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_Pixel(mClippedGraphicsID As integer, x As Double, y As Double) As Color
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    Return g.Pixel(x,y)
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_Pixel(mClippedGraphicsID As integer, x As Double, y As Double, Assigns value As Color)
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    g.Pixel(x,y) = value
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_ScaleX(mClippedGraphicsID as integer) As Double
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    Return g.ScaleX
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_ScaleX(mClippedGraphicsID As integer, assigns newScale As Double)
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    g.ScaleX = newScale
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_ScaleY(mClippedGraphicsID as integer) As Double
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    Return g.ScaleY
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_ScaleY(mClippedGraphicsID as integer, assigns newScale as Double)
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    g.ScaleY = newScale
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_SplitB(source As String, delimiter As String = " ") As String()
		  return context_SplitB(source, delimiter)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_StringDirection(mClippedGraphicsID As integer, Text As String) As Integer
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    Return g.StringDirection(Text)
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_StringHeight(mClippedGraphicsID As integer, Text As String, WrapWidth As Double) As Double
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    Return g.StringHeight(Text, wrapWidth)
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_StringWidth(mClippedGraphicsID As integer, Text As String) As Double
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    Return g.StringWidth(Text)
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_TextAscent(mClippedGraphicsID as integer) As Double
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    Return g.TextAscent
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_TextFont(mClippedGraphicsID as integer) As String
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    Return g.TextFont
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_TextFont(mClippedGraphicsID As integer, assigns newFont As String)
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    g.TextFont = newFont
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_TextHeight(mClippedGraphicsID as integer) As Double
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    Return g.TextHeight
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_TextSize(mClippedGraphicsID as integer) As Single
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    Return g.TextSize
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_TextSize(mClippedGraphicsID As integer, assigns newSize As Single)
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    g.TextSize = newSize
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_TextUnit(mClippedGraphicsID as integer) As Integer
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    Return CType(g.TextUnit,Integer)
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_TextUnit(mClippedGraphicsID As integer, assigns newUnits As Integer)
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    g.TextUnit = CType(newUnits,FontUnits)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_Transparency(mClippedGraphicsID as integer) As Double
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    Return g.Transparency
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_Transparency(mClippedGraphicsID As integer, assigns newTransparency As Double)
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    g.Transparency = newTransparency
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_Underline(mClippedGraphicsID as integer) As Boolean
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    Return g.Underline
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub context_Underline(mClippedGraphicsID As integer, assigns newUnderline As Boolean)
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    g.Underline = newUnderline
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_Val(Str As String) As Double
		  return Val(Str)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function context_Width(mClippedGraphicsID as integer) As Integer
		  // select the right graphics item
		  Dim g As graphics = selectGraphics(mClippedGraphicsID)
		  
		  If g <> Nil Then
		    Return g.Width
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function selectGraphics(mClippedGraphicsID as integer) As graphics
		  if mClippedGraphicsID = kOriginalGraphicsID then
		    Return g
		  Else
		    If mClippedGraphicsID < 0 Or mClippedGraphicsID > clippings.Ubound Then
		      Return Nil
		    End If
		    
		    Return clippings(mClippedGraphicsID) // this _could - still be nil !!!!
		    
		  End If
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private clippings() As graphics
	#tag EndProperty

	#tag Property, Flags = &h21
		Private g As graphics
	#tag EndProperty


	#tag Constant, Name = kOriginalGraphicsID, Type = Double, Dynamic = False, Default = \"-1", Scope = Protected
	#tag EndConstant


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
