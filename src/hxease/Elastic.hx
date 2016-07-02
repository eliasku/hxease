package hxease;

@:final
class Elastic {
	public inline static var DEFAULT_AMPLITUDE:Float = 0.1;
	public inline static var DEFAULT_PERIOD:Float = 0.4;

	public static var easeIn(default, null):ElasticEaseIn = new ElasticEaseIn(DEFAULT_AMPLITUDE, DEFAULT_PERIOD);
	public static var easeInOut(default, null):ElasticEaseInOut = new ElasticEaseInOut(DEFAULT_AMPLITUDE, DEFAULT_PERIOD);
	public static var easeOut(default, null):ElasticEaseOut = new ElasticEaseOut(DEFAULT_AMPLITUDE, DEFAULT_PERIOD);
}

class ElasticEaseIn implements IEasing {

	public var amplitude(default, null):Float;
    public var period(default, null):Float;

	public function new(amplitude:Float, period:Float) {
		this.amplitude = amplitude;
		this.period = period;
	}

	public function calculate(k:Float):Float {
		if (k == 0) return 0;
		if (k == 1) return 1;
		var s:Float;
		if (amplitude < 1) {
			amplitude = 1;
			s = period / 4;
		}
		else {
			s = period / (2 * Math.PI) * Math.asin (1 / amplitude);
		}
		return -(amplitude * Math.pow(2, 10 * (k -= 1)) * Math.sin( (k - s) * (2 * Math.PI) / period ));
	}
}

class ElasticEaseInOut implements IEasing {

	public var amplitude(default, null):Float;
	public var period(default, null):Float;

	public function new(amplitude:Float, p:Float) {
		this.amplitude = amplitude;
		this.period = p;
	}

	public function calculate(t:Float):Float {
		if (t == 0) {
			return 0;
		}
		if ((t /= 1 / 2) == 2) {
			return 1;
		}

		var p:Float = (0.3 * 1.5);
		var a:Float = 1;
		var s:Float = p / 4;

		if (t < 1) {
			return -0.5 * (Math.pow(2, 10 * (t -= 1)) * Math.sin((t - s) * (2 * Math.PI) / p));
		}
		return Math.pow(2, -10 * (t -= 1)) * Math.sin((t - s) * (2 * Math.PI) / p) * 0.5 + 1;
	}
}

class ElasticEaseOut implements IEasing {

	public var amplitude(default, null):Float;
	public var period(default, null):Float;

	public function new(amplitude:Float, period:Float) {
		this.amplitude = amplitude;
		this.period = period;
	}

	public function calculate(t:Float):Float {
		if (t == 0) return 0;
		if (t == 1) return 1;
		var s:Float;
		if (amplitude < 1) {
			amplitude = 1;
			s = period / 4;
		}
		else {
			s = period / (2 * Math.PI) * Math.asin (1 / amplitude);
		}
		return (amplitude * Math.pow(2, -10 * t) * Math.sin((t - s) * (2 * Math.PI) / period ) + 1);
	}
}
