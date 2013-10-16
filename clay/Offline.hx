package clay;

@:native("Clay.Offline")
extern class Offline
{
	public static function fetch(type:Dynamic, action:Dynamic, key:Dynamic):Void;
	
	public static function save(type:Dynamic, action:Dynamic, key:Dynamic, data:Dynamic, unique:Dynamic):Void;
	
	public static function showWarning(msg:Dynamic):Void;
	
	public static function sync():Void;
	
}
