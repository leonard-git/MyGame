/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 13EFB6EC
/// @DnDArgument : "var" "obj_player.goal"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "1"
if(!(obj_player.goal == 1))
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 5356D1E6
	/// @DnDParent : 13EFB6EC
	/// @DnDArgument : "speed" "2"
	/// @DnDArgument : "speed_relative" "1"
	/// @DnDArgument : "type" "1"
	hspeed += 2;
}