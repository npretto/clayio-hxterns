package clay;

@:native("Clay.Payment")
extern class Payment
{
	/**Adds an item to the user's cart
@param [required] (object) options
	@option (int) id Item ID. Given in developer dashboard for game after creating the item
@param [optional] (function) callback called when item has been added to cart
	@arg (object) response
		@property (bool) success true if item was successfuly added, false otherwise
		@property (truthy) error Boolean false if no error, String error message if error
@example (new Clay.Payments()).addItem( { id: 1 }, function( response )
{
	console.log( response );
}
*/
	public function addItem(options:Dynamic, _callback:Dynamic):Void;
	
	/**Fetches the ids of items the user playing your game 'owns'
@return (array) items Array of item ids. Ex. [1, 5, 6, 7]
*/
	public function getItemIds():Void;
	
	/**Initiates the checkout sequence within Clay.io where the user is asked to confirm the purchase, then directed through the payment processors
@param [optional] (object) options
	@option (string) id Specify if you do not want to use the standard Clay.io UI. Pass the DOM element ID you want the payment box to go in
@param [optional] (function) callback Called when either purchase has successfully gone through, or if there was an error/canceled process
	@arg (object) response
		@property (bool) success True if the user went through the whole process without generating an error
		@property (truthy) error Boolean false if no error, String error message if error
		@property (string) status Info about the payments current status (ex. pending) - this still needs to be normalized on our end. Give us a nudge if we haven't done it yet
		@property (bool) completed Boolean if the payment was approved right away or not
		@property (array) itemIds Array of Integers: The items they ended up purchasing - this could be different than the items you pass since they can optionally remove items
*/
	public function checkout(options:Dynamic, _callback:Dynamic):Void;
	
	/**Removes an item from the users cart. If the quantity is greater than one, it just reduces the quantity by 1
@param [required] (object) options
	@option (int) id Item ID. Given in developer dashboard for game after creating the item
*/
	public function removeItem(options:Dynamic):Void;
	
	public function addCustomItem(obj:Dynamic, _callback:Dynamic):Void;
	
	public function addItemStore(obj:Dynamic, callbackId:Dynamic):Void;
	
	public function getItemsForURL():Void;
	
	public function new():Void;
	
	public function pay(_callback:Dynamic):Void;
	
	public function paymentCallback(json:Dynamic, _callback:Dynamic):Void;
	
}
