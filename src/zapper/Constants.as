package zapper {
	import flash.display.Stage;

	public class Constants {
		public static const version:Number = 0.11;
		private static var _stage:Stage;
		public static function set stage(value:Stage):void {
			if (Constants._stage != null) {
				throw new Error("Constants.root should only be set once!!");
			}
			Constants._stage = value;
		}

		public static function get stage():Stage {
			return Constants._stage;
		}
	}
}