package clay;

@:native("Clay.Screenshot")
extern class Screenshot
{
	/**Instantiates the Screenshot object and starts the flow unless you specify otherwise
@param [optional] (object) options
	@option (boolean) prompt Set to false if you don't want the Screenshot flow to start when instantiating (ie you want to do something with the screenshot in the background)
@example new Clay.Screenshot();
*/
	public function new(options:Dynamic, _callback:Dynamic):Void;
	
	/**Manually call the prompt modal to show (prompts a user to save screenshot to Clay.io)
*/
	public function prompt(_callback:Dynamic):Void;
	
	/**Manually saves a screenshot to the Clay.io server (and is associated with the user's account)
@param [optional] (object) options
	@option (string) id By default, we select the first canvas on the page to take a screenshot of -- you can specify a different canvas by passing the DOM id
	@option (boolean) prompt Set to false if you don't want the Screenshot flow to start when instantiating (ie you want to do something with the screenshot in the background)
	@option (boolean) hideUI Set false if you don't want the notification to show
@param [optional] (function) callback Called when response is received from server
	@arg (object) response
		@property (bool) success true if the screenshot was successfully posted, false otherwise
		@property (truthy) error Boolean false if no error, String error message if error
		@property (string) url URL pointing to the screenshot page on Clay.io
		@property (string) imageSrc Direct URL to the image
@example ( new Clay.Screenshot() ).save( function( response ) {
	console.log( response );
} );
*/
	public function save(options:Dynamic, _callback:Dynamic):Void;
	
	public function saveCallback(obj:Dynamic, callbackId:Dynamic):Void;
	
}
