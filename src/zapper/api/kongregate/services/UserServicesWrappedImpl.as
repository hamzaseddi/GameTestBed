package zapper.api.kongregate.services {
	import zapper.utils.Cuckoo;

	public class UserServicesWrappedImpl extends Cuckoo implements IUserServices {
		public function UserServicesWrappedImpl(source:*) {
			super(source);
		}

		public function getName():String {
			return "";
		}

		public function getSessionStamp():String {
			return "";
		}

		public function getPlayerInfo(a:Function):void {
		}
	}
}
