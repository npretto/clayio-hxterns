package clay;

@:native("Clay.Stream")
extern class Stream
{
	/**Posts a message to the user's Clay.io stream. They must be logged in for this to work. A login flow
is brought up if they are not logged in
@param [required] (object) options
	@option (string) message The stream message to post
	@option (boolean) editable If set to true, the user will be able to edit the message they are posting
@param [optional] (function) callback
	@arg (object) response
		@property (bool) success true if message was posted, false otherwise
		@property (truthy) error Boolean false if no error, String error message if error
@example ( new Clay.Stream() ).post( { message: &quotTesting!&quot, function( response ) {
	if( !response.success )
		console.log( &quotError: &quot + response.error );
};
*/
	public function post(options:Dynamic, _callback:Dynamic):Void;
	
	public function new():Void;
	
	public function postCallback(obj:Dynamic, callbackId:Dynamic):Void;
	
}
