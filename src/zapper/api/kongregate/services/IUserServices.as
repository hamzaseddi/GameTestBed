package zapper.api.kongregate.services {
	public interface IUserServices {
		function getName():String;

		function getSessionStamp():String;

		function getPlayerInfo(a:Function):void;
	}
}
