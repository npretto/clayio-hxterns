package clay;

@:native("Clay.Leaderboard")
extern class Leaderboard
{
	/**@param [required] (object) options
	@option (int) id Integer leaderboard ID. Given in developer dashboard for game after creating the leaderboard
	@option (string) jwt JSON Web Token (hashed object) if you have the encryption option on for your game
	@option (array) tabs An array of tab objects (a tab object can contain any of the options a typical leaderboard contains: id, data, filter, etc)
	@option (string) html Custom HTML to show at the top of the leaderboard modal
	@option (int) recent Specify an integer of seconds in the past to display scores from. ex. 3600 would show the last hour of scores
	@option (array) filter An array of filters, similar to tabs, but can specify just a string for certain time intervals. ex. ['day', 'month', { title: &quotCustom Interval&quot, recent: 7200 }]
	@option (int) limit How many scores to show
	@option (boolean) self Shows only scores by the person viewing the leaderboard if set to true
	@option (boolean) friends Shows only scores by the friends of the person viewing the leaderboard if set to true
	@option (boolean) cumulative Sums up all scores per unique person over the given interval
	@option (boolean) showPersonal Displays personal stats like their best rank and score
@example new Clay.Leaderboard( { id: 1, tabs: [{ id: 2 }] } );
*/
	public function new(options:Dynamic):Void;
	
	/**Hides the leaderboard modal
@example leaderboard.hide();
*/
	public function hide():Void;
	
	/**Posts a score the this leaderboard object
@param [required] (object) options
	@option (int) score
	@option (string) name - If a name is passed, it will be used in the name column. Otherwise Clay.io will request login/their name to use (if not logged in)
	@option (boolean) hideUI - if set to true, the leaderboard posted notification will not show
@param [optional] (function) callback
	@arg (object) response
		@property (bool) success true if score was posted, false otherwise
		@property (truthy) error Boolean false if no error, String error message if error
@example ( new Clay.Leaderboard( { id: 1 } ) ).post( { score: 500 }, function( response ) { ... } );
*/
	public function post(options:Dynamic, _callback:Dynamic):Void;
	
	/**Retrieves an array of leaderboard objects (name, score)
If getRank is set to true, the response is an object with { data: [objects], rank: { rank: int, row: object } }
@param [required] (object) options If you pass these in the constructor, you don't need to again here
	@option (int) id Integer leaderboard ID. Given in developer dashboard for game after creating the leaderboard
	@option (int) recent Specify an integer of seconds in the past to fetch scores from. ex. 3600 would return the last hour of scores
	@option (int) limit How many scores to show
	@option (boolean) self Returns only scores by the person viewing the leaderboard if set to true
	@option (boolean) friends Returns only scores by the friends of the person viewing the leaderboard if set to true
	@option (boolean) cumulative Sums up all scores per unique person over the given interval
	@option (boolean) getRank If true, this method returns an object instead of an array. The object consists of the data property that is the array of score objects, and a rank object that contains an integer rank property, and an object row property holding score and name
@example ( new Clay.Leaderboard( { id: 1 } ) ).fetch();
*/
	public function fetch(options:Dynamic, _callback:Dynamic):Void;
	
	/**Sets tabs for the leaderboard
@param [required] (object) options
	@option (array) An array of tabs objects
*/
	public function setTabs(options:Dynamic):Void;
	
	/**Show the leaderboard modal window
@param [required] (object) options If you pass these in the constructor, you don't need to again here
	@option (int) id Integer leaderboard ID. Given in developer dashboard for game after creating the leaderboard
	@option (array) tabs An array of tab objects (a tab object can contain any of the options a typical leaderboard contains: id, data, filter, etc)
	@option (string) html Custom HTML to show at the top of the leaderboard modal
	@option (string) sort Accepts 'asc' or 'desc' to sort the scores either ascending or descending
	@option (int) recent Specify an integer of seconds in the past to display scores from. ex. 3600 would show the last hour of scores
	@option (array) filter An array of filters, similar to tabs, but can specify just a string for certain time intervals. ex. ['day', 'month', { title: &quotCustom Interval&quot, recent: 7200 }]
	@option (int) limit How many scores to show
	@option (boolean) self Shows only scores by the person viewing the leaderboard if set to true
	@option (boolean) friends Shows only scores by the friends of the person viewing the leaderboard if set to true
	@option (boolean) cumulative Sums up all scores per unique person over the given interval
	@option (boolean) showPersonal Displays personal stats like their best rank and score
@example ( new Clay.Leaderboard( { id: 1 } ) ).show();
*/
	public function show(options:Dynamic, _callback:Dynamic):Void;
	
	public function challenge(obj:Dynamic, _callback:Dynamic):Void;
	
	public function directLinkCallback(obj:Dynamic):Void;
	
	public function display(obj:Dynamic, callbackId:Dynamic):Void;
	
	public function getTable(obj:Dynamic):Void;
	
	public function postCallback(obj:Dynamic, callbackId:Dynamic):Void;
	
	public function postChallenge():Void;
	
	public function removeEntry(options:Dynamic):Void;
	
	public function removeEntryCallback(obj:Dynamic):Void;
	
	public function requestFacebook(obj:Dynamic):Void;
	
	public function returnJSON(obj:Dynamic, callbackId:Dynamic):Void;
	
	public function setData(options:Dynamic):Void;
	
	public function setTab(options:Dynamic):Void;
	
	public function setTabCallback(obj:Dynamic):Void;
	
	public function share(obj:Dynamic):Void;
	
}
