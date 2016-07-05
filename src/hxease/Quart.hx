package hxease;

@:final
class Quart {
	public static var easeIn(default, null):QuartEaseIn = new QuartEaseIn();
	public static var easeInOut(default, null):QuartEaseInOut = new QuartEaseInOut();
	public static var easeOut(default, null):QuartEaseOut = new QuartEaseOut();
}

class QuartEaseIn implements IEasing {

	inline public function new() {}

	public function calculate(k:Float):Float {
		return k * k * k * k;
	}
}

class QuartEaseInOut implements IEasing {

	inline public function new() {}

	public function calculate(k:Float):Float {
		if ((k *= 2) < 1) {
			return 0.5 * k * k * k * k;
		}
		return -0.5 * ((k -= 2) * k * k * k - 2);
	}
}

class QuartEaseOut implements IEasing {

	inline public function new() {}

	public function calculate(k:Float):Float {
		return -(--k * k * k * k - 1);
	}
}
