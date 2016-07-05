package hxease;

@:final
class Bounce {
	public static var easeIn(default, null):BounceEaseIn = new BounceEaseIn();
	public static var easeInOut(default, null):BounceEaseInOut = new BounceEaseInOut();
	public static var easeOut(default, null):BounceEaseOut = new BounceEaseOut();
}

class BounceEaseIn implements IEasing {

	static inline var B1:Float = 1 / 2.75;
	static inline var B2:Float = 2 / 2.75;
	static inline var B3:Float = 1.5 / 2.75;
	static inline var B4:Float = 2.5 / 2.75;
	static inline var B5:Float = 2.25 / 2.75;
	static inline var B6:Float = 2.625 / 2.75;

	inline public function new() {}

	public function calculate(ratio:Float):Float {
		ratio = 1 - ratio;
		if (ratio < B1) return 1 - 7.5625 * ratio * ratio;
		if (ratio < B2) return 1 - (7.5625 * (ratio - B3) * (ratio - B3) + .75);
		if (ratio < B4) return 1 - (7.5625 * (ratio - B5) * (ratio - B5) + .9375);
		return 1 - (7.5625 * (ratio - B6) * (ratio - B6) + .984375);
	}
}

class BounceEaseInOut implements IEasing {

	static inline var B1:Float = 1 / 2.75;
	static inline var B2:Float = 2 / 2.75;
	static inline var B3:Float = 1.5 / 2.75;
	static inline var B4:Float = 2.5 / 2.75;
	static inline var B5:Float = 2.25 / 2.75;
	static inline var B6:Float = 2.625 / 2.75;

	inline public function new() {}

	public function calculate(ratio:Float):Float {
		if (ratio < .5) {
			ratio = 1 - ratio * 2;
			if (ratio < B1) return (1 - 7.5625 * ratio * ratio) / 2;
			if (ratio < B2) return (1 - (7.5625 * (ratio - B3) * (ratio - B3) + .75)) / 2;
			if (ratio < B4) return (1 - (7.5625 * (ratio - B5) * (ratio - B5) + .9375)) / 2;
			return (1 - (7.5625 * (ratio - B6) * (ratio - B6) + .984375)) / 2;
		}
		ratio = ratio * 2 - 1;
		if (ratio < B1) return (7.5625 * ratio * ratio) / 2 + .5;
		if (ratio < B2) return (7.5625 * (ratio - B3) * (ratio - B3) + .75) / 2 + .5;
		if (ratio < B4) return (7.5625 * (ratio - B5) * (ratio - B5) + .9375) / 2 + .5;
		return (7.5625 * (ratio - B6) * (ratio - B6) + .984375) / 2 + .5;
	}
}

class BounceEaseOut implements IEasing {

	static inline var B1:Float = 1 / 2.75;
	static inline var B2:Float = 2 / 2.75;
	static inline var B3:Float = 1.5 / 2.75;
	static inline var B4:Float = 2.5 / 2.75;
	static inline var B5:Float = 2.25 / 2.75;
	static inline var B6:Float = 2.625 / 2.75;

	inline public function new() {}

	public function calculate(ratio:Float):Float {
		if (ratio < B1) return 7.5625 * ratio * ratio;
		if (ratio < B2) return 7.5625 * (ratio - B3) * (ratio - B3) + .75;
		if (ratio < B4) return 7.5625 * (ratio - B5) * (ratio - B5) + .9375;
		return 7.5625 * (ratio - B6) * (ratio - B6) + .984375;
	}
}