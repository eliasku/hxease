# hxease
[![Build Status](https://travis-ci.org/eliasku/hxease.svg?branch=master)](https://travis-ci.org/eliasku/hxease)

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
// `using hxease.Tools`
easedValue = ratio.backOut().circIn();
```

## TODO
1. custom curves
2. tools for `ratio` manipulations
