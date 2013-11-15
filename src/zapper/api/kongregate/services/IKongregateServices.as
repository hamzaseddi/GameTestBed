package zapper.api.kongregate.services {
	import flash.events.IEventDispatcher;

	public interface IKongregateServices extends IEventDispatcher {
		function setConnection(a:*):void;

		function connect(a:Number = -1):Boolean;

		function getPlayerInfo(a:Function):void;

		function setMultiplayerConnection(a:String, a2:*, a3:Object):void;
	}
}
