package clay;

@:native("Clay.Ratings")
extern class Ratings
{
	/**Call to open the ratings modal. The ratings modal lets users rate and comment on your game.
@param [required] (object) options
	@option (int) id DOM element id. If passed, the rating iframe will be put in that element. If not passed, it will be opened in the modal window.
@example new Clay.Ratings()
*/
	public function new(options:Dynamic):Void;
	
}
