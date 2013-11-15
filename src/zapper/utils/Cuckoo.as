/**
 * Simple class for wrapping a Class, and intercepting and hijacking function calls/properties sets
 *
 * User: Anthony
 * Date: 14/11/13
 */
package zapper.utils {
	import flash.utils.Proxy;
	import flash.utils.flash_proxy;

	import org.as3commons.reflect.Method;

	import org.as3commons.reflect.Type;

	use namespace flash_proxy;

	public dynamic class Cuckoo extends Proxy {
		private var nest:*;
		private var nestType:Type;

		public function Cuckoo(nest:*) {
			this.nest = nest;
		}

		flash_proxy override function callProperty(name:*, ...rest):* {
			if (nestType == null) {
				nestType = Type.forInstance(this.nest);
			}
			for each(var method:Method in nestType.methods) {
				if (method.name == name) {
					return method.invoke(this.nest, rest);
				}
			}
			// broken (well to me), doesn't work as expected -> var callFunction:Method = nestType.getMethod(name);
			throw new Error("couldn't find function '" + name + "' on Cuckoo");
		}

		flash_proxy override function setProperty(name:*, value:*):void {
			this.nest[name] = value;
		}

		flash_proxy override function getProperty(name:*):* {
			return this.nest[name];
		}
	}
}