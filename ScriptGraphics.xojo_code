#tag Class
Protected Class ScriptGraphics
Inherits XojoScript
	#tag Event
		Function CompilerError(location As XojoScriptLocation, error As XojoScript.Errors, errorInfo As Dictionary) As Boolean
		  break
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
		  
		  XojoScript(Me).Source = REALbasicModule + EndOfLine + ReplaceAll(GraphicsTemplate, "// <user code here manipulating g>", m_Source )
		  
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


	#tag Constant, Name = GraphicsTemplate, Type = String, Dynamic = False, Default = \"sub paint()\n  dim g as graphics\n\n  g \x3D new graphics\n  \n   // <user code here manipulating g>\n\nend sub\n \npaint()\n", Scope = Public
	#tag EndConstant

	#tag Constant, Name = REALbasicModule, Type = String, Dynamic = False, Default = \"Module REALbasic\n  \n  Global Function Asc(Extends Str As String) As Integer\n  Return Asc(Str)\n  End Function\n  \n  Global Function AscB(Extends Str As String) As Integer\n  Return AscB(Str)\n  End Function\n  \n  Global Function CDbl(Extends Str As String) As Double\n  Return CDbl(Str)\n  End Function\n  \n  Global Function CLong(Extends Str As String) As Int64\n  Return CLong(Str)\n  End Function\n  \n  Global Function CLong(Str As String) As Int64\n  Return context_CLong(Str)\n  End Function\n  \n  Global Function CountFields(Extends aString As String\x2C separator As String) As Integer\n  Return CountFields(Astring\x2C separator)\n  End Function\n  \n  Global Function CountFieldsB(Extends aString As String\x2C separator As String) As Integer\n  Return CountFieldsB(Astring\x2C separator)\n  End Function\n  \n  Global Function CountFieldsB(aString As String\x2C separator As String) As Integer\n  Return context_CountFieldsB(aString\x2C separator)\n  End Function\n  \n  Global Function EncodeHex(s As String\x2C insertSpaces As Boolean \x3D False) As String\n  Return context_EncodeHex(s\x2C insertSpaces)\n  End Function\n  \n  Global Function EndOfLine() As String\n  Return context_EndOfLine\n  End Function\n  \n  Global Function InStr(Extends source As String\x2C start As Integer \x3D 0\x2C find As String) As Integer\n  Return InStr(start\x2C source\x2Cfind)\n  End Function\n  \n  Global Function InStr(start As Integer \x3D 0\x2C source As String\x2C find As String) As Integer\n  Return  context_InStr(start\x2C source\x2C find)\n  End Function\n  \n  Global Function InStrB(Extends source As String\x2C start As Integer \x3D 0\x2C find As String) As Integer\n  Return InStrB(start\x2C source \x2Cfind)\n  End Function\n  \n  Global Function InStrB(start As Integer \x3D 0\x2C source As String\x2C find As String) As Integer\n  return context_InStrB(start\x2C source\x2C find)\n  End Function\n  \n  Global Function Join(fields() As String\x2C delimiter As String \x3D \" \") As String\n  Return context_Join(fields\x2C delimiter)\n  End Function\n  \n  Global Function Left(Extends Str As String\x2C count As Integer) As String\n  Return Left(Str\x2Ccount)\n  End Function\n  \n  Global Function LeftB(Extends Str As String\x2C count As Integer) As String\n  Return LeftB(Str\x2Ccount)\n  End Function\n  \n  Global Function LenB(Extends Str As String) As Integer\n  Return LenB(Str)\n  End Function\n  \n  Global Function Lowercase(Extends Str As String) As String\n  Return Lowercase(Str)\n  End Function\n  \n  Global Function LTrim(Extends Str As String) As String\n  Return LTrim(Str)\n  End Function\n  \n  Global Function MidB(Extends source As String\x2C start As Integer) As String\n  Return MidB(source\x2C start)\n  End Function\n  \n  Global Function MidB(Extends source As String\x2C start As Integer\x2C length As Integer) As String\n  Return MidB(source\x2C start\x2C length)\n  End Function\n  \n  Global Function MidB(source As String\x2C start As Integer) As String\n  Return MidB(source\x2C start)\n  End Function\n  \n  Global Function MidB(source As String\x2C start As Integer\x2C length As Integer) As String\n  Return MidB(source\x2C start\x2C length)\n  End Function\n  \n  Global Function NthField(Extends aString As String\x2C separator As String\x2C index As Integer) As String\n  Return context_NthField(aString\x2C separator\x2C index)\n  End Function\n  \n  Global Function NthFieldB(Extends aString As String\x2C separator As String\x2C index As Integer) As String\n  Return NthFieldB(aString\x2C separator\x2C index)\n  End Function\n  \n  Global Function NthFieldB(aString As String\x2C separator As String\x2C index As Integer) As String\n  End Function\n  \n  Global Function Replace(Extends sourceString As String\x2C substring As String\x2C replacementString As String) As String\n  return Replace(sourceString\x2C substring\x2C replacementString)\n  End Function\n  \n  Global Function ReplaceAll(Extends sourceString As String\x2C substring As String\x2C replacementString As String) As String\n  return ReplaceAll(sourceString\x2C substring\x2C replacementString)\n  End Function\n  \n  Global Function ReplaceAllB(Extends sourceString As String\x2C substring As String\x2C replacementString As String) As String\n  return ReplaceAllB(sourceString\x2C substring\x2C replacementString)\n  End Function\n  \n  Global Function ReplaceB(Extends sourceString As String\x2C substring As String\x2C replacementString As String) As String\n  return ReplaceB(sourceString\x2C substring\x2C replacementString)\n  End Function\n  \n  Global Function Right(Extends Str As String\x2C count As Integer) As String\n  return Right(Str\x2C count)\n  End Function\n  \n  Global Function RightB(Extends Str As String\x2C count As Integer) As String\n  return RightB(Str\x2C count)\n  End Function\n  \n  Global Function RTrim(Extends Str As String) As String\n  return RTrim(Str)\n  End Function\n  \n  Global Function Split(Extends source As String\x2C delimiter As String \x3D \" \") As String()\n  return Split(source\x2C delimiter)\n  End Function\n  \n  Global Function SplitB(Extends source As String\x2C delimiter As String \x3D \" \") As String()\n  Return SplitB(source\x2C delimiter)\n  End Function\n  \n  Global Function SplitB(source As String\x2C delimiter As String \x3D \" \") As String()\n  Return context_SplitB(source\x2C delimiter)\n  End Function\n  \n  Global Function Titlecase(Extends Str As String) As String\n  return Titlecase(Str)\n  End Function\n  \n  Global Function Trim(Extends Str As String) As String\n  return Trim(Str)\n  End Function\n  \n  Global Function Uppercase(Extends Str As String) As String\n  return Uppercase(Str)\n  End Function\n  \n  Global Function Val(Extends Str As String) As Double\n  Return Val(Str) \n  End Function\n  \n  Global Function Val(Str As String) As Double\n  Return context_Val(Str)\n  End Function\n  \n  Protected Const StrCompCaseSensitive \x3D 0\n  Protected Const StrCompLexical \x3D 1\n  \n  Global Enum FontUnits As UInt8\n  Default \x3D 0\n  Pixel \x3D 1\n  Point \x3D 2\n  Inches \x3D 3\n  Millimeter \x3D 4\n  End Enum\n  \nEnd Module\n\nClass Graphics\n  Public Enum AntiAliasModes As Integer\n  LowQuality \x3D 0\n  DefaultQuality \x3D 1\n  HighQuality \x3D 2\n  End Enum\n  \n  Function AntiAlias() As Boolean\n    Return context_AntiAlias\n  End Function\n  \n  Sub AntiAlias(Assigns newAlias As Boolean)\n    context_AntiAlias \x3D newAlias    \n  End Sub\n  \n  Function AntiAliasMode() As AntiAliasModes\n    Return CType(context_AntiAliasMode\x2CAntiAliasModes)\n  End Function\n  \n  Sub AntiAliasMode(Assigns mode As AntiAliasModes)\n    context_AntiAliasMode \x3D CType(mode\x2C Integer)\n  End Sub\n  \n  Function Bold() As Boolean\n    Return context_Bold\n  End Function\n  \n  Sub Bold(Assigns newBold As Boolean)\n    context_Bold \x3D newBold\n  End Sub\n  \n  Function CharacterSpacing() As Integer\n    Return context_CharacterSpacing\n  End Function\n  \n  Sub CharacterSpacing(Assigns newSpacing As Integer)\n    context_CharacterSpacing \x3D newSpacing\n  End Sub\n  \n  Sub ClearRect(x As Double\x2C y As Double\x2C width As Double\x2C height As Double)\n    context_ClearRect(x\x2C y\x2C width\x2C height)\n  End Sub\n  \n  Sub DrawCautionIcon(x As Double\x2C y As Double)\n    context_DrawCautionIcon(x\x2C y)\n  End Sub\n  \n  Sub DrawLine(x1 As Double\x2C y1 As Double\x2C x2 As Double\x2C y2 As Double)\n    context_DrawLine(x1\x2C y1\x2C x2\x2C y2)\n  End Sub\n  \n  Sub DrawNoteIcon(x As Double\x2C y As Double)\n    context_DrawNoteIcon(x\x2C y)\n  End Sub\n  \n  Sub DrawOval(x As Double\x2C y As Double\x2C width As Double\x2C height As Double)\n    context_DrawOval(x\x2C y\x2C width\x2C height)\n  End Sub\n  \n  Sub DrawPolygon(points() As Double)\n    context_DrawPolygon(points)\n  End Sub\n  \n  Sub DrawPolygon(points() As Integer)\n    context_DrawPolygon(points)\n  End Sub\n  \n  Sub DrawRect(x As Double\x2C y As Double\x2C width As Double\x2C height As Double)\n    context_DrawRect(x\x2C y\x2C width\x2C height)\n  End Sub\n  \n  Sub DrawRoundRect(x As Double\x2C y As Double\x2C width As Double\x2C height As Double\x2C arcWidth As Double\x2C arcHeight As Double)\n    context_DrawRoundRect(x\x2C y\x2C width\x2C height\x2C arcWidth\x2C arcHeight)\n  End Sub\n  \n  Sub DrawStopIcon(x As Double\x2C y As Double)\n    context_DrawStopIcon(x\x2C y)\n  End Sub\n  \n  Sub DrawString(Str As String\x2C x As Double\x2C y As Double\x2C width As Double \x3D 0\x2C condense As Boolean \x3D False)\n    context_DrawString(Str\x2C x\x2C y\x2C width\x2C condense)\n  End Sub\n  \n  Sub FillOval(x As Double\x2C y As Double\x2C width As Double\x2C height As Double)\n    context_FillOval(x\x2C y\x2C width\x2C height)\n  End Sub\n  \n  Sub FillPolygon(points() As Double)\n    context_FillPolygon(points)\n  End Sub\n  \n  Sub FillPolygon(points() As Integer)\n    context_FillPolygon(points)\n  End Sub\n  \n  Sub FillRect(x As Double\x2C y As Double\x2C width As Double\x2C height As Double)\n    context_FillRect(x\x2C y\x2C width\x2C height)\n  End Sub\n  \n  Sub FillRoundRect(x As Double\x2C y As Double\x2C width As Double\x2C height As Double\x2C arcWidth As Double\x2C arcHeight As Double)\n    context_FillRoundRect(x\x2Cy\x2Cwidth\x2Cheight\x2CarcWidth\x2CarcHeight)\n  End Sub\n  \n  Function ForeColor() As Color\n    Return context_ForeColor\n  End Function\n  \n  Sub ForeColor(Assigns c As Color)\n    context_ForeColor \x3D c\n  End Sub\n  \n  Function Height() As Integer\n    Return context_Height\n  End Function\n  \n  Function Italic() As Boolean\n    Return context_Italic\n  End Function\n  \n  Sub Italic(Assigns b As Boolean)\n    context_Italic \x3D b\n  End Sub\n  \n  Function PenHeight() As Double\n    Return context_PenHeight\n  End Function\n  \n  Sub PenHeight(Assigns newHeight As Double)\n    context_PenHeight \x3D newHeight\n  End Sub\n  \n  Function PenWidth() As Double\n    Return context_PenWidth\n  End Function\n  \n  Sub PenWidth(Assigns width As Double)\n    context_PenWidth \x3D width\n  End Sub\n  \n  Function Pixel(x As Double\x2C y As Double) As Color\n    Return context_Pixel(x\x2Cy)\n  End Function\n  \n  Sub Pixel(x As Double\x2C y As Double\x2C Assigns value As Color)\n    context_Pixel(x\x2Cy) \x3D value\n  End Sub\n  \n  Function ScaleX() As Double\n    Return context_ScaleX\n  End Function\n  \n  Sub ScaleX(Assigns newScale As Double)\n    context_ScaleX \x3D newScale\n  End Sub\n  \n  Function ScaleY() As Double\n    Return context_ScaleY\n  End Function\n  \n  Sub ScaleY(Assigns newScale As Double)\n    context_ScaleY \x3D newScale\n  End Sub\n  \n  Function StringDirection(Text As String) As Integer\n    Return context_StringDirection(Text)\n  End Function\n  \n  Function StringHeight(Text As String\x2C WrapWidth As Double) As Double\n    Return context_StringHeight(Text\x2C wrapWidth)\n  End Function\n  \n  Function StringWidth(Text As String) As Double\n    Return context_StringWidth(Text)\n  End Function\n  \n  Function TextAscent() As Double\n    Return context_TextAscent\n  End Function\n  \n  Function TextFont() As String\n    Return context_TextFont\n  End Function\n  \n  Sub TextFont(Assigns newFont As String)\n    context_TextFont \x3D newFont\n  End Sub\n  \n  Function TextHeight() As Double\n    Return context_TextHeight\n  End Function\n  \n  Function TextSize() As Single\n    Return context_TextSize\n  End Function\n  \n  Sub TextSize(Assigns newSize As Single)\n    context_TextSize \x3D newSize\n  End Sub\n  \n  Function TextUnit() As FontUnits\n    Return CType(context_TextUnit\x2CFontUnits)\n  End Function\n  \n  Sub TextUnit(Assigns newUnits As FontUnits)\n    context_TextUnit \x3D CType(newUnits\x2C Integer)\n  End Sub\n  \n  Function Transparency() As Double\n    Return context_Transparency\n  End Function\n  \n  Sub Transparency(Assigns newTransparency As Double)\n    context_Transparency \x3D newTransparency\n  End Sub\n  \n  Function Underline() As Boolean\n    Return context_Underline\n  End Function\n  \n  Sub Underline(Assigns newUnderline As Boolean)\n    context_Underline \x3D newUnderline\n  End Sub\n  \n  Function Width() As Integer\n    Return context_Width\n  End Function\n  \nEnd Class\n", Scope = Public
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
