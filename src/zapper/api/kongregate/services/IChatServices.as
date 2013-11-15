package zapper.api.kongregate.services {
	public interface IChatServices {
		function positionCanvasObject(a:String, a2:Object):void;

		function displayCanvasImage(a:String, a2:String, a3:Object):void;

		function removeCanvasObject(a:String):void;

		function displayMessage(a:String, a2:String):void;

		function displayCanvasText(a:String, a2:String, a3:Object, a4:Object):void;

		function showSignInBox():void;

		function addEventListener(a:String, a2:Function, a3:Boolean = false, a4:int = 0, a5:Boolean = false):void;

		function getCanvasSize():Object;

		function showTab(a:String, a2:String, a3:Object = null):void;

		function clearMessages():void;

		function drawCanvasObject(a:String, a2:Array):void;

		function closeTab():void;
	}
}