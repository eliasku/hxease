package hxease;

@:final
class Back {
	public inline static var DEFAULT_OVERSHOOT:Float = 1.70158;

	public static var easeIn(default, null):BackEaseIn = new BackEaseIn(DEFAULT_OVERSHOOT);
	public static var easeInOut(default, null):BackEaseInOut = new BackEaseInOut(DEFAULT_OVERSHOOT);
	public static var easeOut(default, null):BackEaseOut = new BackEaseOut(DEFAULT_OVERSHOOT);
}

class BackEaseIn implements IEasing {

	public var overshoot(default, null):Float;

	inline public function new(overshoot:Float) {
		this.overshoot = overshoot;
	}

	public function calculate(ratio:Float):Float {
		if (ratio == 1) return 1;
		return ratio * ratio * ((overshoot + 1.0) * ratio - overshoot);
	}
}

class BackEaseInOut implements IEasing {

	public var overshoot(default, null):Float;

	inline public function new(overshoot:Float) {
		this.overshoot = overshoot;
	}

	public function calculate(ratio:Float):Float {
		var over = overshoot;
		if ((ratio *= 2) < 1) {
			return 0.5 * (ratio * ratio * (((over *= (1.525)) + 1) * ratio - over));
		}
		return 0.5 * ((ratio -= 2) * ratio * (((over *= (1.525)) + 1) * ratio + over) + 2);
	}
}

class BackEaseOut implements IEasing {

	public var overshoot(default, null):Float;

	inline public function new(overshoot:Float) {
		this.overshoot = overshoot;
	}

	public function calculate(ratio:Float):Float {
		if (ratio == 0) return 0;
		return ((ratio = ratio - 1) * ratio * ((overshoot + 1) * ratio + overshoot) + 1);
	}
}
