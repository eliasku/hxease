# hxease
Ease functions for Haxe

## Usage examples
```haxe
var ratio:Float = 0.5;
var easedValue:Float = 0;

// default easings usage
easedValue = Back.easeOut.calculate(ratio);

// make custom easing parameters
easedValue = new BackEaseOut(2.01).calculate(ratio);

// Float static extension with
// `using hxease.EaseTools`
easedValue = ratio.backOut().circIn();
```

## TODO
1. unit tests (with utest)
2. custom curves
3. tools for `ratio` manipulations
4. inline constructors for in-place usage
