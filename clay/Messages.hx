package clay;

@:native("Clay.Messages")
extern class Messages
{
	/**Opens the UI to send a message
@param [optional] (object) options
	@option (int/string) to User ID, or Username of the sender.
	@option (string) message The message to send (will be filled into the textarea)
@example Clay.Messages.compose( { to: 'austin' } );
*/
	public static function compose(options:Dynamic, _callback:Dynamic):Void;
	
	/**Sends a message
@param [optional] (object) options
	@option (int/string) to User ID, or Username of the sender.
	@option (int) threadId ID of the thread. Defaults to creating a new thread
	@option (string) message The message to send
@example Clay.Messages.send( { to: austin, message: &quotTest&quot } );
*/
	public static function send(options:Dynamic, _callback:Dynamic):Void;
	
	public static function displayMessage(message:Dynamic, justNow:Dynamic):Void;
	
	public static function getTabs(currentTab:Dynamic):Void;
	
	public static function listen():Void;
	
	public static function modalOpen():Void;
	
	public static function sendCallback(obj:Dynamic, callbackId:Dynamic):Void;
	
	public static function show(options:Dynamic, _callback:Dynamic):Void;
	
	public static function showAll(options:Dynamic, _callback:Dynamic):Void;
	
	public static function showAllCallback(obj:Dynamic, callbackId:Dynamic):Void;
	
	public static function showCallback(obj:Dynamic, callbackId:Dynamic):Void;
	
}
