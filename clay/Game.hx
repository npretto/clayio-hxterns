package clay;

@:native("Clay.Game")
extern class Game
{
	/**@return an object of data pertaining to your game
	{ id: (int) game ID, name: (string) name of game }
*/
	public static function getData():Void;
	
	public static function error(error:Dynamic):Void;
	
	public static function failedLoadCallback():Void;
	
	public static function set(options:Dynamic, setCallback:Dynamic):Void;
	
	public static function store(obj:Dynamic):Void;
	
}
