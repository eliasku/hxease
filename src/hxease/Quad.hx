package hxease;

@:final
class Quad {
	public static var easeIn(default, null):QuadEaseIn = new QuadEaseIn();
	public static var easeInOut(default, null):QuadEaseInOut = new QuadEaseInOut();
	public static var easeOut(default, null):QuadEaseOut = new QuadEaseOut();
}

class QuadEaseIn implements IEasing {

	inline public function new() {}

	public function calculate(k:Float):Float {
		return k * k;
	}
}

class QuadEaseInOut implements IEasing {

	inline public function new() {}

	public function calculate(k:Float):Float {
		if ((k *= 2) < 1) {
			return 1 / 2 * k * k;
		}
		return -1 / 2 * ((k - 1) * (k - 3) - 1);
	}
}

class QuadEaseOut implements IEasing {

	inline public function new() {}

	public function calculate(k:Float):Float {
		return -k * (k - 2);
	}
}
