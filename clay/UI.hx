package clay;

@:native("Clay.UI")
extern class UI
{
	/**@return (object) DOM document 'height' and 'width' in pixels
*/
	public static function getDocumentSize():Void;
	
	/**@return (object) Window 'height' and 'width' in pixels
*/
	public static function getWindowSize():Void;
	
	/**Adds an element to the clay container div
@param [required] (string) id DOM id assigned to wrapper (it's assigned as &quotclay-&quot + type + &quot-&quot + id)
*/
	public static function addToContainer(html:Dynamic, _callback:Dynamic, DOMid:Dynamic):Void;
	
	/**Closes a notification
@param [required] (string) id DOM id assigned to wrapper (it's assigned as &quotclay-&quot + type + &quot-&quot + id)
*/
	public static function closeNotification(id:Dynamic):Void;
	
	/**Closes all Clay.io UI elements
*/
	public static function closeAllUI():Void;
	
	/**Closes the most recently opened modal window, or the id passed in options
@param [optional] (object) options
	@option (string) id The DOM id of the modal to close (ex. clay-login-wrapper)
*/
	public static function closeModal(id:Dynamic, callEvent:Dynamic):Void;
	
	/**Creates and displays a modal window
@param [required] (object) options
	@option (string) title Title of modal window
	@option (string) html HTML for the inner content
	@option (string) id DOM id to give the wrapper element
@example Clay.UI.createModal( { title: 'Title', html: &quot<div>Here's some HTML</div>&quot } )
*/
	public static function createModal(options:Dynamic, _callback:Dynamic):Void;
	
	/**Creates and displays a notification message (this is used for things like achievements).
@param [required] (object) options
	@option (string) title Title of notification
	@option (string) html HTML for the inner content
	@option (truthy) icon Boolean false if no icon, URL to icon if you want to specify one
	@option (string) type We use two values, 'notification'|'achievement' -- the style differs a bit between the two. Classes are set with the type (ex. &quotclay-&quot + type)
	@option (string) id DOM id to assign to wrapper (it's assigned as &quotclay-&quot + type + &quot-&quot + id). Defaults to 'notification'
	@option (int) delay Notification will be closed after delay ms. Set to 0 to not close at all
@example Clay.UI.createNotification( { title: 'Title', html: &quot<div>Here's some HTML</div>&quot } )
*/
	public static function createNotification(options:Dynamic):Void;
	
	/**Returns the number of Clay.io modals that are currently open
@return (int) number of modals open
*/
	public static function modalsOpen():Void;
	
	/**Returns the number of Clay.io notifications that are currently open
@return (int) number of notifications open
*/
	public static function notificationsOpen():Void;
	
	/**Updates a modal window
@param [required] (object) options
	@option (string) title Title of modal window
	@option (string) html HTML for the inner content
	@option (string) id DOM id to give the wrapper element
@example Clay.UI.updateModal( { title: 'Title', html: &quot<div>Here's some HTML</div>&quot } )
*/
	public static function updateModal(options:Dynamic, _callback:Dynamic):Void;
	
	public static function centerModal(id:Dynamic):Void;
	
	public static function error(error:Dynamic, id:Dynamic):Void;
	
	public static function getTabsHTML(tabs:Dynamic, id:Dynamic):Void;
	
	public static function handleEvents(events:Dynamic):Void;
	
	public static function hidePopupNotifier(site:Dynamic):Void;
	
	public static function insertIframe(iframe:Dynamic, contentInner:Dynamic):Void;
	
	public static function removeElement(element:Dynamic):Void;
	
	public static function setCanvas(canvas:Dynamic, _callback:Dynamic):Void;
	
	public static function showPopupNotifier(site:Dynamic):Void;
	
}
