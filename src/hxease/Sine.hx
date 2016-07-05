package hxease;

@:final
class Sine {
	public static var easeIn(default, null):SineEaseIn = new SineEaseIn();
	public static var easeInOut(default, null):SineEaseInOut = new SineEaseInOut();
	public static var easeOut(default, null):SineEaseOut = new SineEaseOut();
}

class SineEaseIn implements IEasing {

	inline public function new() {}
	
	public function calculate(t:Float):Float {
		if(t == 1) return 1;
		return 1 - Math.cos(t * Math.PI * 0.5);
	}
}

class SineEaseInOut implements IEasing {

	inline public function new() {}

	public function calculate(k:Float):Float {
		return -0.5 * (Math.cos(Math.PI * k) - 1);
	}
}

class SineEaseOut implements IEasing {

	inline public function new() {}
	
	public function calculate(k:Float):Float {
		return Math.sin(k * (Math.PI * 0.5));
	}
}
