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
		  
		  // see if there is a line like
		  // #pragma UseApi 1
		  // or 
		  // #pragma UseApi 2
		  //
		  // using a reg ex like
		  //    ^\s*#pragma\s*useApi\s*(1|2)\s*$
		  //
		  // if so we replace that line with one that sets
		  //    Const kSupportAPI2 = true
		  // which will make the script permit use of API 2 style methods
		  // at which point we inject
		  //      // <API 2 REALbasic Inclusions> - items in the REALbasic module for API 2
		  //      // <API 2 Graphics Class Inclusions> - items in the Graphics Class for API 2
		  //      // <API 2 Xojo Inclusions> - items in the Xojo module for API 2
		  
		  XojoScript(Me).Source = ""
		  
		  XojoScript(Me).Source = REALbasicModule + EndOfLine + ReplaceAll(GraphicsTemplate, "// <user code here manipulating g>", ReplaceLineEndings(m_Source,EndOfLine) )
		  
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


	#tag Constant, Name = API2GraphicsAdditions, Type = String, Dynamic = False, Default = \"    // additions for the Graphics Class\n\n\tPublic Enum TextDirections As Integer\n\t\tUnknown \x3D 0\n\t\tLeftToRight \x3D 1\n\t\tRightToLeft \x3D 2\n\tEnd Enum\n\t\n\tFunction AntiAliased() As Boolean\n\t\tReturn context_AntiAlias(mClippedGraphicsID)\n\tEnd Function\n\n\tSub AntiAliased(Assigns newAlias As Boolean)\n\t\tcontext_AntiAlias(mClippedGraphicsID) \x3D newAlias    \n\tEnd Sub\n\n\tSub DrawingColor( assigns newColorValue as color)\n\tEnd Sub\n\n\tFunction DrawingColor( assigns newColorValue as color)\n\tEnd Function\n\n\tFunction FontAscent() as DoubleValue\n\tEnd Function\n\t\n\tSub FontName( assigns newStringValue as string)\n\tEnd Sub\n\n\tFunction FontName () as String\n\tEnd Function\n\n\tSub FontSize( assigns newSingleValue as Single)\n\tEnd Sub\n\n\tFunction FontSize() as Single\n\tEnd Function\n\n\tSub FontUnit(assigns newFontUnitsValue as Integer)\n\tEnd Sub\n\n\tFunction FontUnit() as Integer\n\tEnd Function\n\n\tSub PenSize( assigns newDoubleValue as Double)\n\tEnd Sub\n\n\tFunction PenSize() as Double\n\tEnd Function\n\n\tSub ClearRectangle(X As Double\x2C Y As Double\x2C Width As Double\x2C Height As Double) \n\tEnd Sub\n\n\tSub DrawPath(path As GraphicsPath\x2C autoClose As Boolean \x3D False) \n\tEnd Sub\n\n\tSub DrawRectangle(x As Double\x2C y As Double\x2C width As Double\x2C height As Double) \n\tEnd Sub\n\n\tSub DrawRoundRectangle(x As Double\x2C y As Double\x2C width As Double\x2C height As Double\x2C arcWidth As Double\x2C arcHeight As Double) \n\tEnd Sub\n\n\tSub DrawText(str As String\x2C x As Double\x2C y As Double [\x2C wrapWidth As Double \x3D 0] [\x2C condense As Boolean \x3D False]) \n\tEnd Sub\n\n\tSub FillPath(path As GraphicsPath\x2C autoClose As Boolean \x3D False) \n\tEnd Sub\n\n\tSub FillRectangle(x As Double\x2C y As Double\x2C width As Double\x2C height As Double) \n\tEnd Sub\n\n\tSub FillRoundRectangle(x As Double\x2C y As Double\x2C width As Double\x2C height As Double\x2C arcWidth As Double\x2C arcHeight As Double) \n\tEnd Sub\n\n\tSub TextDirection(text As String) As TextDirections\n\tEnd Sub\n\n\tSub TextHeight() As Double\n\tEnd Sub\n\n\tSub TextHeight(value as String\x2C wrapWidth as Double) As Double\n\tEnd Sub\n\n\tSub TextWidth(value As String) As Double\n\tEnd Sub\n", Scope = Public
	#tag EndConstant

	#tag Constant, Name = API2Inclusions, Type = String, Dynamic = False, Default = \"Class GraphicsPath\n\tPublic Property CurrentPoint As Point\n\t\tGet\n\t\tEnd Get\n\tEnd Property\n\tPublic Property IsEmpty As Boolean\n\t\tGet\n\t\tEnd Get\n\tEnd Property\n\tPublic Property IsRectangle As Boolean\n\t\tGet\n\t\tEnd Get\n\tEnd Property\n\tPublic Sub AddArc(x As Double\x2C y As Double\x2C radius As Double\x2C startRadian As Double\x2C endRadian As Double\x2C clockwise As Boolean)\n\tEnd Sub\n\tPublic Sub AddCurveToPoint(cp1X As Double\x2C cp1Y As Double\x2C cp2X As Double\x2C cp2Y As Double\x2C x As Double\x2C y As Double)\n\tEnd Sub\n\tPublic Sub AddLineToPoint(x As Double\x2C y As Double)\n\tEnd Sub\n\tPublic Sub AddQuadraticCurveToPoint(cpX As Double\x2C cpY As Double\x2C x As Double\x2C y As Double)\n\tEnd Sub\n\tPublic Sub AddRectangle(x As Double\x2C y As Double\x2C width As Double\x2C height As Double)\n\tEnd Sub\n\tPublic Sub AddRoundRectangle(x As Double\x2C y As Double\x2C width As Double\x2C height As Double\x2C cornerWidth As Double\x2C cornerHeight As Double)\n\tEnd Sub\n\tPublic Sub MoveToPoint(x As Double\x2C y As Double)\n\tEnd Sub\nEnd Class\n", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GraphicsTemplate, Type = String, Dynamic = False, Default = \"sub paint()\n  dim g as graphics\n\n  g \x3D new graphics\n  \n   // <user code here manipulating g>\n\nend sub\n \npaint()\n", Scope = Public
	#tag EndConstant

	#tag Constant, Name = REALbasicModule, Type = String, Dynamic = False, Default = \"Module REALbasic\n\n  // <API 2 REALbasic Inclusions>\n  \n  Global Function Asc(Extends Str As String) As Integer\n  Return Asc(Str)\n  End Function\n  \n  Global Function AscB(Extends Str As String) As Integer\n  Return AscB(Str)\n  End Function\n  \n  Global Function CDbl(Extends Str As String) As Double\n  Return CDbl(Str)\n  End Function\n  \n  Global Function CLong(Extends Str As String) As Int64\n  Return CLong(Str)\n  End Function\n  \n  Global Function CLong(Str As String) As Int64\n  Return context_CLong(Str)\n  End Function\n  \n  Global Function CountFields(Extends aString As String\x2C separator As String) As Integer\n  Return CountFields(Astring\x2C separator)\n  End Function\n  \n  Global Function CountFieldsB(Extends aString As String\x2C separator As String) As Integer\n  Return CountFieldsB(Astring\x2C separator)\n  End Function\n  \n  Global Function CountFieldsB(aString As String\x2C separator As String) As Integer\n  Return context_CountFieldsB(aString\x2C separator)\n  End Function\n  \n  Global Function EncodeHex(s As String\x2C insertSpaces As Boolean \x3D False) As String\n  Return context_EncodeHex(s\x2C insertSpaces)\n  End Function\n  \n  Global Function EndOfLine() As String\n  Return context_EndOfLine\n  End Function\n  \n  Global Function InStr(Extends source As String\x2C start As Integer \x3D 0\x2C find As String) As Integer\n  Return InStr(start\x2C source\x2Cfind)\n  End Function\n  \n  Global Function InStr(start As Integer \x3D 0\x2C source As String\x2C find As String) As Integer\n  Return  context_InStr(start\x2C source\x2C find)\n  End Function\n  \n  Global Function InStrB(Extends source As String\x2C start As Integer \x3D 0\x2C find As String) As Integer\n  Return InStrB(start\x2C source \x2Cfind)\n  End Function\n  \n  Global Function InStrB(start As Integer \x3D 0\x2C source As String\x2C find As String) As Integer\n  return context_InStrB(start\x2C source\x2C find)\n  End Function\n  \n  Global Function Join(fields() As String\x2C delimiter As String \x3D \" \") As String\n  Return context_Join(fields\x2C delimiter)\n  End Function\n  \n  Global Function Left(Extends Str As String\x2C count As Integer) As String\n  Return Left(Str\x2Ccount)\n  End Function\n  \n  Global Function LeftB(Extends Str As String\x2C count As Integer) As String\n  Return LeftB(Str\x2Ccount)\n  End Function\n  \n  Global Function LenB(Extends Str As String) As Integer\n  Return LenB(Str)\n  End Function\n  \n  Global Function Lowercase(Extends Str As String) As String\n  Return Lowercase(Str)\n  End Function\n  \n  Global Function LTrim(Extends Str As String) As String\n  Return LTrim(Str)\n  End Function\n  \n  Global Function MidB(Extends source As String\x2C start As Integer) As String\n  Return MidB(source\x2C start)\n  End Function\n  \n  Global Function MidB(Extends source As String\x2C start As Integer\x2C length As Integer) As String\n  Return MidB(source\x2C start\x2C length)\n  End Function\n  \n  Global Function MidB(source As String\x2C start As Integer) As String\n  Return MidB(source\x2C start)\n  End Function\n  \n  Global Function MidB(source As String\x2C start As Integer\x2C length As Integer) As String\n  Return MidB(source\x2C start\x2C length)\n  End Function\n  \n  Global Function NthField(Extends aString As String\x2C separator As String\x2C index As Integer) As String\n  Return context_NthField(aString\x2C separator\x2C index)\n  End Function\n  \n  Global Function NthFieldB(Extends aString As String\x2C separator As String\x2C index As Integer) As String\n  Return NthFieldB(aString\x2C separator\x2C index)\n  End Function\n  \n  Global Function NthFieldB(aString As String\x2C separator As String\x2C index As Integer) As String\n  End Function\n  \n  Global Function Replace(Extends sourceString As String\x2C substring As String\x2C replacementString As String) As String\n  return Replace(sourceString\x2C substring\x2C replacementString)\n  End Function\n  \n  Global Function ReplaceAll(Extends sourceString As String\x2C substring As String\x2C replacementString As String) As String\n  return ReplaceAll(sourceString\x2C substring\x2C replacementString)\n  End Function\n  \n  Global Function ReplaceAllB(Extends sourceString As String\x2C substring As String\x2C replacementString As String) As String\n  return ReplaceAllB(sourceString\x2C substring\x2C replacementString)\n  End Function\n  \n  Global Function ReplaceB(Extends sourceString As String\x2C substring As String\x2C replacementString As String) As String\n  return ReplaceB(sourceString\x2C substring\x2C replacementString)\n  End Function\n  \n  Global Function Right(Extends Str As String\x2C count As Integer) As String\n  return Right(Str\x2C count)\n  End Function\n  \n  Global Function RightB(Extends Str As String\x2C count As Integer) As String\n  return RightB(Str\x2C count)\n  End Function\n  \n  Global Function RTrim(Extends Str As String) As String\n  return RTrim(Str)\n  End Function\n  \n  Global Function Split(Extends source As String\x2C delimiter As String \x3D \" \") As String()\n  return Split(source\x2C delimiter)\n  End Function\n  \n  Global Function SplitB(Extends source As String\x2C delimiter As String \x3D \" \") As String()\n  Return SplitB(source\x2C delimiter)\n  End Function\n  \n  Global Function SplitB(source As String\x2C delimiter As String \x3D \" \") As String()\n  Return context_SplitB(source\x2C delimiter)\n  End Function\n  \n  Global Function Titlecase(Extends Str As String) As String\n  return Titlecase(Str)\n  End Function\n  \n  Global Function Trim(Extends Str As String) As String\n  return Trim(Str)\n  End Function\n  \n  Global Function Uppercase(Extends Str As String) As String\n  return Uppercase(Str)\n  End Function\n  \n  Global Function Val(Extends Str As String) As Double\n  Return Val(Str) \n  End Function\n  \n  Global Function Val(Str As String) As Double\n  Return context_Val(Str)\n  End Function\n  \n  Protected Const StrCompCaseSensitive \x3D 0\n  Protected Const StrCompLexical \x3D 1\n  \n  Global Enum FontUnits As UInt8\n  Default \x3D 0\n  Pixel \x3D 1\n  Point \x3D 2\n  Inches \x3D 3\n  Millimeter \x3D 4\n  End Enum\n  \nEnd Module\n\nModule Drawing\n\tClass Graphics\n\n\t  protected mClippedGraphicsID as integer \x3D -1\n\n\tPublic Const TextDirectionLeftToRight \x3D 0\n\tPublic Const TextDirectionRightToLeft \x3D 1\n\tPublic Const TextDirectionUnknown \x3D -1\n\t  \t\n\t  Public Enum AntiAliasModes As Integer\n\t\t  LowQuality \x3D 0\n\t\t  DefaultQuality \x3D 1\n\t\t  HighQuality \x3D 2\n\t  End Enum\n\n      // <API 2 Graphics Class Inclusions>\n\n\t  Sub Destructor()\n\t    context_GraphicsDestroy(mClippedGraphicsID)\n\t  End Sub \n\t  \n\t  Function AntiAlias() As Boolean\n\t\tReturn context_AntiAlias(mClippedGraphicsID)\n\t  End Function\n  \n\t  Sub AntiAlias(Assigns newAlias As Boolean)\n\t\tcontext_AntiAlias(mClippedGraphicsID) \x3D newAlias    \n\t  End Sub\n  \n\t  Function AntiAliasMode() As AntiAliasModes\n\t\tReturn CType(context_AntiAliasMode(mClippedGraphicsID)\x2CAntiAliasModes)\n\t  End Function\n  \n\t  Sub AntiAliasMode(Assigns mode As AntiAliasModes)\n\t\tcontext_AntiAliasMode(mClippedGraphicsID) \x3D CType(mode\x2C Integer)\n\t  End Sub\n  \n\t  Function Bold() As Boolean\n\t\tReturn context_Bold(mClippedGraphicsID)\n\t  End Function\n  \n\t  Sub Bold(Assigns newBold As Boolean)\n\t\tcontext_Bold(mClippedGraphicsID) \x3D newBold\n\t  End Sub\n  \n\t  Function CharacterSpacing() As Integer\n\t\tReturn context_CharacterSpacing(mClippedGraphicsID)\n\t  End Function\n  \n\t  Sub CharacterSpacing(Assigns newSpacing As Integer)\n\t\tcontext_CharacterSpacing(mClippedGraphicsID) \x3D newSpacing\n\t  End Sub\n  \n\t  Sub ClearRect(x As Double\x2C y As Double\x2C width As Double\x2C height As Double)\n\t\tcontext_ClearRect(mClippedGraphicsID\x2C x\x2C y\x2C width\x2C height)\n\t  End Sub\n  \n\t  Sub DrawCautionIcon(x As Double\x2C y As Double)\n\t\tcontext_DrawCautionIcon(mClippedGraphicsID\x2C x\x2C y)\n\t  End Sub\n  \n\t  Sub DrawLine(x1 As Double\x2C y1 As Double\x2C x2 As Double\x2C y2 As Double)\n\t\tcontext_DrawLine(mClippedGraphicsID\x2C x1\x2C y1\x2C x2\x2C y2)\n\t  End Sub\n  \n\t  Sub DrawNoteIcon(x As Double\x2C y As Double)\n\t\tcontext_DrawNoteIcon(mClippedGraphicsID\x2C x\x2C y)\n\t  End Sub\n  \n\t  Sub DrawOval(x As Double\x2C y As Double\x2C width As Double\x2C height As Double)\n\t\tcontext_DrawOval(mClippedGraphicsID\x2C x\x2C y\x2C width\x2C height)\n\t  End Sub\n  \n\t  Sub DrawPolygon(points() As Double)\n\t\tcontext_DrawPolygon(mClippedGraphicsID\x2C points)\n\t  End Sub\n  \n\t  Sub DrawPolygon(points() As Integer)\n\t\tcontext_DrawPolygon(mClippedGraphicsID\x2C points)\n\t  End Sub\n  \n\t  Sub DrawRect(x As Double\x2C y As Double\x2C width As Double\x2C height As Double)\n\t\tcontext_DrawRect(mClippedGraphicsID\x2C x\x2C y\x2C width\x2C height)\n\t  End Sub\n  \n\t  Sub DrawRoundRect(x As Double\x2C y As Double\x2C width As Double\x2C height As Double\x2C arcWidth As Double\x2C arcHeight As Double)\n\t\tcontext_DrawRoundRect(mClippedGraphicsID\x2C x\x2C y\x2C width\x2C height\x2C arcWidth\x2C arcHeight)\n\t  End Sub\n  \n\t  Sub DrawStopIcon(x As Double\x2C y As Double)\n\t\tcontext_DrawStopIcon(mClippedGraphicsID\x2C x\x2C y)\n\t  End Sub\n  \n\t  Sub DrawString(Str As String\x2C x As Double\x2C y As Double\x2C width As Double \x3D 0\x2C condense As Boolean \x3D False)\n\t\tcontext_DrawString(mClippedGraphicsID\x2C Str\x2C x\x2C y\x2C width\x2C condense)\n\t  End Sub\n  \n\t  Sub FillOval(x As Double\x2C y As Double\x2C width As Double\x2C height As Double)\n\t\tcontext_FillOval(mClippedGraphicsID\x2C x\x2C y\x2C width\x2C height)\n\t  End Sub\n  \n\t  Sub FillPolygon(points() As Double)\n\t\tcontext_FillPolygon(mClippedGraphicsID\x2C points)\n\t  End Sub\n  \n\t  Sub FillPolygon(points() As Integer)\n\t\tcontext_FillPolygon(mClippedGraphicsID\x2C points)\n\t  End Sub\n  \n\t  Sub FillRect(x As Double\x2C y As Double\x2C width As Double\x2C height As Double)\n\t\tcontext_FillRect(mClippedGraphicsID\x2C x\x2C y\x2C width\x2C height)\n\t  End Sub\n  \n\t  Sub FillRoundRect(x As Double\x2C y As Double\x2C width As Double\x2C height As Double\x2C arcWidth As Double\x2C arcHeight As Double)\n\t\tcontext_FillRoundRect(mClippedGraphicsID\x2C x\x2Cy\x2Cwidth\x2Cheight\x2CarcWidth\x2CarcHeight)\n\t  End Sub\n  \n\t  Function ForeColor() As Color\n\t\tReturn context_ForeColor(mClippedGraphicsID)\n\t  End Function\n  \n\t  Sub ForeColor(Assigns c As Color)\n\t\tcontext_ForeColor(mClippedGraphicsID) \x3D c\n\t  End Sub\n  \n\t  Function Height() As Integer\n\t\tReturn context_Height(mClippedGraphicsID)\n\t  End Function\n  \n\t  Function Italic() As Boolean\n\t\tReturn context_Italic(mClippedGraphicsID)\n\t  End Function\n  \n\t  Sub Italic(Assigns b As Boolean)\n\t\tcontext_Italic(mClippedGraphicsID) \x3D b\n\t  End Sub\n  \n\t  Function PenHeight() As Double\n\t\tReturn context_PenHeight(mClippedGraphicsID)\n\t  End Function\n  \n\t  Sub PenHeight(Assigns newHeight As Double)\n\t\tcontext_PenHeight(mClippedGraphicsID) \x3D newHeight\n\t  End Sub\n  \n\t  Function PenWidth() As Double\n\t\tReturn context_PenWidth(mClippedGraphicsID)\n\t  End Function\n  \n\t  Sub PenWidth(Assigns width As Double)\n\t\tcontext_PenWidth(mClippedGraphicsID) \x3D width\n\t  End Sub\n  \n\t  Function Pixel(x As Double\x2C y As Double) As Color\n\t\tReturn context_Pixel(mClippedGraphicsID\x2C x\x2Cy)\n\t  End Function\n  \n\t  Sub Pixel(x As Double\x2C y As Double\x2C Assigns value As Color)\n\t\tcontext_Pixel(mClippedGraphicsID\x2C x\x2Cy) \x3D value\n\t  End Sub\n  \n\t  Function ScaleX() As Double\n\t\tReturn context_ScaleX(mClippedGraphicsID)\n\t  End Function\n  \n\t  Sub ScaleX(Assigns newScale As Double)\n\t\tcontext_ScaleX(mClippedGraphicsID) \x3D newScale\n\t  End Sub\n  \n\t  Function ScaleY() As Double\n\t\tReturn context_ScaleY(mClippedGraphicsID)\n\t  End Function\n  \n\t  Sub ScaleY(Assigns newScale As Double)\n\t\tcontext_ScaleY(mClippedGraphicsID) \x3D newScale\n\t  End Sub\n  \n\t  Function StringDirection(Text As String) As Integer\n\t\tReturn context_StringDirection(mClippedGraphicsID\x2C Text)\n\t  End Function\n  \n\t  Function StringHeight(Text As String\x2C WrapWidth As Double) As Double\n\t\tReturn context_StringHeight(mClippedGraphicsID\x2C Text\x2C wrapWidth)\n\t  End Function\n  \n\t  Function StringWidth(Text As String) As Double\n\t\tReturn context_StringWidth(mClippedGraphicsID\x2C Text)\n\t  End Function\n  \n\t  Function TextAscent() As Double\n\t\tReturn context_TextAscent(mClippedGraphicsID)\n\t  End Function\n  \n\t  Function TextFont() As String\n\t\tReturn context_TextFont(mClippedGraphicsID)\n\t  End Function\n  \n\t  Sub TextFont(Assigns newFont As String)\n\t\tcontext_TextFont(mClippedGraphicsID) \x3D newFont\n\t  End Sub\n  \n\t  Function TextHeight() As Double\n\t\tReturn context_TextHeight(mClippedGraphicsID)\n\t  End Function\n  \n\t  Function TextSize() As Single\n\t\tReturn context_TextSize(mClippedGraphicsID)\n\t  End Function\n  \n\t  Sub TextSize(Assigns newSize As Single)\n\t\tcontext_TextSize(mClippedGraphicsID) \x3D newSize\n\t  End Sub\n  \n\t  Function TextUnit() As FontUnits\n\t\tReturn CType(context_TextUnit(mClippedGraphicsID)\x2CFontUnits)\n\t  End Function\n  \n\t  Sub TextUnit(Assigns newUnits As FontUnits)\n\t\tcontext_TextUnit(mClippedGraphicsID) \x3D CType(newUnits\x2C Integer)\n\t  End Sub\n  \n\t  Function Transparency() As Double\n\t\tReturn context_Transparency(mClippedGraphicsID)\n\t  End Function\n  \n\t  Sub Transparency(Assigns newTransparency As Double)\n\t\tcontext_Transparency(mClippedGraphicsID) \x3D newTransparency\n\t  End Sub\n  \n\t  Function Underline() As Boolean\n\t\tReturn context_Underline(mClippedGraphicsID)\n\t  End Function\n  \n\t  Sub Underline(Assigns newUnderline As Boolean)\n\t\tcontext_Underline(mClippedGraphicsID) \x3D newUnderline\n\t  End Sub\n  \n\t  Function Width() As Integer\n\t\tReturn context_Width(mClippedGraphicsID)\n\t  End Function\n\n\t  Function Clip(X As Double\x2C Y As Double\x2C Width As Double\x2C Height As Double) As Graphics\n\t\t// ask the context to clip and return the new clippings ID\n\t\tdim tmp as Integer \n\t\ttmp \x3D context_Clip(mClippedGraphicsID\x2C x\x2C y\x2C width\x2C height)\n\t\treturn new PrivateGraphics(tmp)\n\t\t\n\t  End Function\n\n\tEnd Class\n\n\tPrivate Class PrivateGraphics\n\t\tInherits Graphics\n\n\t\t// this class is JUST for construction of graphics\n\t\t// that we can assign a new ID to\n\t\t// nothing more \n\t\tSub Constructor(clippedGraphicsID As Integer)\n\t\t\tSelf.mClippedGraphicsID \x3D clippedGraphicsID\t\t\t\n\t\tEnd Sub\n\n\tEnd Class    \nEnd Module\t\n\n// <API 2 Xojo Inclusions>\n", Scope = Public
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
