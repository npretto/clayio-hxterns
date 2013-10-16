package clay;

@:native("Clay.Social")
extern class Social
{
	public function connect(use:Dynamic, _callback:Dynamic):Void;
	
	public function post(options:Dynamic, _callback:Dynamic):Void;
	
	public function postCallback(obj:Dynamic, callbackId:Dynamic):Void;
	
	public function requestPermission(obj:Dynamic, callbackId:Dynamic):Void;
	
}
