package zapper.api.kongregate.services {
	import flash.events.Event;

	import zapper.utils.Cuckoo;

	public class MicrotransactionServicesWrappedImpl extends Cuckoo implements IMicrotransactionServices {
		public function MicrotransactionServicesWrappedImpl(source:*) {
			super(source);
		}

		// IMicrotransactionServices
		public function requestItemList(a:Array, a2:Function):void {
		}

		public function purchaseItemsRemote(a:String, a2:Function):void {
		}

		public function purchaseItems(a:Array, a2:Function):void {
		}

		public function requestUserItemList(a:String, a2:Function):void {
		}

		public function showKredPurchaseDialog(a:String):void {
		}

		public function useItemInstance(a:Number, a2:Function):void {
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