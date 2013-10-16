package clay;

@:native("Clay.Suggestions")
extern class Suggestions
{
	/**Call to open the suggestions modal. The game suggestions modal displays 3 recommended games. Each time one is clicked you earn credits that will get you clicks to your game from others. More info [here](http://clay.io/docs/suggestions)
@param [required] (object) options
	@option (int) id DOM element id. If passed, the rating iframe will be put in that element. If not passed, it will be opened in the modal window.
@example new Clay.Suggestions()
*/
	public function new(options:Dynamic):Void;
	
}
