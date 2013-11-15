package zapper.api.kongregate {
	import zapper.api.kongregate.services.IHighScoreServices;
	import zapper.api.kongregate.services.IKongregateServices;
	import zapper.api.kongregate.services.IStatServices;
	import zapper.api.kongregate.services.IUserServices;

	public interface IGameServices {
		function get scores():IHighScoreServices;

		function get user():IUserServices;

		function get stats():IStatServices;

		function get services():IKongregateServices;

		function get loaded():Boolean;

		function get connected():Boolean;

//		native public function init(a:flash.events.Event = null,a2:flash.display.Stage = null):void;
//		native public function get mtx():zapper.api.kongregate.services.IMicrotransactionServices;
//		native public function get sharedContent():zapper.api.kongregate.services.ISharedContentServices;

//		native public function get chat():zapper.api.kongregate.services.IChatServices;
//		native public function get events():Class;
	}
}