package zapper.api.kongregate.services {
	import flash.events.IEventDispatcher;

	public interface IMicrotransactionServices extends IEventDispatcher {
		function requestItemList(a:Array, a2:Function):void;

		function purchaseItemsRemote(a:String, a2:Function):void;

		function purchaseItems(a:Array, a2:Function):void;

		function requestUserItemList(a:String, a2:Function):void;

		function showKredPurchaseDialog(a:String):void;

		function useItemInstance(a:Number, a2:Function):void;
	}
}
