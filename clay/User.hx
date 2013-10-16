package clay;

@:native("Clay.User")
extern class User
{
	/**@return (boolean) installed If the user has &quotinstalled&quot (or purchased if it's not a free game) the game or not
*/
	public function hasInstalled():Void;
	
	/**Called when the user is logged in (and we have a name for them)
@param [optional] (function) callback Called when the user has logged in (or entered their name)
	@arg (object) response
		@property (string) identifier A unique identifier associated with the user

*/
	public function onUserReady(_callback:Dynamic):Void;
	
	/**Does a check if they're logged in - calls the callback if they are, 
forces them to login if they aren't (then calls the callback after login)
Use this for anything is your game where you need the user to be logged in
@param [required] (function) callback Called immediately if the user is logged in, or where they login otherwise
@param [optional] (boolean) requireLoggedIntoClay Set true if you only want this called if they are logged into a clay.io account (ie they aren't anonymously 'logged in' with just their name)
*/
	public function requireLogin(_callback:Dynamic, reqLoggedIntoClay:Dynamic):Void;
	
	/**Gives the player a custom name, instead of Anonymous if they're not logged into Clay.io. By default, the user is able to choose this in the Clay login modal
@param [required] (string) username The name you want to give them (will show up on things like leaderboards)
*/
	public function setUsername(username:Dynamic):Void;
	
	/**Grabs all the items this player has in your game
@param [required] (function) callback
	@arg (array) items An array of item ids they have
*/
	public function fetchItems(_callback:Dynamic):Void;
	
	/**Grabs the specified saved user data from the server
Usage: User.fetchUserData('level1Score', function( repsonse) { console.log( response.data ); } )  ... $ '51000'
@param (string) key the key specifying the data you'd like to fetch
@param [optional] (function) callback Called when user data is received from server
	@arg (object) response Contains response data
		@option (string) error null if no error
		@option (multi) data contains the data you just requested
		@option (string) key contains the key that you just requested data for
*/
	public function fetchUserData(key:Dynamic, _callback:Dynamic):Void;
	
	/**Grants the user an item (created in the developer dashboard for your game)
@param [optional] (object) options
	@option (int) id The item's id (given to you after creating it)
	@option (int) quantity How many of the item you want to give
@param [optional] (function) callback Called when item is granted
	@arg (array) response An object with the following properties
		@property (int) id The item's id
		@property (int) quantity How many were given
*/
	public function grantItem(options:Dynamic, _callback:Dynamic):Void;
	
	/**If this isn't a free game, let them buy the game from within your game
This is equivalent to adding an item with type: 'game', id: gameID, and calling checkout
@param [optional] (function) callback Called when either purchase has successfully gone through, or if there was an error/canceled process
	@arg (object) response
		@property (bool) success True if the user went through the whole process without generating an error
		@property (truthy) error Boolean false if no error, String error message if error
		@property (string) status Info about the payments current status (ex. pending) - this still needs to be normalized on our end. Give us a nudge if we haven't done it yet
		@property (bool) completed Boolean if the payment was approved right away or not
		@property (array) itemIds Array of Integers: The items they ended up purchasing - this could be different than the items you pass since they can optionally remove items
*/
	public function purchaseGame(_callback:Dynamic):Void;
	
	/**Manually triggers the flow for a user to login, signup, or enter their name within the modal window
@param [optional] (object) options
	@option (string) id Specify if you do not want to use the standard Clay.io UI. Pass the DOM element ID you want the login box to go in
	@option (bool) signup If set to true, the signup tab is opened initially (rather than login)
@param [optional] (function) callback Called when either the login was successful, or if there was an error/canceled process
	@arg (object) response
		@property (bool) success True if the user logged in successfully
		@property (truthy) error Boolean false if no error, String error message if error
@param [optional] (boolean) signup If set to true, the signup tab is opened initially (rather than login)
*/
	public function login(options:Dynamic, _callback:Dynamic, signup:Dynamic):Void;
	
	/**Manually triggers the flow for a user to login, signup, or enter their name within the modal window
@param [optional] (object) options
	@option (string) id Specify if you do not want to use the standard Clay.io UI. Pass the DOM element ID you want the logout box to go in
@param [optional] (function) callback Called when either the logout was successful, or if there was an error/canceled process
	@arg (object) response
		@property (bool) success True if the user logged out successfully
		@property (truthy) error Boolean false if no error, String error message if error
*/
	public function logout(options:Dynamic, _callback:Dynamic):Void;
	
	/**Manually triggers the flow for a user to signup, within the modal window. Alias for Clay.Player.login( callback, true );
@param [optional] (function) callback Called when either the login was successful, or if there was an error/canceled process
	@arg (object) response
		@property (bool) success True if the user signed up in successfully
		@property (truthy) error Boolean false if no error, String error message if error
*/
	public function signup(options:Dynamic, _callback:Dynamic):Void;
	
	/**Removes an item from the player's inventory
@param [optional] (object) options
	@option (int) id The item's id (given to you after creating it)
	@option (int) quantity How many of the item you want to remove - pass 'all' to remove all of this item
@param [optional] (function) callback Called when item is removed
	@arg (array) response An object with the following properties
		@property (int) id The item's id
		@property (int) quantity How many were removed
*/
	public function removeItem(options:Dynamic, _callback:Dynamic):Void;
	
	/**Saves the specified saved user data to the server
Note: you cannot save data under the keys &quotuser&quot, &quotgame&quot, or &quot_id&quot
Usage: User.saveUserData('level1Score', '51000', function( response ) { console.log( response.success ); }  ... $ true
@param (string) key the key that you'd like to save the data to
@param (object) data JSON-safe data for saving
@param [optional] (function) callback Called when user data is saved
	@arg (object) response Contains response data
		@option (string) error null if no error
		@option (boolean) success true if data successfully saved
		@option (multi) data contains the data you just saved
		@option (string) key contains the key that you just saved data under
*/
	public function saveUserData(dataKey:Dynamic, data:Dynamic, _callback:Dynamic):Void;
	
	public function canvasLogin():Void;
	
	public function canvasSignup():Void;
	
	public function doLogin(obj:Dynamic):Void;
	
	public function fetchItemsCallback(data:Dynamic, callbackId:Dynamic):Void;
	
	public function fetchUserDataCallback(response:Dynamic, callbackId:Dynamic):Void;
	
	public function getName():Void;
	
	public function grantItemCallback(data:Dynamic, callbackId:Dynamic):Void;
	
	public function hasRated():Void;
	
	public function new():Void;
	
	public function removeItemCallback(data:Dynamic, callbackId:Dynamic):Void;
	
	public function saveUserDataCallback(response:Dynamic, callbackId:Dynamic):Void;
	
	public function sendLogin(json:Dynamic):Void;
	
	public function setLoginTab(tab:Dynamic):Void;
	
	public function showLoginCanvas():Void;
	
	public function showSignupCanvas():Void;
	
	public function signupCallback(obj:Dynamic):Void;
	
	public function socketListen():Void;
	
	public static function fetchUserDataLocal(key:Dynamic, _callback:Dynamic):Void;
	
	public static function storeUserData(dataKey:Dynamic, data:Dynamic, _callback:Dynamic):Void;
	
}
