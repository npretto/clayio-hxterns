package clay;

@:native("Clay.Events")
extern class Events
{
	public static function addEvent(type:Dynamic, listener:Dynamic, useObject:Dynamic, removeListener:Dynamic, obj:Dynamic, removeGroup:Dynamic):Void;
	
	public static function removeEvent(type:Dynamic, listener:Dynamic, useObject:Dynamic, obj:Dynamic):Void;
	
	public static function socketEmit(type:Dynamic, method:Dynamic, data:Dynamic, instanceId:Dynamic, callbackId:Dynamic):Void;
	
	public static function socketListen(type:Dynamic, listener:Dynamic, method:Dynamic, removeListener:Dynamic):Void;
	
	public static function socketRemove(type:Dynamic, listener:Dynamic):Void;
	
	public static function triggerEvent(name:Dynamic, element:Dynamic):Void;
	
}
