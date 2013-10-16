package clay;

@:native("Clay.Twitter")
extern class Twitter
{
	/**Posts a Tweet. The user must be logged into Clay, and has granted your game
permission to post to their Twitter Account. If the user is either not logged in, or hasn't granted
permission, Clay.io will take care of all of that for you.
@param [required] (object) options
	@option (boolean) editable If set to true, the user will be able to edit the message they are posting
	@option (string) message A <= 140 character long message to tweet
@param [optional] (function) callback
	@arg (object) response
		@property (bool) success true if tweet was posted, false otherwise
		@property (truthy) error Boolean false if no error, String error message if error
@example ( new Clay.Twitter() ).post( { message: &quotTesting!&quot, function( response ) {
	if( !response.success )
		console.log( &quotError: &quot + response.error );
};
*/
	public function post(options:Dynamic, _callback:Dynamic):Void;
	
	/**There are no arguments to pass in the constructor
*/
	public function new():Void;
	
}
