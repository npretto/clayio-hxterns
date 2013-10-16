package clay;

@:native("Clay.Achievement")
extern class Achievement
{
	/**@param [required] (object) options
	@option (int) id Integer achievement ID. Given in developer dashboard for game after creating the achievement
	@option (string) jwt JSON Web Token (hashed object) if you have the encryption option on for your game
@example new Clay.Achievement( { id: 1 } );
*/
	public function new(options:Dynamic):Void;
	
	/**Awards this object's achievement to a user. If they aren't logged into a Clay.io account,
it is stored with their IP Address and granted to them when they signup.
@param [optional] (function) callback
	@arg (object) response
		@property (bool) success true if achievement awarded, false otherwise
		@property (truthy) error Boolean false if no error, String error message if error
		@property (string) title Title of the achievement that was awarded
		@property (string) description Description of the achievement that was awarded
		@property (int) points The amount of points the achievement is worth
		@property (truthy) icon False if no icon specified (in developer dashboard) or the full URL to the icon if it was specified 
		@property (boolean) showExternally This is false if you set the option (in developer dashboard) to hide achievements when not playing from the Clay subdomain, true otherwise
@example ( new Clay.Achievement( { id: 1 } ) ).award( function( response ) {
	if( response.success )
		console.log( response.title + &quot: &quot response.description )
	else
		console.log( &quotError: &quot + response.error );
};
*/
	public function award(_callback:Dynamic):Void;
	
	/**Fetches all the achievements you've created for this game, and if the player has earned them or not.
This is good motivation for users to try and get the remaining achievements
@param [optional] (object) options - none to specify yet
@param [optional] (function) callback
		@arg (object) response
			@property (bool) success true if achievement awarded, false otherwise
			@property (truthy) error Boolean false if no error, String error message if error
			@property (string) title Title of the achievement that was awarded
		
@example Clay.Achievement.fetchAll( {}, function( response ) {
	console.log( response );
} );
*/
	public static function showAll(options:Dynamic, _callback:Dynamic):Void;
	
	/**Grabs an object of all the achievements you've created for this game, and if the player has earned them or not.
@param [optional] (object) options - none to specify yet
@param [optional] (function) callback
		@arg (object) response
			@property (bool) success true if achievement awarded, false otherwise
			@property (truthy) error Boolean false if no error, String error message if error
			@property (string) title Title of the achievement that was awarded
@example Clay.Achievement.fetchAll();
*/
	public static function fetchAll(options:Dynamic, _callback:Dynamic):Void;
	
	public function requestFacebook(obj:Dynamic):Void;
	
	public function show(obj:Dynamic, callbackId:Dynamic):Void;
	
	public static function fetchAllCallback(obj:Dynamic, callbackId:Dynamic):Void;
	
	public static function showAllCallback(obj:Dynamic, callbackId:Dynamic):Void;
	
}
