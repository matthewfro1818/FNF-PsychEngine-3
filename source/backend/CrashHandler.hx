package backend;

class CrashHandler {
    // Minimal init shim used by Main. Add platform-specific crash hooks later if desired.
    public static function init():Void {
        // noop for targets that don't need special crash handling
        #if sys
        // You can add platform-specific handlers here if needed in the future.
        #end
    }
}
