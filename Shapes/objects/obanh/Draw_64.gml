/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2BD2A2CF
/// @DnDArgument : "var" "color"
/// @DnDArgument : "value" "1"
if(color == 1)
{
	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 2C6F5FEA
	/// @DnDParent : 2BD2A2CF
	/// @DnDArgument : "color" "$FF3232FF"
	draw_set_colour($FF3232FF & $ffffff);
	var l2C6F5FEA_0=($FF3232FF >> 24);
	draw_set_alpha(l2C6F5FEA_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 163284E1
	/// @DnDParent : 2BD2A2CF
	/// @DnDArgument : "font" "name"
	/// @DnDSaveInfo : "font" "3cae6724-b2d4-4c3c-b4a2-41caaefc8013"
	draw_set_font(name);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 53AB7BF8
	/// @DnDParent : 2BD2A2CF
	/// @DnDArgument : "x" "x - string_width("What shape is hidden?")/2"
	/// @DnDArgument : "y" "335"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "var" " "What shape is hidden?""
	draw_text(x - string_width("What shape is hidden?")/2, 335,  + string( "What shape is hidden?"));
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2F0E1706
else
{
	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 5FE6DABA
	/// @DnDParent : 2F0E1706
	/// @DnDArgument : "color" "$FF000000"
	draw_set_colour($FF000000 & $ffffff);
	var l5FE6DABA_0=($FF000000 >> 24);
	draw_set_alpha(l5FE6DABA_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 005B4EDD
	/// @DnDParent : 2F0E1706
	/// @DnDArgument : "font" "name"
	/// @DnDSaveInfo : "font" "3cae6724-b2d4-4c3c-b4a2-41caaefc8013"
	draw_set_font(name);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 3F46B79F
	/// @DnDParent : 2F0E1706
	/// @DnDArgument : "x" "x - string_width("What shape is hidden?")/2"
	/// @DnDArgument : "y" "335"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "var" " "What shape is hidden?""
	draw_text(x - string_width("What shape is hidden?")/2, 335,  + string( "What shape is hidden?"));
}