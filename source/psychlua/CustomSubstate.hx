package psychlua;

import flixel.FlxSubState;

/**
 * Compatibility shim for code paths that call CustomSubstate.implement(this)
 * and other older CustomSubstate helpers.
 *
 * This file intentionally contains minimal/no-op implementations so the
 * compiler finds the expected API surface. Replace with real behavior later
 * if you rely on any of these functions at runtime.
 */
class CustomSubstate
{
	public static var instance(default, null):Dynamic = null;
	public static var name(default, null):String = "CustomSubstate";

	// Existing shim kept
	public static function insertLuaTpad(pos:Int):Void {
		// No-op shim: Implement insertion logic here if CustomSubstate manages a list of UI elements
	}

	// New: provide the implement method expected by various psychlua calls
	public static function implement(s:FlxSubState):Void {
		// Backwards-compatibility shim. Past code called CustomSubstate.implement(this)
		// to register or patch a substate with Lua-related helpers. We store a reference
		// and optionally expose helper methods on the instance.
		instance = s;

		// If you previously extended the substate with additional methods, add them here.
		// Example: expose a safe add/remove wrapper (uncomment/adjust if desired):
		/*
		Reflect.setField(instance, "addLua", function(obj:Dynamic):Void {
			if (instance != null && Reflect.hasField(instance, "add")) {
				Reflect.callMethod(instance, Reflect.field(instance, "add"), [obj]);
			}
		});
		*/

		// Keep no-op default behavior otherwise.
	}
}
