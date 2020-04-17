#tag Class
Protected Class ScriptGraphics
Inherits XojoScript
	#tag Event
		Function CompilerError(location As XojoScriptLocation, error As XojoScript.Errors, errorInfo As Dictionary) As Boolean
		  'break
		End Function
	#tag EndEvent

	#tag Event
		Sub CompilerWarning(location As XojoScriptLocation, warning As XojoScript.Warnings, warningInfo As Dictionary)
		  'break
		End Sub
	#tag EndEvent

	#tag Event
		Function Input(prompt As String) As String
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub Print(msg As String)
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub RuntimeError(error As RuntimeException)
		  'break
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function Context() As Object
		  break
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Context(assigns o as object)
		  break
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Draw()
		  XojoScript(Me).context = New GraphicsContext(Self.graphics)
		  
		  // class graphics
		  //    
		  // end class
		  //
		  // sub paint()
		  //   dim g as new graphics
		  //   
		  //   <user code here manipulating g>
		  //
		  // end sub
		  // 
		  // paint()
		  
		  XojoScript(Me).Source = ReplaceAll(GraphicsTemplate, "<user code here manipulating g>", m_Source)
		  
		  XojoScript(Me).Run()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Source() As string
		  return m_Source
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Source(assigns s as string)
		  m_Source = s
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		graphics As graphics
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected m_Source As string
	#tag EndProperty


	#tag Constant, Name = GraphicsTemplate, Type = String, Dynamic = False, Default = \"Module _Globals\n\tGlobal Enum FontUnits As UInt8\n\t\tDefault \x3D 0\n\t\tPixel \x3D 1\n\t\tPoint \x3D 2\n\t\tInches \x3D 3\n\t\tMillimeter \x3D 4\n\tEnd Enum\nEnd Module\n\nClass Graphics\n\tPublic Enum AntiAliasModes As Integer\n\t\tLowQuality \x3D 0\n\t\tDefaultQuality \x3D 1\n\t\tHighQuality \x3D 2\n\tEnd Enum\n\n\tFunction AntiAlias() As Boolean\n\t\treturn context_AntiAlias\n\tEnd Function\n\n\tSub AntiAlias(assigns newAlias as Boolean)\n\t\tcontext_AntiAlias \x3D newAlias\t\n\tEnd Sub\n\n\tFunction AntiAliasMode() As AntiAliasModes\n\t\treturn CType(context_AntiAliasMode\x2CAntiAliasModes)\n\tEnd Function\n\n\tSub AntiAliasMode(assigns mode As AntiAliasModes)\n\t\tcontext_AntiAliasMode \x3D CType(mode\x2C Integer)\n\tEnd Sub\n\n\tFunction Bold() As Boolean\n\t\treturn context_Bold\n\tEnd Function\n\n\tSub Bold(assigns newBold as Boolean)\n\t\tcontext_Bold \x3D newBold\n\tEnd Sub\n\n\tFunction CharacterSpacing() As Integer\n\t\treturn context_CharacterSpacing\n\tEnd Function\n\n\tSub CharacterSpacing(assigns newSpacing As Integer)\n\t\tcontext_CharacterSpacing \x3D newSpacing\n\tEnd Sub\n\n\tSub ClearRect(x As Double\x2C y As Double\x2C width As Double\x2C height As Double)\n\t\tcontext_ClearRect(x\x2C y\x2C width\x2C height)\n\tEnd Sub\n\n\tSub DrawCautionIcon(x As Double\x2C y As Double)\n\t\tcontext_DrawCautionIcon(x\x2C y)\n\tEnd Sub\n\n\tSub DrawLine(x1 As Double\x2C y1 As Double\x2C x2 As Double\x2C y2 As Double)\n\t\tcontext_DrawLine(x1\x2C y1\x2C x2\x2C y2)\n\tEnd Sub\n\n\tSub DrawNoteIcon(x As Double\x2C y As Double)\n\t\tcontext_DrawNoteIcon(x\x2C y)\n\tEnd Sub\n\n\tSub DrawOval(x As Double\x2C y As Double\x2C width As Double\x2C height As Double)\n\t\tcontext_DrawOval(x\x2C y\x2C width\x2C height)\n\tEnd Sub\n\n\tSub DrawPolygon(points() As Double)\n\t\tcontext_DrawPolygon(points())\n\tEnd Sub\n\n\tSub DrawPolygon(points() As Integer)\n\t\tcontext_DrawPolygon(points())\n\tEnd Sub\n\n\tSub DrawRect(x As Double\x2C y As Double\x2C width As Double\x2C height As Double)\n\t\tcontext_DrawRect(x\x2C y\x2C width\x2C height)\n\tEnd Sub\n\n\tSub DrawRoundRect(x As Double\x2C y As Double\x2C width As Double\x2C height As Double\x2C arcWidth As Double\x2C arcHeight As Double)\n\t\tcontext_DrawRoundRect(x\x2C y\x2C width\x2C height\x2C arcWidth\x2C arcHeight)\n\tEnd Sub\n\n\tSub DrawStopIcon(x As Double\x2C y As Double)\n\t\tcontext_DrawStopIcon(x\x2C y)\n\tEnd Sub\n\n\tSub DrawString(str As String\x2C x As Double\x2C y As Double\x2C width As Double \x3D 0\x2C condense As Boolean \x3D False)\n\t\tcontext_DrawString(str\x2C x\x2C y\x2C width\x2C condense)\n\tEnd Sub\n\n\tSub FillOval(x As Double\x2C y As Double\x2C width As Double\x2C height As Double)\n\t\tcontext_FillOval(x\x2C y\x2C width\x2C height)\n\tEnd Sub\n\n\tSub FillPolygon(points() As Double)\n\t\tcontext_FillPolygon(points())\n\tEnd Sub\n\n\tSub FillPolygon(points() As Integer)\n\t\tcontext_FillPolygon(points())\n\tEnd Sub\n\n\tSub FillRect(x As Double\x2C y As Double\x2C width As Double\x2C height As Double)\n\t\tcontext_FillRect(x\x2C y\x2C width\x2C height)\n\tEnd Sub\n\n\tSub FillRoundRect(x As Double\x2C y As Double\x2C width As Double\x2C height As Double\x2C arcWidth As Double\x2C arcHeight As Double)\n\t\tcontext_FillRoundRect(x\x2Cy\x2Cwidth\x2Cheight\x2CarcWidth\x2CarcHeight)\n\tEnd Sub\n\n\tFunction ForeColor() As Color\n\t\treturn context_ForeColor\n\tEnd Function\n\n\tSub ForeColor(assigns c As Color)\n\t\tcontext_ForeColor \x3D c\n\tEnd Sub\n\n\tFunction Height() As Integer\n\t\treturn context_Height\n\tEnd Function\n\n\tFunction Italic() As Boolean\n\t\treturn context_Italic\n\tEnd Function\n\n\tSub Italic(assigns b As Boolean)\n\t\tcontext_Italic \x3D b\n\tEnd Sub\n\n\tFunction PenHeight() As Double\n\t\treturn context_PenHeight\n\tEnd Function\n\n\tSub PenHeight(assigns newHeight as Double)\n\t\tcontext_PenHeight \x3D newHeight\n\tEnd Sub\n\n\tFunction PenWidth() As Double\n\t\treturn context_PenWidth\n\tEnd Function\n\n\tSub PenWidth(assigns width As Double)\n\t\tcontext_PenWidth \x3D width\n\tEnd Sub\n\n\tFunction Pixel(x As Double\x2C y As Double) As Color\n\t\treturn context_Pixel(x\x2Cy)\n\tEnd Function\n\n\tSub Pixel(x As Double\x2C y As Double\x2C Assigns value As Color)\n\t\tcontext_Pixel(x\x2Cy) \x3D value\n\tEnd Sub\n\n\tFunction ScaleX() As Double\n\t\treturn context_ScaleX\n\tEnd Function\n\n\tSub ScaleX(assigns newScale As Double)\n\t\tcontext_ScaleX \x3D newScale\n\tEnd Sub\n\n\tFunction ScaleY() As Double\n\t\treturn context_ScaleY\n\tEnd Function\n\n\tSub ScaleY(assigns newScale as Double)\n\t\tcontext_ScaleY \x3D newScale\n\tEnd Sub\n\n\tFunction StringDirection(Text As String) As Integer\n\t\treturn context_StringDirection(Text)\n\tEnd Function\n\n\tFunction StringHeight(Text As String\x2C WrapWidth As Double) As Double\n\t\treturn context_StringHeight(text\x2C wrapWidth)\n\tEnd Function\n\n\tFunction StringWidth(Text As String) As Double\n\t\treturn context_StringWidth(Text)\n\tEnd Function\n\n\tFunction TextAscent() As Double\n\t\treturn context_TextAscent\n\tEnd Function\n\n\tFunction TextFont() As String\n\treturn context_TextFont()\n\tEnd Function\n\n\tSub TextFont(assigns newFont As String)\n\t\tcontext_TextFont \x3D newFont\n\tEnd Sub\n\n\tFunction TextHeight() As Double\n\t\treturn context_TextHeight\n\tEnd Function\n\n\tFunction TextSize() As Single\n\t\treturn context_TextSize\n\tEnd Function\n\n\tSub TextSize(assigns newSize As Single)\n\t\tcontext_TextSize \x3D newSize\n\tEnd Sub\n\n\tFunction TextUnit() As FontUnits\n\t\treturn CType(context_TextUnit\x2CFontUnits)\n\tEnd Function\n\n\tSub TextUnit(assigns newUnits As FontUnits)\n\t\tcontext_TextUnit \x3D CType(newUnits\x2C Integer)\n\tEnd Sub\n\n\tFunction Transparency() As Double\n\t\treturn context_Transparency\n\tEnd Function\n\n\tSub Transparency(assigns newTransparency As Double)\n\t\tcontext_Transparency \x3D newTransparency\n\tEnd Sub\n\n\tFunction Underline() As Boolean\n\t\treturn context_Underline\n\tEnd Function\n\n\tSub Underline(assigns newUnderline As Boolean)\n\t\tcontext_Underline \x3D newUnderline\n\tEnd Sub\n\n\tFunction Width() As Integer\n\t\treturn context_Width()\n\tEnd Function\n\n\tSub DrawFocusRing(x As Double\x2C y As Double\x2C width As Double\x2C height As Double)\n\t\tcontext_DrawFocusRing(x\x2Cy\x2Cwidth\x2Cheight)\n\tEnd Sub\n\nEnd Class\n\nsub paint()\n  dim g as graphics\n  g \x3D new graphics\n  \n   <user code here manipulating g>\n\nend sub\n \npaint()\n", Scope = Public
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
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Source"
			Visible=true
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="State"
			Group="Behavior"
			Type="States"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Source"
			Group="Behavior"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
