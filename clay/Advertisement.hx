package clay;

@:native("Clay.Advertisement")
extern class Advertisement
{
	/**Call to hide the advertisement
*/
	public function hide():Void;
	
	/**Call to load a new advertisement in the same place. Works once every 30 seconds max
*/
	public function refresh():Void;
	
	/**Call to show the advertisement
*/
	public function show():Void;
	
	/**Creates and displays an advertisement
@param [required] (object) options
	@option [optional] (string) size Size of the ad. Choose from '160x600', '728x90', '300x250', '120x600', '200x200', '468x60', '125x125'
	@option [optional] (object) position Positioning for the ad. Pass two of the properties: `left`, `right`, `top`, `bottom`. 
														Pass a static number for pixels, or a relative number followed by a %
														Passing 'center' as the `reference` property, with `left: 50%`, `top: 50%` will center the ad
														The `parent` property defaults to document, but can be set to a DOM element to position relative to the canvas
	@option [optional] (integer) refreshInterval Number of seconds to refresh the ad after. Must be a value greater than 30 seconds
	@option [optional] (string) devices Select the devices the ad should show on. Options are: 'all', 'mobile', and 'desktop'
	@option [optional] (boolean) display Defaults to true, if set to false, the advertisement won't be displayed until the &quotshow&quot method is called
@example new Clay.Advertisement( { size: '125x125', position: { left: 50%, top: 50% } } );
*/
	public function new(options:Dynamic):Void;
	
	/**Move the advertisement after you've intiated it
@param [required] (object) position Positioning for the ad. Pass two of the properties: `left`, `right`, `top`, `bottom`. 
														Pass a static number for pixels, or a relative number followed by a %
														Passing 'center' as the `reference` property, with `left: 50%`, `top: 50%` will center the ad
														The `parent` property defaults to document, but can be set to a DOM element to position relative to the canvas
@example advertisement.setPosition( { left: 50%, top: 50% } );
*/
	public function setPosition(position:Dynamic):Void;
	
	public function checkFormat():Void;
	
	public function getOffset(el:Dynamic):Void;
	
	public function parsePosition():Void;
	
	public function setRefreshInterval(seconds:Dynamic):Void;
	
	public function updatePosition():Void;
	
}
