package hxease;

@:final
class Quint {
	public static var easeIn(default, null):QuintEaseIn = new QuintEaseIn();
	public static var easeInOut(default, null):QuintEaseInOut = new QuintEaseInOut();
	public static var easeOut(default, null):QuintEaseOut = new QuintEaseOut();
}

class QuintEaseIn implements IEasing {

	public function new() {}

	public function calculate(k:Float):Float {
		return k * k * k * k * k;
	}
}

class QuintEaseInOut implements IEasing {

	public function new() {}

	public function calculate(k:Float):Float {
		if((k *= 2) < 1) {
			return 0.5 * k * k * k * k * k;
		}
		return 0.5 * ((k -= 2) * k * k * k * k + 2);
	}
}

class QuintEaseOut implements IEasing {

	public function new() {}

	public function calculate(k:Float):Float {
		return --k * k * k * k * k + 1;
	}
}
