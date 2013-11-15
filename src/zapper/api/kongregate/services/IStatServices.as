package zapper.api.kongregate.services {
	public interface IStatServices {
		function gameStart():void;

		function submitArray(a:Array):void;

		function gameMute():void;

		function gameUnmute():void;

		function gamePause():void;

		function submit(a:String, a2:Number):void;

		function gameEnd():void;

		function gameUnpause():void;

		function gameBreak():void;
	}
}
