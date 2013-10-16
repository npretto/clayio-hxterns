package clay;

@:native("Clay.canvasInput")
extern class CanvasInput
{
	public function click(e:Dynamic):Void;
	
	public function destroy():Void;
	
	public function focus():Void;
	
	public function inBox(x:Dynamic, y:Dynamic):Void;
	
	public function new(options:Dynamic):Void;
	
	public function refresh():Void;
	
	public function unfocus():Void;
	
}
