package clay;

@:native("Clay.Facebook")
extern class Facebook
{
	/**Connects with Facebook and lists the user's friends, allowing them to individually select friends to invite to play your game. 
Once they hit the &quotInvite&quot button, a message will be posted on their friends wall telling them about your game.
@param [required] (object) options
	@option (string) caption The message that is posted to the users wall (along with a link to your game and the game's description). By default this is &quotCome play GAMENAME with me!&quot
	@option (string) id DOM element id. If passed, the invite iframe will be put in that element. If not passed, it will be opened in the modal window.
@param [optional] (function) callback Called when at least one invite is successfully sent
@example Clay.Facebookinvite( { caption: &quotCome play me in this sweet game!&quot }, function() {
	console.log( &quotSuccessfully posted!&quot );
};
*/
	public static function invite(options:Dynamic, _callback:Dynamic):Void;
	
	/**Posts a new stream item to Facebook. The user must be logged into Clay, and has granted your game
permission to post to their Facebook stream. If the user is either not logged in, or hasn't granted
permission, Clay.io will take care of all of that for you.
@param [required] (object) options You can pass any any of the options listed [here](http://developers.facebook.com/docs/reference/rest/stream.publish/)
	@option (string) message A message to post (note, not all options are listed here, be sure to see the Facebook API docs linked to above)
	@option (boolean) editable If set to true, the user will be able to edit the message they are posting
@param [optional] (function) callback
	@arg (object) response
		@property (bool) success true if stream message was posted, false otherwise
		@property (truthy) error Boolean false if no error, String error message if error
@example ( new Clay.Facebook() ).post( { message: &quotTesting!&quot }, function( response ) {
	if( !response.success )
		console.log( &quotError: &quot + response.error );
};
*/
	public function post(options:Dynamic, _callback:Dynamic):Void;
	
	/**There are no arguments to pass in the constructor
*/
	public function new():Void;
	
}
