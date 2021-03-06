package hxease;

@:final
class Cubic {
	public static var easeIn(default, null):CubicEaseIn = new CubicEaseIn();
	public static var easeInOut(default, null):CubicEaseInOut = new CubicEaseInOut();
	public static var easeOut(default, null):CubicEaseOut = new CubicEaseOut();
}

class CubicEaseIn implements IEasing {

	inline public function new() {}

	public function calculate(ratio:Float):Float {
		return ratio * ratio * ratio;
	}
}

class CubicEaseInOut implements IEasing {

	inline public function new() {}

	public function calculate(ratio:Float):Float {
		return ((ratio /= 1 / 2) < 1) ? 0.5 * ratio * ratio * ratio : 0.5 * ((ratio -= 2) * ratio * ratio + 2);
	}
}

class CubicEaseOut implements IEasing {

	inline public function new() {}

	public function calculate(ratio:Float):Float {
		return --ratio * ratio * ratio + 1;
	}
}
