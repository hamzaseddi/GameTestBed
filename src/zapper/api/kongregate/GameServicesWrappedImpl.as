/**
 * Simple class for wrapping the kongregate api
 * mainly for testing and code completion purposes
 *
 * costs a little each api cost because of reflection,
 * but it's a tiny cost so don't worry
 * unless your doing this in a game loop or something silly
 *
 * User: Anthony Mckale <anthony@zapper.hodgers.com>
 * Date: 15/11/13
 */
package zapper.api.kongregate {
	import zapper.api.kongregate.services.ChatServicesWrappedImpl;
	import zapper.api.kongregate.services.HighScoreServicesWrappedImpl;
	import zapper.api.kongregate.services.IChatServices;
	import zapper.api.kongregate.services.IHighScoreServices;
	import zapper.api.kongregate.services.IKongregateServices;
	import zapper.api.kongregate.services.IMicrotransactionServices;
	import zapper.api.kongregate.services.ISharedContentServices;
	import zapper.api.kongregate.services.IStatServices;
	import zapper.api.kongregate.services.IUserServices;
	import zapper.api.kongregate.services.KongregateServicesWrappedImpl;
	import zapper.api.kongregate.services.MicrotransactionServicesWrappedImpl;
	import zapper.api.kongregate.services.SharedContentServicesWrappedImpl;
	import zapper.api.kongregate.services.StatServicesWrappedImpl;
	import zapper.api.kongregate.services.UserServicesWrappedImpl;

	public class GameServicesWrappedImpl implements IGameServices {
		var wrappedGameService:*;

		public function GameServicesWrappedImpl(source:*) {
			wrappedGameService = source;
		}

		public function get scores():IHighScoreServices {
			return new HighScoreServicesWrappedImpl(wrappedGameService.scores);
		}

		public function get user():IUserServices {
			return new UserServicesWrappedImpl(wrappedGameService.user);
		}

		public function get stats():IStatServices {
			return new StatServicesWrappedImpl(wrappedGameService.stats);
		}

		public function get services():IKongregateServices {
			return new KongregateServicesWrappedImpl(wrappedGameService.services);
		}

		public function get mtx():IMicrotransactionServices {
			return new MicrotransactionServicesWrappedImpl(wrappedGameService.mtx);
		}

		public function get sharedContent():ISharedContentServices {
			return new SharedContentServicesWrappedImpl(wrappedGameService.sharedContent);
		}

		public function get chat():IChatServices {
			return new ChatServicesWrappedImpl(wrappedGameService.chat);
		}

		public function get loaded():Boolean {
			return wrappedGameService.loaded;
		}

		public function get connected():Boolean {
			return wrappedGameService.connected;
		}

//		native public function init(a:flash.events.Event = null,a2:flash.display.Stage = null):void;
//		native public function get chat():zapper.api.kongregate.services.IChatServices;
	}
}