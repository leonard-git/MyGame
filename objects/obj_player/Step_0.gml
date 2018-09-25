/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 250D1B72
/// @DnDArgument : "expr" "obj_player.x >= obj_goalline.x"
if(obj_player.x >= obj_goalline.x)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1AF0E633
	/// @DnDParent : 250D1B72
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "obj_player.goal"
	obj_player.goal = 1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 28413D31
	/// @DnDParent : 250D1B72
	/// @DnDArgument : "var" "obj_player.speed"
	/// @DnDArgument : "op" "2"
	if(obj_player.speed > 0)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 1E936F73
		/// @DnDParent : 28413D31
		/// @DnDArgument : "speed" "-0.5"
		/// @DnDArgument : "type" "1"
		hspeed = -0.5;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 59C010E5
	/// @DnDParent : 250D1B72
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 76CA57C5
		/// @DnDParent : 59C010E5
		/// @DnDArgument : "expr" "obj_player.speed > 0"
		if(obj_player.speed > 0)
		{
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 60005203
			/// @DnDParent : 76CA57C5
			/// @DnDArgument : "speed" "-0.1"
			/// @DnDArgument : "type" "1"
			hspeed = -0.1;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 321EA28D
		/// @DnDParent : 59C010E5
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 79B4FDC9
			/// @DnDParent : 321EA28D
			/// @DnDArgument : "var" "obj_player.speed"
			obj_player.speed = 0;
		}
	}
}