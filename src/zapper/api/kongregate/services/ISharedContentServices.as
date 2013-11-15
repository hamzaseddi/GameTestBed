package zapper.api.kongregate.services {
	import flash.display.DisplayObject;

	public interface ISharedContentServices {
		function browse(a:String, a2:String = null, a3:String = null):void;

		function addLoadListener(a:String, a2:Function):void;

		function save(a:String, a2:String, a3:Function, a4:DisplayObject = null, a5:String = null):void;
	}
}
