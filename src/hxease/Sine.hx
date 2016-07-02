package hxease;

@:final
class Sine {
	public static var easeIn(default, null):IEasing = new SineEaseIn();
	public static var easeInOut(default, null):IEasing = new SineEaseInOut();
	public static var easeOut(default, null):IEasing = new SineEaseOut();
}

class SineEaseIn implements IEasing {
	
	public function new() {}
	
	public function calculate(t:Float):Float {
		if(t == 1) return 1;
		return 1 - Math.cos(t * Math.PI * 0.5);
	}
}

class SineEaseInOut implements IEasing {
	
	public function new() {}

	public function calculate(k:Float):Float {
		return - (Math.cos(Math.PI * k) - 1) / 2;
	}
}

class SineEaseOut implements IEasing {
	
	public function new() {}
	
	public function calculate(k:Float):Float {
		return Math.sin(k * (Math.PI / 2));
	}
}
