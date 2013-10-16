package clay;

@:native("Clay.Stats")
extern class Stats
{
	/**For statistics associated with game levels. You can start and end levels to gather
statistics on dropout rate, time to complete, etc...
@param [required] (object) options
	@option (string) action One of: 'start', 'pass', 'fail'
	@option (string) level A unique identifier for the current level
@example Clay.Stats.level( { action: 'start', level: 1 } );
*/
	public static function level(options:Dynamic):Void;
	
	/**Logs a custom statistic. The graph can be viewed in the developer area for your game, under 'stats'
@param [required] (object) options
	@option (string) name The name/key to associate this stat with
	@option (int) quantity  Defaults to 1 -- a value to associate with the stat
@example Clay.Stats.logStat( 'talkedToNPC', 1 );
*/
	public static function log(options:Dynamic):Void;
	
	public static function logStat(options:Dynamic):Void;
	
}
