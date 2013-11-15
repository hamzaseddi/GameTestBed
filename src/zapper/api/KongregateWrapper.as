package zapper.api {
	import flash.display.Loader;
	import flash.display.LoaderInfo;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.net.URLRequest;
	import flash.system.Security;

	import zapper.Constants;
	import zapper.api.kongregate.GameServicesWrappedImpl;
	import zapper.api.kongregate.IGameServices;

	public class KongregateWrapper extends EventDispatcher {

		var kongregate:IGameServices;

		public function KongregateWrapper() {
			// Pull the API path from the FlashVars
			var paramObj:Object = LoaderInfo(Constants.stage.loaderInfo).parameters;

			// The API path. The "shadow" API will load if testing locally.
			var apiPath:String = paramObj.kongregate_api_path || "http://www.kongregate.com/flash/API_AS3_Local.swf";

			// Allow the API access to this SWF
			Security.allowDomain(apiPath);

			// Load the API
			var request:URLRequest = new URLRequest(apiPath);
			var loader:Loader = new Loader();
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE, loadComplete);
			loader.load(request);
			Constants.stage.addChild(loader);
//
//// Kongregate API reference
//		var kongregate:*;
		}

		function loadComplete(event:Event) {
			// Save Kongregate API reference
			//kongregate = event.target.content;
			kongregate = new GameServicesWrappedImpl(event.target.content);
			// Connect to the back-end
			kongregate.services.connect();

			// You can now access the API via:
			// kongregate.services
			// kongregate.user
			// kongregate.scores
			// kongregate.stats
			// etc...
		}
	}
}