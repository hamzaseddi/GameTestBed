package {

	import flash.display.Sprite;
	import flash.display.Stage;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;

	import zapper.Constants;

	import zapper.api.KongregateWrapper;

	public class GameTestBed extends Sprite {
		private var kongWrapper:KongregateWrapper;

		public function GameTestBed() {
			init();
			addLine("Hello, World, this is game v" + Constants.version);
			addLine("my dimensions are " + Constants.stage.stageWidth + "x" + Constants.stage.stageHeight);
			kongWrapper = new KongregateWrapper();
		}

		private function init() {
			Constants.stage = this.stage as Stage;
		}

		private var count:int = 0;

		private function addLine(value:String):void {
			var textField:TextField = new TextField();
			textField.text = value;
			textField.autoSize = TextFieldAutoSize.LEFT;
			textField.y = count;
			addChild(textField);
			count += textField.height + 5;
		}
	}
}
