package zapper.api.kongregate.services {
	import flash.events.Event;

	import zapper.utils.Cuckoo;

	public class KongregateServicesWrappedImpl extends Cuckoo implements IKongregateServices {
		public function KongregateServicesWrappedImpl(source:*) {
			super(source);
		}

		// IKongregateServices
		public function setConnection(a:*):void {
		}

		public function connect(a:Number = -1):Boolean {
			return false;
		}

		public function getPlayerInfo(a:Function):void {
		}

		public function setMultiplayerConnection(a:String, a2:*, a3:Object):void {
		}

		// IEventDispatcher
		public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false):void {
		}

		public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false):void {
		}

		public function dispatchEvent(event:Event):Boolean {
			return false;
		}

		public function hasEventListener(type:String):Boolean {
			return false;
		}

		public function willTrigger(type:String):Boolean {
			return false;
		}
	}
}
