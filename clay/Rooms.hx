package clay;

@:native("Clay.Rooms")
extern class Rooms
{
	/**Allows you to manually create the room (the modal flow provides all of this for a user, so this is just if you want to manually create one)
@param [optional] (object) options
	@option (string) name The name of the room. If left blank, it grabs the value from the rooms text field
@param [optional] (function) callback Called when room is created
	@arg room (array) An object with the following properties
		@property (int) count Number of players currently in the room
		@property (int) id Unique ID of the room
		@property (int) max The maximun number of users allowed in the room
		@property (array) members Array of objects with the property *name* being their name
		@property (string) name The name of the room 
*/
	public function createRoom(options:Dynamic, _callback:Dynamic):Void;
	
	/**Allows you to manually have a user join a room
@param [optional] (object) options
	@option (int) id The ID of the room for them to join
@param [optional] (function) callback Called when room is joined
	@arg room (array) An object with the following properties
		@property (int) count Number of players currently in the room
		@property (int) id Unique ID of the room
		@property (int) max The maximun number of users allowed in the room
		@property (array) members Array of objects with the property *name* being their name
		@property (string) name The name of the room 
*/
	public function joinRoom(options:Dynamic, _callback:Dynamic):Void;
	
	/**Allows you to manually remove a user from a room
@param [optional] (object) options
	@option (int) id The ID of the room for them to join
@param [optional] (function) callback Called when room is joined
	@arg (object) response
		@property (bool) success true if the user was successfully removed from the room, false otherwise
		@property (truthy) error Boolean false if no error, String error message if error
*/
	public function leaveRoom(_callback:Dynamic):Void;
	
	/**Fetches an array of all rooms currently created
@return (array) Array of all non-full rooms. Each array element contains objects with the following properties
	@property (int) count Number of players currently in the room
	@property (int) id Unique ID of the room
	@property (int) max The maximun number of users allowed in the room
	@property (array) members Array of objects with the property *name* being their name
	@property (string) name The name of the room 
*/
	public function getRooms():Void;
	
	/**Instantiates the Rooms object
@param [optional] (object) options
	@option (function) fullCallback Called when a room is full (for any user)
	@option (function) callback Called when rooms are first fetched
	@arg (object) response
		@property (bool) success true if the room was successfully created, false otherwise
		@property (truthy) error Boolean false if no error, String error message if error
		@property (int) id A unique ID of the room that was created, starting from 0
		@property (int) count The number of people in the room
		@property (int) max The maximum number of players allowed in a room (specified in Developer Game Settings)
		@property (object) instance A reference to the Clay.Rooms instance (so you can use response.instance.leaveRoom() if you'd like)
		@property (string) name The name created by a user for the room
*/
	public function new(options:Dynamic):Void;
	
	/**Shows the rooms list modal
@param [optional] (function) callback Called when the rooms modal is done loading
	@arg rooms (array) Array of all non-full rooms. Each array element contains objects with the following properties
		@property (int) count Number of players currently in the room
		@property (int) id Unique ID of the room
		@property (int) max The maximun number of users allowed in the room
		@property (array) members Array of objects with the property *name* being their name
		@property (string) name The name of the room 
*/
	public function show(_callback:Dynamic):Void;
	
	public function createRoomCallback(obj:Dynamic, callbackId:Dynamic):Void;
	
	public function fetchCallback(obj:Dynamic, callbackId:Dynamic):Void;
	
	public function getRoomTd(obj:Dynamic, inRoom:Dynamic, tr:Dynamic, returnHTML:Dynamic):Void;
	
	public function joinRoomCallback(obj:Dynamic, callbackId:Dynamic):Void;
	
	public function leaveRoomCallback(obj:Dynamic, callbackId:Dynamic):Void;
	
	public function refresh(obj:Dynamic):Void;
	
	public function refreshTd(id:Dynamic, inRoom:Dynamic):Void;
	
	public function roomFull(obj:Dynamic):Void;
	
	public function setFullCallback(fullCallback:Dynamic):Void;
	
}
