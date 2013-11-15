package zapper.api.kongregate.services {
	public interface IHighScoreServices {
		function submit(a:Number, a2:String = null):void;

		function setMode(a:String):void;

		function requestList(a:Function):void;
	}
}
