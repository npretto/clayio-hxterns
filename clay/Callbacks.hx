package clay;

@:native("Clay.Callbacks")
extern class Callbacks
{
	public static function add(fn:Dynamic):Void;
	
	public static function execute(id:Dynamic, args:Dynamic):Void;
	
}
