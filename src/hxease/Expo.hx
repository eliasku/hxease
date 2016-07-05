package hxease;

@:final
class Expo {
	public static var easeIn(default, null):ExpoEaseIn = new ExpoEaseIn();
	public static var easeInOut(default, null):ExpoEaseInOut = new ExpoEaseInOut();
	public static var easeOut(default, null):ExpoEaseOut = new ExpoEaseOut();
}

class ExpoEaseIn implements IEasing {

	inline public function new() {}

	public function calculate(k:Float):Float {
		return k == 0 ? 0 : Math.pow(2, 10 * (k - 1));
	}
}

class ExpoEaseInOut implements IEasing {

	inline public function new() {}

	public function calculate(k:Float):Float {
		if (k == 0) { return 0; }
		if (k == 1) { return 1; }
		if ((k /= 1 / 2.0) < 1.0) {
			return 0.5 * Math.pow(2, 10 * (k - 1));
		}
		return 0.5 * (2 - Math.pow(2, -10 * --k));
	}
}

class ExpoEaseOut implements IEasing {

	inline public function new() {}

	public function calculate(k:Float):Float {
		return k == 1 ? 1 : (1 - Math.pow(2, -10 * k));
	}
}
