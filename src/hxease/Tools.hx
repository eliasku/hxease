package hxease;

@:final
class Tools {

	inline public static function ease(t:Float, easing:IEasing):Float {
		return easing.calculate(t);
	}

	inline public static function quadIn(t:Float):Float {
		return Quad.easeIn.calculate(t);
	}

	inline public static function quadOut(t:Float):Float {
		return Quad.easeOut.calculate(t);
	}

	inline public static function quadInOut(t:Float):Float {
		return Quad.easeInOut.calculate(t);
	}

	inline public static function cubicIn(t:Float):Float {
		return Cubic.easeIn.calculate(t);
	}

	inline public static function cubicOut(t:Float):Float {
		return Cubic.easeOut.calculate(t);
	}

	inline public static function cubicInOut(t:Float):Float {
		return Cubic.easeInOut.calculate(t);
	}

	inline public static function quartIn(t:Float):Float {
		return Quart.easeIn.calculate(t);
	}

	inline public static function quartOut(t:Float):Float {
		return Quart.easeOut.calculate(t);
	}

	inline public static function quartInOut(t:Float):Float {
		return Quart.easeInOut.calculate(t);
	}

	inline public static function quintIn(t:Float):Float {
		return Quint.easeIn.calculate(t);
	}

	inline public static function quintOut(t:Float):Float {
		return Quint.easeOut.calculate(t);
	}

	inline public static function quintInOut(t:Float):Float {
		return Quint.easeInOut.calculate(t);
	}

	inline public static function sineIn(t:Float):Float {
		return Sine.easeIn.calculate(t);
	}

	inline public static function sineOut(t:Float):Float {
		return Sine.easeOut.calculate(t);
	}

	inline public static function sineInOut(t:Float):Float {
		return Sine.easeInOut.calculate(t);
	}

	inline public static function bounceIn(t:Float):Float {
		return Bounce.easeIn.calculate(t);
	}

	inline public static function bounceOut(t:Float):Float {
		return Bounce.easeOut.calculate(t);
	}

	inline public static function bounceInOut(t:Float):Float {
		return Bounce.easeInOut.calculate(t);
	}

	inline public static function circIn(t:Float):Float {
		return Circ.easeIn.calculate(t);
	}

	inline public static function circOut(t:Float):Float {
		return Circ.easeOut.calculate(t);
	}

	inline public static function circInOut(t:Float):Float {
		return Circ.easeInOut.calculate(t);
	}

	inline public static function expoIn(t:Float):Float {
		return Expo.easeIn.calculate(t);
	}

	inline public static function expoOut(t:Float):Float {
		return Expo.easeOut.calculate(t);
	}

	inline public static function expoInOut(t:Float):Float {
		return Expo.easeInOut.calculate(t);
	}

	inline public static function backIn(t:Float):Float {
		return Back.easeIn.calculate(t);
	}

	inline public static function backOut(t:Float):Float {
		return Back.easeOut.calculate(t);
	}

	inline public static function backInOut(t:Float):Float {
		return Back.easeInOut.calculate(t);
	}

	inline public static function elasticIn(t:Float):Float {
		return Elastic.easeIn.calculate(t);
	}

	inline public static function elasticOut(t:Float):Float {
		return Elastic.easeOut.calculate(t);
	}

	inline public static function elasticInOut(t:Float):Float {
		return Elastic.easeInOut.calculate(t);
	}
}
