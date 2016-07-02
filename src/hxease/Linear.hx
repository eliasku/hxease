package hxease;

@:final
class Linear {
	public static var easeNone(default, null):IEasing = new LinearEaseNone();
	public static var easeStep(default, null):IEasing = new LinearEaseStep();
}

class LinearEaseNone implements IEasing {

	public function new () {}

	public function calculate(ratio:Float):Float {
		return ratio;
	}
}

class LinearEaseStep implements IEasing {

	public function new () {}

	public function calculate(ratio:Float):Float {
		return ratio < 1 ? 0 : 1;
	}
}

