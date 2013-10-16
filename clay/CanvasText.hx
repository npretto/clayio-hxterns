package clay;

@:native("Clay.canvasText")
extern class CanvasText
{
	public function destroy():Void;
	
	public function focus():Void;
	
	public function keyDown(e:Dynamic):Void;
	
	public function mapKeyPressToActualCharacter(isShiftKey:Dynamic, characterCode:Dynamic):Void;
	
	public function mouseMove(e:Dynamic):Void;
	
	public function new(canvas:Dynamic, options:Dynamic):Void;
	
	public function unfocus():Void;
	
}
