package hxease;

@:final
class Quart {
	public static var easeIn(default, null):IEasing = new QuartEaseIn();
	public static var easeInOut(default, null):IEasing = new QuartEaseInOut();
	public static var easeOut(default, null):IEasing = new QuartEaseOut();
}

class QuartEaseIn implements IEasing {

	public function new() {}

	public function calculate(k:Float):Float {
		return k * k * k * k;
	}
}

class QuartEaseInOut implements IEasing {

	public function new() {}

	public function calculate(k:Float):Float {
		if ((k *= 2) < 1) {
			return 0.5 * k * k * k * k;
		}
		return -0.5 * ((k -= 2) * k * k * k - 2);
	}
}

class QuartEaseOut implements IEasing {

	public function new() {}

	public function calculate(k:Float):Float {
		return -(--k * k * k * k - 1);
	}
}
