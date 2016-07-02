package hxease;

@:final
class Circ {
	public static var easeIn(default, null):CircEaseIn = new CircEaseIn();
	public static var easeInOut(default, null):CircEaseInOut = new CircEaseInOut();
	public static var easeOut(default, null):CircEaseOut = new CircEaseOut();
}

class CircEaseIn implements IEasing {

	public function new() {}

	public function calculate(t:Float):Float {
		return -(Math.sqrt(1 - t * t) - 1);
	}
}

class CircEaseInOut implements IEasing {

	public function new() {}

	public function calculate(t:Float):Float {
		return t <= .5 ? (Math.sqrt(1 - t * t * 4) - 1) / -2 : (Math.sqrt(1 - (t * 2 - 2) * (t * 2 - 2)) + 1) / 2;
	}
}

class CircEaseOut implements IEasing {

	public function new() {}

	public function calculate(t:Float):Float {
		return Math.sqrt(1 - (t - 1) * (t - 1));
	}
}
