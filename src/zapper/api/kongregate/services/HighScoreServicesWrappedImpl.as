package zapper.api.kongregate.services {
	import zapper.utils.Cuckoo;

	public class HighScoreServicesWrappedImpl extends Cuckoo implements IHighScoreServices {
		public function HighScoreServicesWrappedImpl(source:*) {
			super(source);
		}

		public function submit(a:Number, a2:String = null):void {
		}

		public function setMode(a:String):void {
		}

		public function requestList(a:Function):void {
		}
	}
}