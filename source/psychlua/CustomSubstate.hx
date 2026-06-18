package psychlua;

// Minimal shim for Lua/HScript code that expects CustomSubstate.insertLuaTpad
class CustomSubstate
{
	public static var instance(default, null):Dynamic = null;
	public static var name(default, null):String = "CustomSubstate";

	public static function insertLuaTpad(pos:Int):Void {
		// No-op shim: Implement insertion logic here if CustomSubstate manages a list of UI elements
	}
}
